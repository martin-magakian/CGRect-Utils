//
//  ViewController.m
//  CGRectUtil
//
//  Created by martin on 28/07/2013.
//  Copyright (c) 2013 doduck.com. All rights reserved.
//

#import "ViewController.h"

//No need to #import "UIView+CGRectUtil.h" it is added everywere.
// Look into CGRectUtil-Prefix.pch



@implementation ViewController

- (void)dealloc {
    [duck release];
    [xLabel release];
    [yLabel release];
    [wLabel release];
    [hLabel release];
    [super dealloc];
}

- (void)updatePosition {
    xLabel.text = [NSString stringWithFormat:@"%.0f", duck.x];
    yLabel.text = [NSString stringWithFormat:@"%.0f", duck.y];
    wLabel.text = [NSString stringWithFormat:@"%.0f", duck.width];
    hLabel.text = [NSString stringWithFormat:@"%.0f", duck.height];
}

- (IBAction)xPlusTen:(id)sender {
    
    // the traditional way
    duck.frame = CGRectMake(duck.frame.origin.x + 10,
                            duck.frame.origin.y,
                            duck.frame.size.width,
                            duck.frame.size.height);
    
    [self updatePosition];
}

- (IBAction)xMinusTen:(id)sender {
    // the new way
    CGRectAddXToView(duck, -10);
    [self updatePosition];
}

- (IBAction)yPlusTen:(id)sender {
    CGRectAddYToView(duck, 10);
    [self updatePosition];
}

- (IBAction)yMinusTen:(id)sender {
    //using accessor
    duck.y -= -10;
    [self updatePosition];

}

- (IBAction)heightPlusTen:(id)sender {
    duck.height += 10;
    //CGRectAddHeightToView(duck, 10);
    [self updatePosition];
}

- (IBAction)heightMinusTen:(id)sender {
    
    // using an other frame
    CGRect anOtherFrame = duck.frame;
    duck.frame = CGRectAddHeightToFrame(anOtherFrame, -10);
    [self updatePosition];
}

- (IBAction)widthPlusTen:(id)sender {
    // you can also set the value with CGRect util
    duck.frame = CGRectSetWidth(duck.frame, duck.frame.size.width + 10);

    duck.frame = CGRectMake(duck.frame.origin.x + 10, duck.frame.origin.y, duck.frame.size.width, duck.frame.size.height);
    [self updatePosition];
}

- (IBAction)widthMinusTen:(id)sender {
    // "duck.width" is a shortcut for "duck.frame.size.width"
    duck.frame = CGRectSetWidth(duck.frame, duck.frame.size.width - 10);
    [self updatePosition];
}




@end
