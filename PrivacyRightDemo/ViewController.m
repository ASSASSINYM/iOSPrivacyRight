//
//  ViewController.m
//  PrivacyRightDemo
//
//  Created by ASSASSIN on 2020/12/9.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
//    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"p"] boolValue]) {
//
//        UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
//        redView.backgroundColor = [UIColor redColor];
//        [self.view addSubview:redView];
//
//
//    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"%s",__func__);
    
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    [cell.subviews performSelector:@selector(removeFromSuperview)];
}

-(IBAction)exitApp:(id)sender {
    
//    [self mt_exitApplication];
//    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"p"];
}


// 退出当前程序
- (void)mt_exitApplication {
    UIWindow *winodw = [UIApplication sharedApplication].keyWindow;
    [UIView beginAnimations:@"exitApplication" context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:winodw cache:NO];
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    self.view.bounds = CGRectMake(0, 0, 0, 0);
    [UIView commitAnimations];
}

- (void)animationFinished:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {
    if ([animationID compare:@"exitApplication"] == 0) {
        exit(0);
    }
}

//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//
//}

@end
