//
//  ViewController.m
//  hello1
//
//  Created by aa aa on 12-05-23.
//  Copyright (c) 2012 asdfk. All rights reserved.
//

#import "ViewController.h"
#import "QuartzCore/QuartzCore.h"


@interface MyButton()

@end

@implementation MyButton

-(id) initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        [self.layer setBorderWidth:1.0];
        [self.layer setCornerRadius:0];
        
        CGColorSpaceRef rgb = CGColorSpaceCreateDeviceRGB();
        CGFloat mycolor[] = {0.5, 0.5, 0.5, 0.5};
        CGColorRef col = CGColorCreate(rgb, mycolor);
        
        [self.layer setBackgroundColor:col];
        
        [self.layer setBorderColor:[[UIColor colorWithWhite:0.3 alpha:0.7]CGColor]];
    }
    return self;
}

@end


@interface ViewController ()

@end

@implementation ViewController

@synthesize label;
@synthesize textField;
@synthesize textField1;
@synthesize gString;


-(IBAction)but0
{
    gString = [gString stringByAppendingString:@"0"];
    textField.text = gString;
    tf.text = gString;
}

-(IBAction)but1
{
    gString = [gString stringByAppendingString:@"1"];
    textField.text = gString;
     tf.text = gString;
}
-(IBAction)but2
{
    gString = [gString stringByAppendingString:@"2"];
    textField.text = gString;
     tf.text = gString;
}

-(IBAction)but3
{
    gString = [gString stringByAppendingString:@"3"];
    textField.text = gString;
     tf.text = gString;
}

-(IBAction)but4
{
    gString = [gString stringByAppendingString:@"4"];
    textField.text = gString;
    tf.text = gString;
}

-(IBAction)but5
{
    gString = [gString stringByAppendingString:@"5"];
    textField.text = gString;
     tf.text = gString;
}
-(IBAction)but6
{
    gString = [gString stringByAppendingString:@"6"];
    textField.text = gString;
     tf.text = gString;
}
-(IBAction)but7
{
    gString = [gString stringByAppendingString:@"7"];
    textField.text = gString;
     tf.text = gString;
}
-(IBAction)but8
{
    gString = [gString stringByAppendingString:@"8"];
    textField.text = gString;
     tf.text = gString;
}

-(IBAction)but9
{
    gString = [gString stringByAppendingString:@"9"];
    textField.text = gString;
     tf.text = gString;
}


-(void) buttonEvent0:(id)sender
{
    gString = [gString stringByAppendingString:@"0"];
    textField.text = gString;
     tf.text = gString;
    NSLog(@"butEvent0");
}
-(void) buttonEvent1:(id)sender
{
    gString = [gString stringByAppendingString:@"1"];
    textField.text = gString;
   tf.text = gString;
    NSLog(@"butEvent1");  
}
-(void) buttonEvent2:(id)sender
{
    gString = [gString stringByAppendingString:@"2"];
    textField.text = gString;
    tf.text = gString;
    NSLog(@"butEvent2"); 
}
-(void) buttonEvent3:(id)sender
{
    gString = [gString stringByAppendingString:@"3"];
    textField.text = gString;
    tf.text = gString;   
    NSLog(@"butEvent3"); 
}
-(void) buttonEvent4:(id)sender
{
    gString = [gString stringByAppendingString:@"4"];
    textField.text = gString;
     tf.text = gString;
  
    NSLog(@"butEvent4");  
}
-(void) buttonEvent5:(id)sender
{
    gString = [gString stringByAppendingString:@"5"];
    textField.text = gString;
     tf.text = gString;
   
    NSLog(@"butEvent5"); 
}
-(void) buttonEvent6:(id)sender
{
    gString = [gString stringByAppendingString:@"6"];
    textField.text = gString;
    tf.text = gString;
    NSLog(@"butEvent6"); 
}
-(void) buttonEvent7:(id)sender
{
    gString = [gString stringByAppendingString:@"7"];
    textField.text = gString;
     tf.text = gString;
    NSLog(@"butEvent7");
}
-(void) buttonEvent8:(id)sender
{
    gString = [gString stringByAppendingString:@"8"];
    textField.text = gString;
     tf.text = gString;
    NSLog(@"butEvent8");
}
-(void) buttonEvent9:(id)sender
{
    gString = [gString stringByAppendingString:@"9"];
    textField.text = gString;
     tf.text = gString;
    NSLog(@"butEvent9");
}
-(void) buttonEventAdd:(id)sender
{
    gString = [gString stringByAppendingString:@"+"];
    textField.text = gString;
     tf.text = gString;
    NSLog(@"butEventAdd");
}

