//
//  IBViewController.m
//  LivingWithAutoLayout
//
//  Created by Jack Cox on 1/5/13.
//  Copyright (c) 2013 CapTech Ventures, Inc. All rights reserved.
//

#import "IBViewController.h"

@interface IBViewController ()

@end

@implementation IBViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"IB", @"Keyboard View");
        self.tabBarItem.image = [UIImage imageNamed:@"161-calculator"];
    }
    return self;
}
							


- (CGSize) contentSizeForViewInPopover {
    return CGSizeMake(320, 100);
}

- (IBAction)button2Pressed:(id)sender {
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        UIView *senderView = (UIView *)sender;
        IBViewController *ctl = [[IBViewController alloc]
                                    initWithNibName:@"IBViewController"
                                    bundle:nil];
        
        _popover = [[UIPopoverController alloc] initWithContentViewController:ctl];
        
        [_popover presentPopoverFromRect:senderView.bounds
                                  inView:senderView
                permittedArrowDirections:UIPopoverArrowDirectionAny
                                animated:YES];
        
    }
    
}

- (IBAction)button1Pressed:(id)sender {
    
    IBViewController *ctl = [[IBViewController alloc] initWithNibName:@"IBViewController" bundle:nil];
    
    ctl.modalPresentationStyle = UIModalPresentationFormSheet;
    
    [self presentViewController:ctl animated:YES completion:nil];
    
}

- (IBAction)button3Pressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
