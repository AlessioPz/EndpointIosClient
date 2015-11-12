/* This file was generated by the ServiceGenerator.
 * The ServiceGenerator is Copyright (c) 2015 Google Inc.
 */

//
//  GTLQuerySuggestionBeanApi.m
//

// ----------------------------------------------------------------------------
// NOTE: This file is generated from Google APIs Discovery Service.
// Service:
//   suggestionBeanApi/v1
// Description:
//   This is an API
// Classes:
//   GTLQuerySuggestionBeanApi (3 custom class methods, 3 custom properties)

#import "GTLQuerySuggestionBeanApi.h"

#import "GTLSuggestionBeanApiSuggestionBean.h"

@implementation GTLQuerySuggestionBeanApi

@dynamic fields, identifier, question;

+ (NSDictionary *)parameterNameMap {
  NSDictionary *map = @{
    @"identifier" : @"id"
  };
  return map;
}

#pragma mark - Service level methods
// These create a GTLQuerySuggestionBeanApi object.

+ (instancetype)queryForGetAnswerWithQuestion:(NSString *)question {
  NSString *methodName = @"suggestionBeanApi.getAnswer";
  GTLQuerySuggestionBeanApi *query = [self queryWithMethodName:methodName];
  query.question = question;
  query.expectedObjectClass = [GTLSuggestionBeanApiSuggestionBean class];
  return query;
}

+ (instancetype)queryForGetSuggestionBeanWithIdentifier:(NSString *)identifier {
  NSString *methodName = @"suggestionBeanApi.getSuggestionBean";
  GTLQuerySuggestionBeanApi *query = [self queryWithMethodName:methodName];
  query.identifier = identifier;
  query.expectedObjectClass = [GTLSuggestionBeanApiSuggestionBean class];
  return query;
}

+ (instancetype)queryForInsertSuggestionBeanWithObject:(GTLSuggestionBeanApiSuggestionBean *)object {
  if (object == nil) {
    GTL_DEBUG_ASSERT(object != nil, @"%@ got a nil object", NSStringFromSelector(_cmd));
    return nil;
  }
  NSString *methodName = @"suggestionBeanApi.insertSuggestionBean";
  GTLQuerySuggestionBeanApi *query = [self queryWithMethodName:methodName];
  query.bodyObject = object;
  query.expectedObjectClass = [GTLSuggestionBeanApiSuggestionBean class];
  return query;
}

@end
