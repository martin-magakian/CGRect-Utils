//
//  ViewController.h
//  CGRectUtil
//
//  Created by martin on 28/07/2013.
//  Copyright (c) 2013 doduck.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    IBOutlet UIImageView *duck;
    IBOutlet UILabel *xLabel;
    IBOutlet UILabel *yLabel;
    IBOutlet UILabel *wLabel;
    IBOutlet UILabel *hLabel;
}

- (IBAction)xPlusTen:(id)sender;
- (IBAction)xMinusTen:(id)sender;
- (IBAction)yPlusTen:(id)sender;
- (IBAction)yMinusTen:(id)sender;

- (IBAction)heightPlusTen:(id)sender;
- (IBAction)heightMinusTen:(id)sender;
- (IBAction)widthPlusTen:(id)sender;
- (IBAction)widthMinusTen:(id)sender;


- (IBAction)updatePosition:(id)sender;

@end