-(void) buttonEventSub:(id)sender
{
    gString = [gString stringByAppendingString:@"-"];
    textField.text = gString;
     tf.text = gString;
    NSLog(@"butEventSub");
}
-(void) buttonEventMul:(id)sender
{
    gString = [gString stringByAppendingString:@"x"];
    textField.text = gString;
     tf.text = gString;
    NSLog(@"butEventMul");
}
-(void) buttonEventDiv:(id)sender
{
    gString = [gString stringByAppendingString:@"/"];
    textField.text = gString;
     tf.text = gString;
    NSLog(@"butEventDiv");
}
-(void) buttonEventClear:(id)sender
{
    
    gString = @"";
    textField.text = gString;
    textField1.text=@"";
     tf.text = gString;
     tf1.text=@"";
    NSLog(@"butEventClear");
}
-(void) buttonEventLeftParent:(id)sender
{
    gString = [gString stringByAppendingString:@"("];
    textField.text = gString;
     tf.text = gString;
    NSLog(@"butEventLeftParent");
}
-(void) buttonEventRightParent:(id)sender
{
    gString = [gString stringByAppendingString:@")"];
    textField.text = gString;
     tf.text = gString;
    NSLog(@"butEventRightParent");
}
-(void) buttonEventBack:(id)sender
{
   if([gString length] > 0)
    {
        gString = [gString substringToIndex:[gString length] - 1];
        textField.text = gString;
         tf.text = gString;
    }
    NSLog(@"butEventBack");
}
-(void) buttonEventEqual:(id)sender
{
    // gString = [gString stringByAppendingString:@"="];
    //NSString* str=@"5x(6+2)-12/4";
    NSLog(@"gString=%@", gString);
    //NSString* str=@"5x(6+2)-12/4";
    
    NSString* str=gString;
    NSMutableArray* tokenArr = [[NSMutableArray alloc]init ];
    tokenArr = [parse tokenize:str];
    NSMutableArray* postfix = [[NSMutableArray alloc]init ];
    postfix = [parse infixToprefix:str];
    
    for(NSString* str3 in postfix)
        NSLog(@"str3=%@", str3);
    
    NSString* numstr = [parse evaluate:postfix];
    if(numstr != NULL){
        NSLog(@"numstr=%@", numstr);
        textField1.text = numstr;
        tf1.text = numstr;
    }
    else{
        textField1.text = @"Error";
        tf1.text = @"Error";
    }
    /*
    NSString* out = [self add:@"999" num:@"333"];
    NSLog(@"out=%@", out);
    NSString* out1 = [self add:@"0" num:@"9999"];
    NSLog(@"out1=%@", out1);
    NSString* out2 = [self add:@"0" num:@"0"];
    NSLog(@"out2=%@", out2);
    
    NSString* out3 = [self add:@"0000" num:@"0"];
    NSLog(@"out3=%@", out3);
    
    NSString* s1=@"10";
    NSString* s2=@"1";
    NSString* tot = [self mul:s1 num:s2];
    NSLog(@"tot=%@", tot);		
    
    [self sqrt:@"7133333"];

    NSString* binstr = [self binAdd:s1 num:s2];
    NSLog(@"binstr=%@", binstr);    
    
    NSLog(@"butEventEqual");
    
    NSString* bin1 = [self binMul:s1 num:s2];
    NSLog(@"bin1=%@", bin1);
    
    NSString* strn = [self binPow:@"111" num:@"3"];
    NSLog(@"strn=%@", strn);
     */
    BOOL ret = [parse isoperand:@"011"];
    if(ret)
        NSLog(@"true");
    else 
        NSLog(@"false");

    BOOL ret1=[parse isoperator:@"x"];
    if(ret1)
        NSLog(@"ope true");
    else 
        NSLog(@"ope false");

    NSString* mystr=@"123";
    

}


-(IBAction)butadd
{
    gString = [gString stringByAppendingString:@"+"];
    textField.text = gString;
}

-(IBAction)butsub
{
    gString = [gString stringByAppendingString:@"-"];
    textField.text = gString;
}

-(IBAction)butmul
{
    gString = [gString stringByAppendingString:@"x"];
    textField.text = gString;
}

