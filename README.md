apstoNSString
=============

This is an adaptation of Matt Gallagher's solution to working with va_list.

http://www.cocoawithlove.com/2009/05/variable-argument-lists-in-cocoa.html


I wrote this so I can grab the message from APNS payload.

You can use this in one of two ways.


userInfo is the info from (void)application:didReceiveRemoteNotification:

1.

//Pull
NSDictionary *aps = userInfo[@"aps"];
NSDictionary *alert = aps[@"alert"];

//Get it straight from the Dictionary
NSString *message = [NSString stringWithAlert:alert];

2.

NSDictionary *aps = userInfo[@"aps"];
NSDictionary *alert = aps[@"alert"];

//Or pull array and key first.
NSArray *localizablearguments = alert[@"loc-args"];
NSString *localizableKey = alert[@"loc-key"];

//Then pulling them.
NSString *message = [NSString stringWithArguments:localizablearguments forKey:localizableKey];
