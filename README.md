apstoNSString
=============

This is an adaptation of Matt Gallagher's solution to working with va_list.

http://www.cocoawithlove.com/2009/05/variable-argument-lists-in-cocoa.html


I wrote this so I can grab the message from APNS payload.

You can use this in one of two ways.


userInfo is the info from (void)application:didReceiveRemoteNotification:

NSDictionary *aps = userInfo[@"aps"];
NSDictionary *alert = aps[@"alert"];
NSString *message = [NSString stringWithAlert:alert];

NSDictionary *aps = userInfo[@"aps"];
NSDictionary *alert = aps[@"alert"];
NSArray *localizablearguments = alert[@"loc-args"];
NSString *localizableKey = alert[@"loc-key"];

NSString *message = [NSString stringWithArguments:localizablearguments forKey:localizableKey];
