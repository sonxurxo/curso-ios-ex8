//
//  ViewController.h
//  Ex8
//
//  Created by Xurxo Méndez Pérez on 26/12/13.
//  Copyright (c) 2013 SmartGalApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextView *textView;
- (IBAction)didTapSaveToCopyButton:(id)sender;
@end
