//
//  NSString+aps.m
//  FrejusCommunitity
//
//  Created by DJ Kim on 10/12/12.
//

@implementation NSString (aps)

+ (NSString *)stringWithAlert:(NSDictionary *)alert{
    
    NSArray *localizablearguments = alert[@"loc-args"];
    NSString *localizableKey = alert[@"loc-key"];
    
    return [self stringWithArguments:localizablearguments forKey:localizableKey];
}

+ (NSString *)stringWithArguments:(NSArray *)arguments forKey:(NSString *)key{
    
    char *argList = (char *)malloc(sizeof(NSString *) * [arguments count]);
    [arguments getObjects:(id *)argList];
    
    NSString *string = [[[NSString alloc] initWithFormat:NSLocalizedString(key, nil) arguments:argList] autorelease];
    
    return string;
}


@end