-(IBAction)butdiv
{
    gString = [gString stringByAppendingString:@"/"];
    textField.text = gString;
}

-(IBAction)butclear
{
    gString = @"";
    textField.text = gString;
    textField1.text=@"";
}

-(IBAction)butleftpar
{
    gString = [gString stringByAppendingString:@"("];
    textField.text = gString;
}
-(IBAction)butrightpar
{
    gString = [gString stringByAppendingString:@")"];
    textField.text = gString;
}
-(IBAction)butdelete
{
    if([gString length] > 0)
    {
        gString = [gString substringToIndex:[gString length] - 1];
        textField.text = gString;
    }
}

-(NSString*) add:(NSString*) s1 num:(NSString*) s2
{
    NSString* s=@"";
    if(s1 != NULL && s2 != NULL)
    {
        int len1 = [s1 length], len2 = [s2 length], c=0, m=0, sum=0;
        int len = len1 > len2?len1:len2;
        int diff = len1>len2?len1-len2:len2-len1;
        for(int i=len-1; i>=0; i--)
        {
            int n1=0, n2=0;
            if(len1 > len2)
            {
                if(i >= 0)
                    n1=[s1 characterAtIndex:i]-'0';
                if(i-diff >=0)
                    n2=[s2 characterAtIndex:i-diff]-'0';
             
            }
            else 
            {
                if(i>=0)
                    n2=[s2 characterAtIndex:i]-'0';
                if(i-diff >=0)
                    n1=[s1 characterAtIndex:i-diff]-'0';
                        
            }
            sum=c+n1+n2;
            m = sum%10;
            c = sum/10;
            NSString* mstr = [NSString stringWithFormat:@"%d", m];
            s = [mstr stringByAppendingString:s];
            
        }
        if(c>0)
        {
            NSString* cstr = [NSString stringWithFormat:@"%d", c];
            s=[cstr stringByAppendingString:s];
        }
    }
    
    return s;
}
-(NSString*) sub:(NSString*) s1 num:(NSString*) s2
{
    NSString* s=@"";
    return s;
}
-(NSString*) rev:(NSString*) str
{
    char* A = [str UTF8String];
    if( str != NULL){
        int len=[str length];
        for(int i=0; i<len/2; i++){
            char tmp=A[i];
            A[i]=A[len-1-i]; A[len-1-i]=tmp;
        }
            
            
    }
    return [[NSString alloc]initWithUTF8String:A];
}
-(NSString*) mul:(NSString*) str1 num:(NSString*) str2
{
    NSString* s=@"";
    if( str1 != NULL && str2 != NULL)
    {
        NSString* s1 = [self rev:str1];
        NSString* s2 = [self rev:str2];
        
        int len1=[s1 length], len2=[s2 length];
        int sum=0, m=0;
        int** A=malloc(len2*sizeof(int*));
        for(int x=0; x<len2; x++)
            A[x] = malloc((len1+len2)*sizeof(int));
        
        for(int k2=0; k2<len2; k2++)
            for(int k1=0; k1<len1+len2; k1++)
                A[k2][k1]=0;
        
        for (int i=0; i<len2; i++) 
        {   int j=0, c=0, n1=0, n2=0;
            for(j=0; j<len1; j++){
                n1=[s1 characterAtIndex:j]-'0';
                n2=[s2 characterAtIndex:i]-'0';
                sum=c+n1*n2;
                m=sum%10;
                c=sum/10;
                A[i][i+j]=m;
            }
            if(c>0)
                A[i][i+j]=c;
        }
        for(int w=0; w<len2; w++)
            for(int y=0; y<len1+len2; y++)
                NSLog(@"A[%d][%d]=%d", w, y, A[w][y]);
        int* SA = malloc((len1+len2)*sizeof(int));
        for(int i=0; i<len1+len2; i++)
            SA[i]=0;
        
        int i=0, c=0;
        for(i=0; i<len2+len1; i++){
            int s=0;
            for(int j=0; j<len2; j++){
                s +=A[j][i];
            }
            int m=(c+s)%10;
            c = (c+s)/10;
            SA[i]=m;
        }
        if(c>0)
            SA[i]=c;
        
        for(int i=0; i<len1+len2; i++)
            NSLog(@"SA[%d]=%d", i, SA[i]);
        NSString* sumstr=@"";
        for(int i=0; i<len1+len2; i++){
            if(i != len1+len2-1 || SA[i] != 0){
            char ch='0'+SA[i];
            NSString* str = [NSString stringWithFormat:@"%c", ch];
                sumstr = [sumstr stringByAppendingString:str];
            }
        }
        s = [self rev:sumstr];
    }
    return s;
}
-(NSString*) div:(NSString*) s1 num:(NSString*) s2
{
    NSString* s=@"";
    return s;
}

