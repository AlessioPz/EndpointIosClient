/* This file was generated by the ServiceGenerator.
 * The ServiceGenerator is Copyright (c) 2015 Google Inc.
 */

//
//  GTLServiceSuggestionBeanApi.m
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   suggestionBeanApi/v1
// Description:
//   This is an API
// Classes:
//   GTLServiceSuggestionBeanApi (0 custom class methods, 0 custom properties)

#import "GTLSuggestionBeanApi.h"

@implementation GTLServiceSuggestionBeanApi

#if DEBUG
// Method compiled in debug builds just to check that all the needed support
// classes are present at link time.
+ (NSArray *)checkClasses {
  NSArray *classes = @[
    [GTLQuerySuggestionBeanApi class],
    [GTLSuggestionBeanApiSuggestionBean class]
  ];
  return classes;
}
#endif  // DEBUG

- (instancetype)init {
  self = [super init];
  if (self) {
    // Version from discovery.
    self.apiVersion = @"v1";

    // From discovery.  Where to send JSON-RPC.
    // Turn off prettyPrint for this service to save bandwidth (especially on
    // mobile). The fetcher logging will pretty print.
    self.rpcURL = [NSURL URLWithString:@"https://myApplicationId.appspot.com/_ah/api/rpc?prettyPrint=false"];
  }
  return self;
}

@end
