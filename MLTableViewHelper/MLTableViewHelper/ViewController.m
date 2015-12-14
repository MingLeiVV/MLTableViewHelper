//
//  ViewController.m
//  MLTableHelper
//
//  Created by 磊 on 15/12/14.
//  Copyright © 2015年 磊. All rights reserved.
//

#import "ViewController.h"
#import "MLTableViewHelper.h"
@interface ViewController ()
@property(nonatomic,strong)UITableView *mltableview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    MLTableViewHelper *helper = [MLTableViewHelper tableViewHelperWithModel:@[@"name":@"吴明磊"] cellIdentifier:@""]
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UITableView *)mltableview {

    if (!_mltableview) {
        _mltableview = [[UITableView alloc]init];
    }
    return _mltableview;
}
@end