-(NSString*) sqrt:(NSString *)str
{
    NSString* ret=@"";
    if(str != NULL)
    {
        double n = [str intValue];
        double a=1.0;
        double b=n/2;
        for(int i=0; i<10; i++)
        {
            if( ((a+b)/2)*((a+b)/2) < n)
                a = (a+b)/2;
            else if( ((a+b)/2)*((a+b)/2)>n)
            {
                b = (a+b)/2;
            }
            NSLog(@"n=%f", b);
        }
    }
    return ret;
}

-(NSString*) binAdd:(NSString*) str1 num:(NSString*) str2
{
    NSString* s=@"";
    if(str1 != NULL && str2 != NULL)
    {
        NSString* s1=str1;
        NSString* s2=str2;
        
        int len1 = [s1 length], len2 = [s2 length], c=0, m=0, sum=0;
        int len = len1 > len2?len1:len2;
        int diff = len1>len2?len1-len2:len2-len1;
        for(int i=len-1; i>=0; i--)
        {
            int n1=0, n2=0;
            if(len1 > len2)
            {
                if(i >= 0)
                    n1=[s1 characterAtIndex:i]-'0';
                if(i-diff >=0)
                    n2=[s2 characterAtIndex:i-diff]-'0';
                
            }
            else 
            {
                if(i>=0)
                    n2=[s2 characterAtIndex:i]-'0';
                if(i-diff >=0)
                    n1=[s1 characterAtIndex:i-diff]-'0';
                
            }
            sum=c+n1+n2;
            m = sum%2;
            c = sum/2;
            NSString* mstr = [NSString stringWithFormat:@"%d", m];
            s = [mstr stringByAppendingString:s];
            
        }
        if(c>0)
        {
            NSString* cstr = [NSString stringWithFormat:@"%d", c];
            s=[cstr stringByAppendingString:s];
        }
        NSLog(@"s=%@", s);
        s=[self rev:s];
    }
    
    return s;
  
}
-(NSString*) binPow:(NSString*) s1 num:(NSString*) n
{
    NSString* s;
    int num = [n intValue];
    if(num == 0)
        return @"1";
    else 
    {
        if(num % 2 == 0){
            int half = num/2; NSString* s2=[NSString stringWithFormat:@"%d", half];
            return [self binMul:[self binPow:s1 num:s2] num:[self binPow:s1 num:s2]];
        }
        else {
            int h = (num-1)/2; NSString* s2=[NSString stringWithFormat:@"%d", h];
            return [self binMul:s1 num:[self binMul:[self binPow:s1 num:s2] num:[self binPow:s1 num:s2]]];
        }
    }
}
-(NSString*) decimaltobin:(NSString*) s1
{
    NSString* s;
    return s;   
}
-(NSString*) binMul:(NSString*) str1 num:(NSString*) str2
{
    NSString* s=@"";
    if( str1 != NULL && str2 != NULL)
    {
        NSString* s1 = [self rev:str1];
        NSString* s2 = [self rev:str2];
        
        int len1=[s1 length], len2=[s2 length];
        int sum=0, m=0;
        int** A=malloc(len2*sizeof(int*));
        for(int x=0; x<len2; x++)
            A[x] = malloc((len1+len2)*sizeof(int));
        
        for(int k2=0; k2<len2; k2++)
            for(int k1=0; k1<len1+len2; k1++)
                A[k2][k1]=0;
        
        for (int i=0; i<len2; i++) 
        {   int j=0, c=0, n1=0, n2=0;
            for(j=0; j<len1; j++){
                n1=[s1 characterAtIndex:j]-'0';
                n2=[s2 characterAtIndex:i]-'0';
                sum=c+n1*n2;
                m=sum%2;
                c=sum/2;
                A[i][i+j]=m;
            }
            if(c>0)
                A[i][i+j]=c;
        }
        for(int w=0; w<len2; w++)
            for(int y=0; y<len1+len2; y++)
                NSLog(@"A[%d][%d]=%d", w, y, A[w][y]);
        int* SA = malloc((len1+len2)*sizeof(int));
        for(int i=0; i<len1+len2; i++)
            SA[i]=0;
        
        int i=0, c=0;
        for(i=0; i<len2+len1; i++){
            int s=0;
            for(int j=0; j<len2; j++){
                s +=A[j][i];
            }
            int m=(c+s)%2;
            c = (c+s)/2;
            SA[i]=m;
        }
        if(c>0)
            SA[i]=c;
        
        for(int i=0; i<len1+len2; i++)
            NSLog(@"SA[%d]=%d", i, SA[i]);
        NSString* sumstr=@"";
        for(int i=0; i<len1+len2; i++){
            if(i != len1+len2-1 || SA[i] != 0){
                char ch='0'+SA[i];
                NSString* str = [NSString stringWithFormat:@"%c", ch];
                sumstr = [sumstr stringByAppendingString:str];
            }
        }
        s = [self rev:sumstr];
    }
    return s;
}


