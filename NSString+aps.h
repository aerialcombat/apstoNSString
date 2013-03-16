//
//  NSString+aps.h
//
//  Created by DJ Kim on 10/12/12.

//

#import <Foundation/Foundation.h>


@interface NSString (aps)

+ (NSString *)stringWithAlert:(NSDictionary *)alert;
+ (NSString *)stringWithArguments:(NSArray *)arguments forKey:(NSString *)key;

@end
