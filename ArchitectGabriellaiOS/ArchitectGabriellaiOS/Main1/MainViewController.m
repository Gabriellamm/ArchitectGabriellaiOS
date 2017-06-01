//
//  MainViewController.m
//  Architect_Gabriella_iOS
//
//  Created by Gabriella on 2017/5/27.
//  Copyright © 2017年 Gabriella. All rights reserved.
//

#import "MainViewController.h"
//#import "HttpManage.h"
#import "MapFactory.h"
#import "MapView.h"
#import "MapEngine.h"



@interface MainViewController ()
@property (nonatomic,strong)UIButton *PayButton;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self unionPay];  
    [self getMap];


}


-(void)getMap{
//    id<MapFactory> factory=[[MapEngine sharedInstance] getMapFactory];
//    id <MapView> mapView=[factory getMapViewWithFrame:self.view.frame];
//    UIView *map=[mapView getMap];
//    [self.view addSubview:map];
}
-(void)unionPay{
//    CGFloat buttonWidth=mainScreemWidth/5;
//    CGFloat buttonHeight=mainScreemHeight/10;
//    NSArray *buttonArr=[NSArray arrayWithObjects:@"银联支付",@"支付宝", nil];
//
//    _PayButton=[UIButton buttonWithType:UIButtonTypeCustom];
//    [_PayButton setTitle:buttonArr[0] forState:UIControlStateNormal];
//
//    [_PayButton setBackgroundColor:[UIColor  blueColor]];
//    _PayButton.frame=CGRectMake(buttonWidth, 40, buttonWidth, buttonHeight);
//    [_PayButton addTarget:self action:@selector(unionStartPay) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:_PayButton];
}

//-(void)unionStartPay{
//    NSDictionary* paramsDic = @{@"channel":PAY_WXPAY,@"amount":@"1"};
//
//    MainViewController * __weak weakSelf = self;
//    [HttpManage postWithParams:paramsDic callback:^(NSString *result) {
//        [[Dream_PayEngine sharedEngine] payWithCharge:result controller:weakSelf scheme:@"Dream_PaySDK" withComplation:^(NSString *result, Dream_PayError *error) {
//            //回调
//            if (error) {
//                //出现了异常
//                NSLog(@"%@",[error getMsg]);
//            }else{
//                //支付成功
//                NSLog(@"支付成功!");
//            }
//        }];
//    }];
//
//}
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

@end
