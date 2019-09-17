//
//  UIColor+Add.m
//  Account
//
//  Created by zhao on 2017/8/30.
//  Copyright © 2017年 chuangqish. All rights reserved.
//

#import "UIColor+Add.h"

@implementation UIColor (Add)

+ (UIColor *)MainRedColor
{
    return [self colorWithHexString:@"0xfd3c72"];
}

+ (UIColor *)EmbellishLightBlueColor
{
    return [self colorWithHexString:@"0x1fbba6"];
}

+ (UIColor *)BGFAFCFDColor
{
    return [self colorWithHexString:@"0xfafcfd"];
}

+ (UIColor *)BGCCCCCCColor
{
    return [self colorWithHexString:@"0xcccccc"];
}

+ (UIColor *)colorWithHexString:(NSString *)hexColorString
{
    return [self colorWithHexString:hexColorString alpha:1.0];
}

+ (UIColor *)colorWithHexString:(NSString *)hexColorString alpha:(CGFloat)alpha
{
    if ([hexColorString length] < 6) { //长度不合法
        return [UIColor blackColor];
    }
    NSString *tempString = [hexColorString lowercaseString];
    if ([tempString hasPrefix:@"0x"]) { //检查开头是0x
        tempString = [tempString substringFromIndex:2];
    } else if ([tempString hasPrefix:@"#"]) { //检查开头是#
        tempString = [tempString substringFromIndex:1];
    }
    if ([tempString length] != 6) {
        return [UIColor blackColor];
    }
    //分解三种颜色的值
    NSRange range = NSMakeRange(0, 2);
    NSString *rString = [tempString substringWithRange:range];
    range.location = 2;
    NSString *gString = [tempString substringWithRange:range];
    range.location = 4;
    NSString *bString = [tempString substringWithRange:range];
    //取三种颜色值
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:alpha];
}

@end
