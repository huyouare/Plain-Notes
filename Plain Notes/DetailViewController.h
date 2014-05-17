//
//  DetailViewController.h
//  Plain Notes
//
//  Created by Jesse Hu on 5/17/14.
//  Copyright (c) 2014 Jesse Hu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UITextView *textView;
@end