-(IBAction)onClick
{
    CGRect frame= CGRectMake(10, 200, 100, 100);
    UIButton* button = [UIButton buttonWithType:UIButtonTypeInfoDark];
    button.frame = frame;
    [button setTitle:(NSString*)@"1" forState:(UIControlState)UIControlStateNormal];
    [button addTarget:self action:@selector(buttonEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}
-(void) initButton
{
    butArr = [[NSMutableArray alloc] initWithCapacity:4];
    int leftX = 1;
    int butX = 62;
    for(int i=0; i<19; i++){
        [butArr addObject:[MyButton buttonWithType:UIBarStyleDefault]];
        CGRect frame;
        NSString* str;
        MyButton* mybut;
        if(i<10){
            frame= CGRectMake(leftX+(butX+1)*(i%5), 200+(butX+1)*(i/5), butX, butX);
            mybut=[butArr objectAtIndex:i];
            mybut.frame = frame;
            //str=[NSString stringWithFormat:@"%d", i];
            if(i==0){
                [mybut addTarget:self action:@selector(buttonEvent0:) forControlEvents:UIControlEventTouchUpInside];
                [mybut setBackgroundImage:[[UIImage imageNamed:@"0.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
            }
            else if(i==1){
                [mybut addTarget:self action:@selector(buttonEvent1:) forControlEvents:UIControlEventTouchUpInside];
                [mybut setBackgroundImage:[[UIImage imageNamed:@"1.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
            }
            else if(i==2){
                [mybut addTarget:self action:@selector(buttonEvent2:) forControlEvents:UIControlEventTouchUpInside];
                [mybut setBackgroundImage:[[UIImage imageNamed:@"2.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
            }
            else if(i==3){
                [mybut addTarget:self action:@selector(buttonEvent3:) forControlEvents:UIControlEventTouchUpInside];
                [mybut setBackgroundImage:[[UIImage imageNamed:@"3.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
            }
            else if(i==4){
                [mybut addTarget:self action:@selector(buttonEvent4:) forControlEvents:UIControlEventTouchUpInside];
                [mybut setBackgroundImage:[[UIImage imageNamed:@"4.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
            }
            else if(i==5){
                [mybut addTarget:self action:@selector(buttonEvent5:) forControlEvents:UIControlEventTouchUpInside];
                [mybut setBackgroundImage:[[UIImage imageNamed:@"5.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
            }
            else if(i==6){
                [mybut addTarget:self action:@selector(buttonEvent6:) forControlEvents:UIControlEventTouchUpInside];
                [mybut setBackgroundImage:[[UIImage imageNamed:@"6.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
            }
            else if(i==7){
                [mybut addTarget:self action:@selector(buttonEvent7:) forControlEvents:UIControlEventTouchUpInside];
                [mybut setBackgroundImage:[[UIImage imageNamed:@"7.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
            }
            else if(i==8){
                [mybut addTarget:self action:@selector(buttonEvent8:) forControlEvents:UIControlEventTouchUpInside];
                [mybut setBackgroundImage:[[UIImage imageNamed:@"8.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
            }
            else if(i==9){
                [mybut addTarget:self action:@selector(buttonEvent9:) forControlEvents:UIControlEventTouchUpInside];
                [mybut setBackgroundImage:[[UIImage imageNamed:@"9.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
            }
        }
        else {
            frame= CGRectMake(leftX+(butX+1)*(i%5), 200+(butX+1)*(i/5), butX, butX);
            mybut=[butArr objectAtIndex:i];
            mybut.frame = frame;

            if(i==10){
                //str=@"+";
                [mybut addTarget:self action:@selector(buttonEventAdd:) forControlEvents:UIControlEventTouchUpInside];
                [mybut setBackgroundImage:[[UIImage imageNamed:@"add.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
            }
            else if(i==11){
                //str=@"-";
                [mybut addTarget:self action:@selector(buttonEventSub:) forControlEvents:UIControlEventTouchUpInside];
                [mybut setBackgroundImage:[[UIImage imageNamed:@"sub.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
            }
            else if(i==12){
                //str=@"x";
                [mybut addTarget:self action:@selector(buttonEventMul:) forControlEvents:UIControlEventTouchUpInside];
                [mybut setBackgroundImage:[[UIImage imageNamed:@"mul.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
            }
            else if(i==13){
                //str=@"/";
                [mybut addTarget:self action:@selector(buttonEventDiv:) forControlEvents:UIControlEventTouchUpInside];
                [mybut setBackgroundImage:[[UIImage imageNamed:@"div.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
            }
            else if(i==14){
                //str=@"C";
                [mybut addTarget:self action:@selector(buttonEventClear:) forControlEvents:UIControlEventTouchUpInside];
                [mybut setBackgroundImage:[[UIImage imageNamed:@"c.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
            }
            else if(i==15){
                //str=@"(";
                [mybut addTarget:self action:@selector(buttonEventLeftParent:) forControlEvents:UIControlEventTouchUpInside];
                [mybut setBackgroundImage:[[UIImage imageNamed:@"leftp.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
            }
            else if(i==16){
                //str=@")";
                [mybut addTarget:self action:@selector(buttonEventRightParent:) forControlEvents:UIControlEventTouchUpInside];
                [mybut setBackgroundImage:[[UIImage imageNamed:@"rightp.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
            }
            else if(i==17){
                //str=@"<-";
                [mybut addTarget:self action:@selector(buttonEventBack:) forControlEvents:UIControlEventTouchUpInside];
                [mybut setBackgroundImage:[[UIImage imageNamed:@"delete.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
            }
            else if(i==18){
                //str=@"=";
                [mybut addTarget:self action:@selector(buttonEventEqual:) forControlEvents:UIControlEventTouchUpInside];
                [mybut setBackgroundImage:[[UIImage imageNamed:@"equal.png"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:0.0] forState:UIControlStateNormal];
            }
            
        }
        [mybut setTitle:(NSString*)str forState:(UIControlState)UIControlStateNormal];
        [self.view addSubview:mybut];
    }
    
    /*
    int count = [butArr count];
    
    for(int i=0; i<count; i++)
    {
        unsigned r = arc4random()% (count - i);
        MyButton* curBut = [butArr objectAtIndex:r];
        MyButton* lastBut = [butArr objectAtIndex:count-1-i];
        CGRect tmpframe = curBut.frame;
        curBut.frame = lastBut.frame;
        lastBut.frame = tmpframe;
    }
     */
     
}
-(NSTimer*)createTimer
{
    return [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerTicked:) userInfo:nil repeats:YES];
}
-(void)timerTicked:(NSTimer *)timer
{
    /*
    int count = [butArr count];
    
    for(int i=0; i<count; i++)
    {
        unsigned r = arc4random()% (count - i);
        MyButton* curBut = [butArr objectAtIndex:r];
        MyButton* lastBut = [butArr objectAtIndex:count-1-i];
        CGRect tmpframe = curBut.frame;
        curBut.frame = lastBut.frame;
        lastBut.frame = tmpframe;
    }
     */

}
-(void)buttonEvent:(id)sender
{
    NSLog(@"new button cooldd");
}
-(IBAction)butequal
{
    
     // gString = [gString stringByAppendingString:@"="];
    //NSString* str=@"5x(6+2)-12/4";
    NSLog(@"gString=%@", gString);
    //NSString* str=@"5x(6+2)-12/4";
    
    NSString* str=gString;
    NSMutableArray* tokenArr = [[NSMutableArray alloc]init ];
    tokenArr = [parse tokenize:str];
    NSMutableArray* postfix = [[NSMutableArray alloc]init ];
    postfix = [parse infixToprefix:str];
    
    for(NSString* str3 in postfix)
        NSLog(@"str3=%@", str3);
    
    int num = [parse evaluate:postfix];
    NSLog(@"num=%d", num);
    //for(NSString* inx in tokenArr)
        //NSLog([NSString stringWithFormat:@"line %@", inx]);
    
    NSString* output=[NSString stringWithFormat:@"%d", num];
    textField1.text = output;
    
    NSString* out = [self add:@"999" num:@"333"];
    NSLog(@"out=%@", out);
    NSString* out1 = [self add:@"0" num:@"9999"];
    NSLog(@"out1=%@", out1);
    NSString* out2 = [self add:@"0" num:@"0"];
    NSLog(@"out2=%@", out2);
    
    NSString* out3 = [self add:@"0000" num:@"0"];
    NSLog(@"out3=%@", out3);
    
    NSString* s1=@"5";
    NSString* s2=@"10";
    NSString* tot = [self mul:s1 num:s2];
    NSLog(@"tot=%@", tot);		
    
    [self sqrt:@"7133333"];
    
    
    
    
}

-(id) init{
    NSLog(@"call me init()");
    if(self = [super init])
        NSLog(@" me 2");
    return self;
}
-(void) loadView
{
    [super loadView];
    NSLog(@"load view()");
}

-(BOOL) textFieldShouldBeginEditing:(UITextField *)thetextField
{
    [textField1 resignFirstResponder];
    [textField resignFirstResponder];

    return NO;
}
-(BOOL) textFieldShouldReturn:(UITextField *)thetextField
{
        return YES;
}
- (IBAction) doneKey:(id)sender
{
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [textField resignFirstResponder];
    textField.keyboardType = UIKeyboardTypeNumberPad;
    textField1.keyboardType = UIKeyboardTypeNumberPad;
    
    
    [self initButton];
    
    gString = @"";
	
    parse = [MyParse alloc];
    
    
    
    
    
    
    NSFileManager* filemgr;
    
    NSString* curpath;
    filemgr = [NSFileManager defaultManager];
    
    if([filemgr fileExistsAtPath:@"/tmp/heart.png"]==YES )
            NSLog(@"file exists");
    else 
        NSLog(@"file does't exist");
    
    NSString* filepath=[[NSBundle mainBundle] pathForResource:@"heart" ofType:@"png"];
    if(filepath)
    {
        NSLog(@"heart is png");
    }
    
    NSString* path=[NSHomeDirectory() stringByAppendingString:@"/heart.png"];
    
    NSLog(@"path=%@", path);
    
    UIImage* imgpt = [UIImage imageNamed:filepath];
    if(imgpt == nil)
    {
        NSLog(@"image is NULL");
    }
    
    CGRect frame= CGRectMake(10, 200, 50, 50);
    MyButton* mybut = [MyButton buttonWithType:UIBarStyleDefault];   
    
    mybut.frame = frame;
    
    
    //UITextField properties
   
   
    tf = [[UITextField alloc] initWithFrame:CGRectMake(1, 1, 318, 50)];
    tf.borderStyle = UITextBorderStyleBezel;
    tf.font = [UIFont fontWithName:@"Courier" size:30.f];
    tf.background = [UIImage imageNamed:@"mytext1.png"];
    tf.layer.cornerRadius = 0.0;
    tf.layer.masksToBounds = YES;
    
    tf.layer.borderWidth = 1.0;
    tf.layer.borderColor = [[UIColor darkGrayColor] CGColor];
    
    
    tf1 = [[UITextField alloc] initWithFrame:CGRectMake(1, 52, 318, 50)];
    tf1.borderStyle = UITextBorderStyleBezel;
    tf1.background = [UIImage imageNamed:@"mytext1.png"];
    tf1.layer.cornerRadius = 0.0;
    tf1.layer.masksToBounds = YES;
    
    tf1.layer.borderWidth = 1.0;
    tf1.layer.borderColor = [[UIColor darkGrayColor] CGColor];
        
    [self.view addSubview:tf];
    [self.view addSubview:tf1];
    
    myTimer = [self createTimer];
    
    //[mybut setTitle:(NSString*)@"99" forState:(UIControlState)UIControlStateNormal];
    
    
    //[mybut setBackgroundImage:imgpt forState:UIControlStateNormal];
     
   
    
    //[self.view addSubview:mybut];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    [textField resignFirstResponder];
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
