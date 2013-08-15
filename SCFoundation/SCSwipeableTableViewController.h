//
//  SCSwipeableTableViewController.h
//  SCFoundation
//
//  Created by Sean Cheng on 8/9/13.
//  Copyright (c) 2013 Extremely Limited. All rights reserved.
//

#import "SCSwipeableViewController.h"
#import "SCSwipeableTableCell.h"

@protocol SCSwipeableTableViewControllerDelegate <NSObject>

- (void)tableViewCell:(SCSwipeableTableCell*)cell didTriggerButtonDirection:(SCSwipeableTableViewCellStatus)state index:(NSInteger)index;

@end

@interface SCSwipeableTableViewController : SCSwipeableViewController <UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>

@property (strong,nonatomic) UITableView*																tableView;
@property (nonatomic,strong) id<SCSwipeableTableViewControllerDelegate>	delegate;

- (id)initWithStyle:(UITableViewStyle)style;

@end
