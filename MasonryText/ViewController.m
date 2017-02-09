//
//  ViewController.m
//  MasonryText
//
//  Created by xiaorenwu on 2017/1/10.
//  Copyright © 2017年 xiaorenwu. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>


#define weak_self __weak __typeof(&*self)weakself=self
#define rgb(x,y,z,alp) [UIColor colorWithRed:x/255.0 green:y/255.0 blue:z/255.0 alpha:alp]
@interface ViewController ()<UITextViewDelegate>
@property (nonatomic,strong)UITextView *textV;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
   // [self masonryView];
    //[self masonryScrollView];
    [self yyKeyboardText];
    
}
-(void)textViewDidChange:(UITextView *)textView
{
   
    
}
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if([text isEqualToString:@"\n"])
        [textView becomeFirstResponder];
    return YES;
}
//yykeboard测试
-(void)yyKeyboardText
{
    UIView *view1=[UIView new];
    view1.layer.borderWidth=2.0;
    view1.layer.borderColor=[UIColor yellowColor].CGColor;
    [self.view addSubview:view1];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).width.insets(UIEdgeInsetsMake(200, 100, 10, 100));
    }];
    UITextView *textV=[UITextView new];
    textV.delegate=self;
    textV.text=@"大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及";
    textV.layer.borderColor=[UIColor greenColor].CGColor;
    textV.layer.borderWidth=2.0;
    [view1 addSubview:textV];
    [textV mas_makeConstraints:^(MASConstraintMaker *make){
        
        make.top.equalTo(view1).with.offset(10);
        make.left.equalTo(view1).with.offset(10);
        make.width.height.equalTo(@100);
        
    }];
    _textV=textV;
    UITextView *textV1=[UITextView new];
    textV1.delegate=self;
    textV1.text=@"大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及大山里的进来撒大家了撒娇的沙拉大家洒落的骄傲是来得及";
    textV1.layer.borderColor=[UIColor greenColor].CGColor;
    textV1.layer.borderWidth=2.0;
    [view1 addSubview:textV1];
    [textV1 mas_makeConstraints:^(MASConstraintMaker *make){
        
        make.top.equalTo(_textV.mas_bottom).with.offset(10);
        make.left.equalTo(_textV.mas_left);
        make.width.equalTo(_textV);
        make.height.equalTo(@100);
        
    }];

    
}
//masonry测试
-(void)masonryView
{
    weak_self;
    // Do any additional setup after loading the view, typically from a nib.
    UIView *firstView=[UIView new];
    [self.view addSubview:firstView];
    firstView.backgroundColor=[UIColor redColor];
    [firstView mas_makeConstraints:^(MASConstraintMaker *make){
        make.center.equalTo(weakself.view);
        make.size.mas_equalTo(CGSizeMake(300, 300));
    }];
    UIView *secondView=[UIView new];
    secondView.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:secondView];
    [secondView mas_makeConstraints:^(MASConstraintMaker *make){
        make.edges.equalTo(firstView).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
    }];
    UIView *view1=[UIView new];
    view1.backgroundColor=rgb(60, 100, 80, 1);
    [self.view addSubview:view1];
    UIView *view2=[UIView new];
    view2.backgroundColor=rgb(100, 10, 110, 1);
    [self.view addSubview:view2];
    //俩个相同的view
    int padding1=10;
    [view1 mas_makeConstraints:^(MASConstraintMaker *make){
        make.centerY.equalTo(secondView.mas_centerY);
        make.left.equalTo(secondView.mas_left).with.offset(padding1);
        make.right.equalTo(view2.mas_left).with.offset(-padding1);
        make.height.equalTo(@150);
        make.width.equalTo(view2);
    }];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make){
        make.centerY.equalTo(view1);
        make.left.equalTo(view1.mas_right).with.offset(padding1);
        make.right.equalTo(secondView.mas_right).with.offset(-padding1);
        make.width.equalTo(view1);
        make.height.equalTo(view1);
    }];

}
-(void)masonryScrollView
{
    //scrollview
    weak_self;
    UIScrollView *myScrollView=[UIScrollView new];
    myScrollView.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:myScrollView];
    [myScrollView mas_makeConstraints:^(MASConstraintMaker *make){
        make.edges.equalTo(weakself.view).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
    }];
    UIView *containerView=[UIView new];
    containerView.backgroundColor=[UIColor whiteColor];
    [myScrollView addSubview:containerView];
    [containerView mas_makeConstraints:^(MASConstraintMaker *make){
//        make.edges.equalTo(myScrollView).with.insets(UIEdgeInsetsMake(20, 20, 20, 20));
//        make.left.top.equalTo(myScrollView).with.offset(10);
//        make.bottom.right.equalTo(myScrollView).with.offset(-10);
        make.edges.equalTo(myScrollView);
        make.height.equalTo(myScrollView);
    }];
    int count =20;
    UIView *lastView=nil;
    for(int i=1 ;i<=count ;i++)
    {
        UIView *newView=[UIView new];
        [containerView addSubview:newView];
        newView.backgroundColor=[UIColor colorWithHue:( arc4random() % 256 / 256.0 )
                                           saturation:( arc4random() % 128 / 256.0 ) + 0.5
                                           brightness:( arc4random() % 128 / 256.0 ) + 0.5
                                                alpha:1];
        [newView mas_makeConstraints:^(MASConstraintMaker *make){
            make.top.bottom.equalTo(containerView);
            //make.height.mas_equalTo(containerView);
            make.width.mas_equalTo(@(5*i));
            if(lastView)
            {
                make.left.mas_equalTo(lastView.mas_right);
            }
            else
            {
                make.left.mas_equalTo(containerView.mas_left);
            }
            
        }];
        lastView=newView;
    }
    [containerView mas_makeConstraints:^(MASConstraintMaker *make){
        make.right.equalTo(lastView.mas_right);
    }];
}
-(void)masonryScrollView1
{
    weak_self;
    UIScrollView *myScr=[UIScrollView new];
    [self.view addSubview:myScr];
    [myScr mas_makeConstraints:^(MASConstraintMaker *make){
        make.edges.equalTo(weakself.view).with.insets(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    UIView *lastView=nil;
    for(int i=0;i<10;i++)
    {
        UIView *smallView=[UIView new];
        [myScr addSubview:smallView];
        smallView.backgroundColor=[UIColor colorWithHue:( arc4random() % 256 / 256.0 )
                                           saturation:( arc4random() % 128 / 256.0 ) + 0.5
                                           brightness:( arc4random() % 128 / 256.0 ) + 0.5
                                                alpha:1];
        [smallView mas_makeConstraints:^(MASConstraintMaker *make){
            make.top.bottom.equalTo(myScr);
            
        }];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
