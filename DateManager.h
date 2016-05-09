//
//  DataManager.h
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/6/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface DateManager : NSObject

// @"EEEE, LLL d, yyyy hh:mm a"
+ (NSString *)longDateTimeStringFromDate:(NSDate *)date;

// @"EEEE, LLL d, yyyy"
+ (NSString *)longDateStringFromDate:(NSDate *)date;

// @"hh:mm a"
+ (NSString *)shortTimeStringFromDate:(NSDate *)date;

//@"E MM/dd/yyyy"
+ (NSString *)wmdyStringFromDate:(NSDate *)date;

//@"MM/dd/yyyy"
+ (NSString *)mdyStringFromDate:(NSDate *)date;
+ (NSString *)stringFromDate:(NSDate *)date;

// @"yyMMdd"
+ (NSString *)dateToShortYmdString:(NSDate *)date;

// @"yyyyMMdd"
+ (NSString *)dateToYmdString:(NSDate *)date;
+ (NSString *)stringFromDateAbbreviated:(NSDate *)date;

// @"yyyy-MM-dd"
+ (NSString *)dateToYmdDashString:(NSDate *)date;

// @"E MMM d, yyyy"
+ (NSString *)dateToLongDateString:(NSDate *)date;

// @"MMM d, yyyy"
+ (NSString *)dateToShortDateString:(NSDate *)date;

// @"MM/dd/yy"
+ (NSString *)dateTodmYSlashString:(NSDate *)date;

// @"EEEE MMMM d"
+ (NSString *)dateToDowMonthDayString:(NSDate *)date;

// @"yyyy"
+ (NSString *)dateToYearString:(NSDate *)date;

// @"MM/dd"
+ (NSString *)dateToMonthAndDateString:(NSDate *)date;

// @"EEE MM/dd"
+ (NSString *)dateToDayMonthAndDateString:(NSDate *)date;

// @"EEE MMM dd"
+ (NSString *)dateToDayMonthSpelledAndDateString:(NSDate *)date;

// @"MMdd"
+ (NSString *)dateToMdString:(NSDate *)date;

// @"MMM dd"
+ (NSString *)dateToMonthSpelledAndDateString:(NSDate *)date;

//"2017-12-31"
+ (NSDate *)dateFromYYYYMMDD:(NSString *)dateString;

//@MM/yy
+ (NSString *)dateToMonthAndYearString:(NSDate *)date;

// Operation methods
+ (NSDate *)dateFromYmd:(NSString *)ymd;
+ (NSDate *)dateAtMidnight:(NSDate *)dateAndTime;
+ (BOOL)isDateInPast:(NSDate *)date;
+ (NSInteger)daysBetweenDate:(NSDate *)fromDateTime date:(NSDate *)toDateTime;

@end
