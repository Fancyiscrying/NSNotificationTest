//
//  RegisterViewController.m
//  NSNotificationTest
//
//  Created by Fancy on 16/3/1.
//  Copyright © 2016年 Fancy. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()
- (IBAction)commit:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *textTf;
@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
//提交数据
- (IBAction)commit:(id)sender {
    
    if ([self.textTf.text isEqualToString:@""] ==YES) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"警告" message:@"请输入数据" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action  = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:action];
        
        [self presentViewController:alert animated:YES completion:nil];
    }
    else{
    NSDictionary *dic = [NSDictionary dictionaryWithObject:self.textTf.text forKey:@"content"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"RegisterCompletionNotification" object:nil userInfo:dic];
    [self.navigationController popViewControllerAnimated:YES];
    }
}
@end
