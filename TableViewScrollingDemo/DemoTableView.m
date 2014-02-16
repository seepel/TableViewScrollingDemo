//
//  DemoTableView.m
//  TableViewScrollingDemo
//
//  Created by Sean Lynch on 2/16/14.
//  Copyright (c) 2014 Sean Lynch. All rights reserved.
//

#import "DemoTableView.h"

@implementation DemoTableView

- (void)setContentOffset:(CGPoint)contentOffset
{
    [super setContentOffset:contentOffset];
    if([self.delegate respondsToSelector:@selector(tableView:didSetContentOffset:)]) {
        [self.delegate tableView:self didSetContentOffset:contentOffset];
    }
}

@end
