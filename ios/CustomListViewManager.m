//
//  CustomListViewManager.m
//  RNListViewApp
//
//  Created by Rahul Verma on 18/02/22.
//

#import <Foundation/Foundation.h>
#import <React/RCTViewManager.h>
#import "RNListViewApp-Swift.h"

@interface CustomListViewManager: RCTViewManager
@end

@implementation CustomListViewManager
RCT_EXPORT_MODULE()

- (UIViewController *) view {
  CustomListView *view = [[CustomListView alloc] init];
  return view;
}

RCT_EXPORT_VIEW_PROPERTY(data, NSArray)


@end
