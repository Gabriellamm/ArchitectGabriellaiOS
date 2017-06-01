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
@property (nonatomic,strong)UIView *blueView;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self unionPay];  
    [self getMap];

    [self LoadMoreImage];

}


#pragma mark ************* Masonry
-(void)LoadMoreImage{

    UIView *view1 = [[UIView alloc]init];

    view1.backgroundColor = [UIColor greenColor];

    [self.view addSubview:view1];

    UIEdgeInsets padding = UIEdgeInsetsMake(150, 30, 30, 30);

    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).with.offset(padding.top);
        make.left.equalTo(self.view.mas_left).with.offset(padding.left);
        make.bottom.equalTo(self.view.mas_bottom).with.offset(-padding.bottom);
        make.right.equalTo(self.view.mas_right).with.offset(-padding.right);
    }];


//    [topInnerView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.right.mas_equalTo(0);
//        make.width.mas_equalTo(topInnerView.mas_height).multipliedBy(3);
//        make.center.mas_equalTo(topView);
//    }];

    // 一句代码代替上面的多行
    //    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
    //        make.edges.equalTo(self.view).with.insets(UIEdgeInsetsMake(150, 30, 30, 30));
    //    }];




//    // 红色View
//    UIView *redView = [[UIView alloc]init];
//    redView.backgroundColor = [UIColor redColor];
//    [self.view addSubview:redView];
//
//    // 蓝色View
//    self.blueView = [[UIView alloc]init];
//    self.blueView.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:self.blueView];
//
//    // 黄色View
//    UIView *yellowView = [[UIView alloc]init];
//    yellowView.backgroundColor = [UIColor yellowColor];
//    [self.view addSubview:yellowView];
//
//    // ---红色View--- 添加约束
//    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(self.view.mas_left).with.offset(20);
//        make.bottom.mas_equalTo(self.view.mas_bottom).with.offset(-80);
//        make.height.equalTo([NSNumber numberWithInt:50]);
//    }];
//
//    // ---蓝色View--- 添加约束
//    [self.blueView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(redView.mas_right).with.offset(40);
//        make.bottom.width.height.mas_equalTo(redView);
//    }];
//
//    // ---黄色View--- 添加约束
//    [yellowView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(self.blueView.mas_right).with.offset(40);
//        make.right.mas_equalTo(self.view.mas_right).with.offset(-20);
//        make.bottom.width.height.mas_equalTo(redView);
//
//        // 优先级设置为250，最高1000（默认）
//        make.left.mas_equalTo(redView.mas_right).with.offset(20).priority(250);
//    }];




}

//    删除约束

- (NSArray*)remakeConstraints:(void(^)(MASConstraintMaker *))block {
    return [_blueView mas_remakeConstraints:block];
}

#pragma mark ************* Map
-(void)getMap{
//    id<MapFactory> factory=[[MapEngine sharedInstance] getMapFactory];
//    id <MapView> mapView=[factory getMapViewWithFrame:self.view.frame];
//    UIView *map=[mapView getMap];
//    [self.view addSubview:map];
}
#pragma mark ************* Pay
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
