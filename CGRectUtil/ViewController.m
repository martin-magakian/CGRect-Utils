//
//  ViewController.m
//  CGRectUtil
//
//  Created by martin on 28/07/2013.
//  Copyright (c) 2013 doduck.com. All rights reserved.
//

#import "ViewController.h"
#import "UIView+CGRectUtil.h"


@implementation ViewController

- (void)dealloc {
    [duck release];
    [xLabel release];
    [yLabel release];
    [wLabel release];
    [hLabel release];
    [super dealloc];
}

- (IBAction)xPlusTen:(id)sender {
    
    // the traditional way
    duck.frame = CGRectMake(duck.frame.origin.x + 10,
                            duck.frame.origin.y,
                            duck.frame.size.width,
                            duck.frame.size.height);
    

}

- (IBAction)xMinusTen:(id)sender {
    // the new way
    CGRectAddXToView(duck, -10);
}

- (IBAction)yPlusTen:(id)sender {
    CGRectAddYToView(duck, 10);
}

- (IBAction)yMinusTen:(id)sender {
    CGRectAddYToView(duck, -10);

}

- (IBAction)heightPlusTen:(id)sender {
    CGRectAddHeightToView(duck, 10);
}

- (IBAction)heightMinusTen:(id)sender {
    
    // using an other frame
    CGRect anOtherFrame = duck.frame;
    duck.frame = CGRectAddHeightToFrame(anOtherFrame, -10);
}

- (IBAction)widthPlusTen:(id)sender {
    // you can also set the value with CGRect util
    duck.frame = CGRectSetWidth(duck.frame, duck.frame.size.width + 10);

}

- (IBAction)widthMinusTen:(id)sender {
    // "duck.width" is a shortcut for "duck.frame.size.width"
    duck.frame = CGRectSetWidth(duck.frame, duck.frame.size.width - 10);
}

- (IBAction)updatePosition:(id)sender {
    xLabel.text = [NSString stringWithFormat:@"%.0f", duck.frame.origin.x];
    yLabel.text = [NSString stringWithFormat:@"%.0f", duck.frame.origin.y];
    wLabel.text = [NSString stringWithFormat:@"%.0f", duck.frame.size.width];
    hLabel.text = [NSString stringWithFormat:@"%.0f", duck.frame.size.height];
}


@end
