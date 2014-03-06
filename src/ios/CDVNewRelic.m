//
//  CDVNewRelic.m
//  
//
//  Created by Jeff French on 3/5/14.
//
//

#import "CDVNewRelic.h"

@implementation CDVNewRelic

- (id)settingForKey:(NSString*)key
{
    return [self.commandDelegate.settings objectForKey:[key lowercaseString]];
}

- (void)pluginInitialize
{
    NSString* appToken = [self settingForKey:@"NewRelicApplicationToken"];
    [NewRelicAgent startWithApplicationToken:appToken];
}

@end
