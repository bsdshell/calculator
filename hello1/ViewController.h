//
//  ViewController.h
//  hello1
//
//  Created by aa aa on 12-05-23.
//  Copyright (c) 2012 asdfk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyParse.h"

@interface MyButton : UIButton

-(id) initWithFrame:(CGRect)frame;
@end

@interface MyTextField : UITextField

@end

@interface ViewController : UIViewController<UITextFieldDelegate>
{
    IBOutlet UILabel *label;
    int count;
    UITextField* tf;
    UITextField* tf1;
    IBOutlet UITextField *textField;
    IBOutlet UITextField *textField1;
    NSString *gString;
    MyParse* parse;
    NSMutableArray* butArr;
    NSTimer* myTimer;
    
}
@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, retain) IBOutlet UITextField *textField;
@property (nonatomic, retain) IBOutlet UITextField *textField1;
@property (nonatomic, copy) IBOutlet NSString *gString;


-(IBAction)but1;
-(IBAction)but2;
-(IBAction)but3;
-(IBAction)but4;
-(IBAction)but5;
-(IBAction)but6;
-(IBAction)but7;
-(IBAction)but8;
-(IBAction)but9;
-(IBAction)but0;
-(IBAction)butadd;
-(IBAction)butsub;
-(IBAction)butmul;
-(IBAction)butdiv;
-(IBAction)butclear;
-(IBAction)butleftpar;
-(IBAction)butrightpar;
-(IBAction)butdelete;
-(IBAction)butequal;
-(IBAction)onClick;

-(NSTimer*) createTimer;
-(void)timerTicked:(NSTimer*) timer;
-(void) buttonEvent0:(id)sender;
-(void) buttonEvent1:(id)sender;
-(void) buttonEvent2:(id)sender;
-(void) buttonEvent3:(id)sender;
-(void) buttonEvent4:(id)sender;
-(void) buttonEvent5:(id)sender;
-(void) buttonEvent6:(id)sender;
-(void) buttonEvent7:(id)sender;
-(void) buttonEvent8:(id)sender;
-(void) buttonEvent9:(id)sender;

-(void) buttonEventAdd:(id)sender;
-(void) buttonEventSub:(id)sender;
-(void) buttonEventMul:(id)sender;
-(void) buttonEventDiv:(id)sender;
-(void) buttonEventClear:(id)sender;
-(void) buttonEventLeftParent:(id)sender;
-(void) buttonEventRightParent:(id)sender;
-(void) buttonEventBack:(id)sender;
-(void) buttonEventEqual:(id)sender;

-(void) initButton;
-(void)buttonEvent:(id)sender;

-(NSString*) add:(NSString*) s1 num:(NSString*) s2;
-(NSString*) sub:(NSString*) s1 num:(NSString*) s2;
-(NSString*) mul:(NSString*) s1 num:(NSString*) s2;
-(NSString*) div:(NSString*) s1 num:(NSString*) s2;
-(NSString*) rev:(NSString*) str;
-(NSString*) sqrt:(NSString*) str;

-(NSString*) binAdd:(NSString*) s1 num:(NSString*) s2;
-(NSString*) binMul:(NSString*) s1 num:(NSString*) s2; 
-(NSString*) decimaltobin:(NSString*) s1;
-(NSString*) binPow:(NSString*) s1 num:(NSString*) n;

-(int) strtoint:str;


-(IBAction)doneKey:(id)sender;
@end
