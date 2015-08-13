//
//  MyParse.h
//  hello1
//
//  Created by aa aa on 12-06-03.
//  Copyright (c) 2012 asdfk. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Node:NSObject
{
    Node* next;
    NSString* data;
}    
@property(nonatomic, retain) Node* next;
@property(nonatomic, retain) NSString* data;

-(BOOL) empty;
-(NSObject*) pop;
-(void) push:(NSString*) str;
-(NSString*) top;
@end

@interface Stack: NSObject

@end

@interface MyParse : NSObject
-(NSMutableArray*) tokenize:(NSString*) str;
-(int) precedence:(NSString*) ope;
-(BOOL) isoperator:(NSString*) ope;
-(BOOL) isoperand:(NSString*) ope;
-(NSNumber*) eval:(NSString*) s1 ope:(NSString*) ope str2:(NSString*) s2;
-(NSString*) evaluate:(NSMutableArray*) vet;
-(NSMutableArray*) infixToprefix:(NSString*) str;
@end
