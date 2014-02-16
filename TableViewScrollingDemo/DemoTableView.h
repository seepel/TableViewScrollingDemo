//
//  DemoTableView.h
//  TableViewScrollingDemo
//
//  Created by Sean Lynch on 2/16/14.
//  Copyright (c) 2014 Sean Lynch. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DemoTableView;

@protocol DemoTableViewDelegate <UITableViewDelegate>

@optional
- (void)tableView:(DemoTableView *)tableView didSetContentOffset:(CGPoint)contentOffset;

@end

@interface DemoTableView : UITableView

@property (nonatomic, weak) id<DemoTableViewDelegate> delegate;

@end
