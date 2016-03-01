//
//  ViewController.m
//  NSNotificationTest
//
//  Created by Fancy on 16/3/1.
//  Copyright © 2016年 Fancy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textTF;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //注册通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(registerCompletion:) name:@"RegisterCompletionNotification" object:nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)registerCompletion:(NSNotification *)notification
{
    NSDictionary *dic = [notification userInfo];
    NSString *content = [dic  objectForKey:@"content"];
    NSLog(@"content= %@",content);
    //将通知过来的数据传递给textTF
    self.textTF.text = content;
    self.textTF.textAlignment = NSTextAlignmentCenter;


}



@end
