//
//  UIUnderlineLabel.m
//  EHR2
//
//  Created by JanYau on 8/3/16.
//  Copyright © 2016 eebochina. All rights reserved.
//

#import "UIUnderlineLabel.h"

@implementation UIUnderlineLabel

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    CGFloat adjust = 1;
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGSize fontSize =[self.text sizeWithFont:self.font
                                    forWidth:self.frame.size.width
                               lineBreakMode:NSLineBreakByTruncatingTail];
    CGContextSetStrokeColorWithColor(ctx, self.textColor.CGColor);
    CGContextSetLineWidth(ctx, 1.0f);
    
    CGPoint leftPoint = CGPointMake(self.frame.size.width-fontSize.width, (self.frame.size.height+self.font.lineHeight)/2.0+adjust);
    CGPoint rightPoint = CGPointMake(self.frame.size.width, leftPoint.y);
    CGContextMoveToPoint(ctx, leftPoint.x, leftPoint.y);
    CGContextAddLineToPoint(ctx, rightPoint.x, rightPoint.y);
    CGContextStrokePath(ctx);
}

@end
