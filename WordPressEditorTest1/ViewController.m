//
//  ViewController.m
//  WordPressEditorTest1
//
//  Created by roctian on 16/9/20.
//  Copyright © 2016年 roctian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<WPEditorViewControllerDelegate>
- (IBAction)atUserAction:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"发表文章";
    
    WPEditorConfiguration *_WPEditorConfiguration = [WPEditorConfiguration sharedWPEditorConfiguration];
    
    // kLMDefaultLanguage  @"en-US"
    // kLMChinese          @"zh-Hans"
    // kLMChineseTW         @"zh-TW"
    // kLMChineseHK         @"zh-HK"
    // kLMChineseT         @"zh-Hant"
    
    _WPEditorConfiguration.localizable = kLMChinese;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)atUserAction:(id)sender {
    
    [self.editorView atUser:@"@Roc.Tian" url:@"http://www.baidu.com"];
}
@end
