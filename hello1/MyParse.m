//
//  MyParse.m
//  hello1
//
//  Created by aa aa on 12-06-03.
//  Copyright (c) 2012 asdfk. All rights reserved.
//

#import "MyParse.h"

@implementation Node
@synthesize next;
@synthesize data;
-(id) init
{
    self = [super init];
    if(self != nil)
    {
        next = NULL;
        data = NULL;
    }
}
@end

@implementation Stack
{
    Node* head;
}
-(id) init
{
    self = [super init];
    if(self != nil)
    {
        head = NULL;
    }
    return self;
}
-(BOOL) empty
{
    return (head == NULL);
}

-(void) push:(NSString*) str
{
    Node* no=[Node alloc];
    no.data = str;
    if([self empty] != TRUE)
    {
        Node* tmp = head;
        no.next = tmp;
        head = no;
    }
    else 
    {
        head = no;
    }
    
}
-(NSString*) top
{
    NSString* ret=NULL;
    if([self empty] != TRUE)
        ret = head.data;
    return ret;
}
-(NSString*) pop
{
    NSString* ret=NULL;
    if([self empty] != TRUE)
    {
        ret = head.data;
        head = head.next;
    }
    return ret;
}


@end

@implementation MyParse
-(NSMutableArray*) infixToprefix:(NSString*) str
{
    NSString* p;
    NSMutableArray* vet=[[NSMutableArray alloc]init ];
    Stack* st = [Stack alloc];
    NSMutableArray* list=[[NSMutableArray alloc]init ];
    list = [self tokenize:str];
    NSLog(@"list size=%d", [list count]);
    
    BOOL found=true;
    if( str != NULL)
    {
        for(NSString* s in list)
        {
            NSLog(@"infixTopprefix:s=%@", s);
            if( [s isEqualToString:@"("]){
                [st push:s];
            }
            
            else if([s isEqualToString:@")"])
            {
                while(![st empty] && ![[st top] isEqualToString:@"("])
                {
                    [vet addObject:[st pop]];
                }
                if(![st empty])
                {
                    NSString* str2 = [st pop];
                    if([str2 isEqualToString:@"("])
                        NSLog(@"s=%@", str2);
                    else {
                        NSLog(@"invalid ()");
                        found = false;
                        break;
                    }
                }
                else {
                    found = false;
                    NSLog(@"invalud ()1");
                    break;
                }
            }
            
            else if([self isoperator:s])
            {
                if([st empty] || [[st top] isEqualToString:@"("])
                    [st push:s];
                
                else 
                {
                    while(![st empty] && ![[st top] isEqualToString:@"("] &&
                          [self precedence:s] <= [self precedence:[st top]])
                        [vet addObject:[st pop]];
                    [st push:s];
                }
                 
            }
            else    
            {
                [vet addObject:s];
                
            } 
             
        }
        while(![st empty])
            [vet addObject:[st pop]];
    }
    
    for(NSString* pre in vet)
    {
        NSLog(@"pre=%@", pre);
    }
    return vet;
}
-(int) precedence:(NSString *)ope
{
    int ret=1;
    if([ope isEqualToString:@"+"] || [ope isEqualToString:@"-"])
        ret = 1;
    else if([ope isEqualToString:@"/"] || [ope isEqualToString:@"x"])
        ret = 2;
    
    return ret;
}
-(BOOL) isoperator:(NSString *)ope
{
    BOOL ret = false;
    if([ope isEqualToString:@"+"] ||
       [ope isEqualToString:@"-"] ||
       [ope isEqualToString:@"x"] ||
       [ope isEqualToString:@"/"])
        ret = true;
    return ret;
}
-(BOOL) isoperand:(NSString *)ope
{
    BOOL ret = true;
    const char * chArr = [ope UTF8String];
    for(int i=0; i<[ope length] && ret; i++){
        if(chArr[i] < '0' || chArr[i] > '9')
            ret = false;
    }
    return ret;
}
-(NSNumber*) eval:(NSString*) s1 ope:(NSString*) ope str2:(NSString*) s2
{
    NSNumber* retNum=NULL;
    int retInt=0;
    int n1=[s1 intValue];
    int n2=[s2 intValue];
    if([ope isEqualToString:@"+"]){
        retInt = n1+n2;
        retNum=[NSNumber numberWithInt:retInt];
    }
    else if([ope isEqualToString:@"-"]){
        retInt = n1-n2;
        retNum=[NSNumber numberWithInt:retInt];
    }
    else if([ope isEqualToString:@"x"]){
        retInt = n1*n2;
        retNum=[NSNumber numberWithInt:retInt];
    }
    else if([ope isEqualToString:@"/"]){
        if(n2 != 0){
            retInt = n1/n2;
            retNum=[NSNumber numberWithInt:retInt];
        }
    }
    else 
        NSLog(@"error eval()");
    return retNum;
}

-(NSString*) evaluate:(NSMutableArray*) vet
{
    Stack* st = [Stack alloc];
    BOOL end=true;
    NSString* ret=NULL;
    for(int i=0; i<[vet count] && end; i++)
    {
        NSString* s= [vet objectAtIndex:i];
        NSLog(@"vet s=%@", s);
        if([self isoperator:s]){
            NSString* A;
            NSString* B;
            if(![st empty]){                
                A=[st pop];
            
                if(![st empty]){
                    B=[st pop];
                    
                    int value=0;
                    if([self eval:B ope:s str2:A] != NULL){
                        value=[[self eval:B ope:s str2:A] intValue];
                        
                        NSString* tmp=[NSString stringWithFormat:@"%d", value];
                        [st push:tmp];

                        NSLog(@"%d=%@ %@ %@", value, B, s, A);
                    }
                    else {   
                        NSLog(@"error for exp");
                        end = false;
                    }
                                       
                }
                else { 
                    NSLog(@"exp error");
                    end = false;
                }
            }
            else {
                NSLog(@"exp error");
                end = false;
            }
        }
        else if([self isoperand:s])
        {
            [st push:s];
            NSLog(@"push=%@", s);
        }
        else {
            NSLog(@"evaluate() error");
            end = false;
        }
    }
    if(end && ![st empty])
        ret = [st pop];
    return ret;
}
                 
                     
-(NSMutableArray*) tokenize:(NSString*) str;
{
    NSLog(@"str=%@", str);
    const char* chArr=[str UTF8String];
    
    int len = [str length];
    NSString *s=[[NSString alloc]initWithString:@""];
    NSMutableArray* list=[[NSMutableArray alloc]init ];
    NSLog(@"what");               
    for(int i=0; i<len; i++)
    {
        NSLog(@"chArr[%d]=%c", i, chArr[i]);
        
        if('0' <= chArr[i] && chArr[i] <= '9')
        {
            NSString* append =  [NSString stringWithFormat:@"%c", chArr[i]];
            s = [s stringByAppendingString:append];
            NSLog(@"up tokenize:s=%@", s);
        }
        else 
        {
            NSLog(@"down tokenzie:s=%@", s);
            
            
            if(![s isEqualToString:@""])
            {
                [list addObject:s];
                s = @"";
            }
            NSString* tmp=[NSString stringWithFormat:@"%c", chArr[i]];
            [list addObject:tmp];
            
        }
    }
    if(![s isEqualToString:@""])
        [list addObject:s];
    s=@"";
    
    for(NSString* s1 in list)
        NSLog(@"list=%@", s1);
    
    return list;
}
@end














