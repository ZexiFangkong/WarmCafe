//
//  JSCLaunchVC.m
//  WarmCafe
//
//  Created by jersey on 26/3/18.
//  Copyright © 2018年 JerseyCoffee. All rights reserved.
//

#import "JSCLaunchVC.h"

#import "JSCRootTabVC.h"

@interface JSCLaunchVC ()

@property (nonatomic, strong) UIImageView *launchImageView;

@end

@implementation JSCLaunchVC

#pragma mark - 1.View Controller Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    //1.设置导航栏
    [self setupNavBar];
    //2.设置view
    [self setupView];
    //3.请求数据
    [self setupData];
    //4.设置通知
    [self setupNotification];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self changeWindowsRootViewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 2.SettingView and Style

- (void)setupNavBar
{
    
}

- (void)setupView
{
    self.view.backgroundColor = YMColorWithRGB(19, 144, 87);
    
    UIImageView* launchImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"InboxSiren"]];
    launchImageView.center = CGPointMake(CGRectGetMidX(self.view.frame), CGRectGetMidY(self.view.frame));
    self.launchImageView = launchImageView;
    
    [self.view addSubview:launchImageView];
}

- (void)reloadView
{
    
}

#pragma mark - 3.Request Data

- (void)setupData
{
    
}

#pragma mark - 4.UITableViewDataSource and UITableViewDelegate

#pragma mark - 5.Event Response

#pragma mark - 6.Private Methods

- (void)setupNotification
{
    
}

- (void)changeWindowsRootViewController
{
    JSCRootTabVC* TabBarVC = [[JSCRootTabVC alloc] init];
    UIWindow* window = [UIApplication sharedApplication].delegate.window;
    
    [UIView animateWithDuration:3.0f animations:^{
        self.view.backgroundColor = [UIColor whiteColor];
        self.launchImageView.center = CGPointMake(CGRectGetMaxX(self.view.frame), CGRectGetMaxY(self.view.frame));
        self.launchImageView.size = CGSizeMake(20, 20);
    } completion:^(BOOL finished) {
            [window setRootViewController:TabBarVC];
    }];
}

#pragma mark - 7.GET & SET

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
