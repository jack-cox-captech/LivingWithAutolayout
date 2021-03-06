//
//  SecondViewController.h
//  LivingWithAutoLayout
//
//  Created by Jack Cox on 1/5/13.
//  Copyright (c) 2013 CapTech Ventures, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BrevityViewController : UIViewController {
    
    IBOutletCollection(UIButton) NSArray *buttons;
    NSMutableDictionary *buttonNames;
    
    BOOL        calcFormat;
    
}
- (void) toggleFormat;
- (void) makeCalculatorFormat;
- (void) makePhoneFormat;

@end
