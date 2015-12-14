//
//  MLTableViewHelper.m
//  MLTableHelper
//
//  Created by 磊 on 15/12/14.
//  Copyright © 2015年 磊. All rights reserved.
//

#import "MLTableViewHelper.h"

@interface MLTableViewHelper () <UITableViewDataSource,UITableViewDelegate>
// 数据流
@property(nonatomic, strong)NSArray *dataList;
@property(nonatomic, strong)NSString *cellIdentifier;
@end
@implementation MLTableViewHelper

#pragma mark - init
+ (instancetype)tableViewHelperWithModel:(NSArray *)model cellIdentifier:(NSString *)identifier{

    MLTableViewHelper *helper = [[self alloc]init];
    helper.dataList = model;
    helper.cellIdentifier = identifier;
    return helper;
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataList.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:_cellIdentifier];
    if (!cell) {
        
    }
}

#pragma mark - lazyLoad
- (NSArray *)dataList {

    if (!_dataList) {
        _dataList = [[NSArray alloc]init];
    }
    return _dataList;
}
@end
