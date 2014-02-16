//
//  ViewController.h
//  TableViewScrollingDemo
//
//  Created by Sean Lynch on 2/16/14.
//  Copyright (c) 2014 Sean Lynch. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DemoTableView.h"

@interface ViewController : UITableViewController <DemoTableViewDelegate>
- (IBAction)scrollToTopAnimated:(id)sender;

@end
