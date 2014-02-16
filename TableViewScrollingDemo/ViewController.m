//
//  ViewController.m
//  TableViewScrollingDemo
//
//  Created by Sean Lynch on 2/16/14.
//  Copyright (c) 2014 Sean Lynch. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 10;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"Row: %d", indexPath.row];
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"Section: %d", section];
}

- (void)tableView:(DemoTableView *)tableView didSetContentOffset:(CGPoint)contentOffset
{
    self.title = [NSString stringWithFormat:@"Offset: %2.f", contentOffset.y];
}

- (IBAction)scrollToTopAnimated:(id)sender {
    [UIView animateWithDuration:0.5 animations:^(void) {
        self.tableView.contentOffset = CGPointMake(0, -self.tableView.contentInset.top);
    }];
}

@end
