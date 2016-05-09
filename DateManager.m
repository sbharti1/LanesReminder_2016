//
//  DataManager.m
//  LanesReminder
//
//  Created by Sanjeev_Bharti on 5/6/16.
//  Copyright © 2016 Sanjeev_Bharti. All rights reserved.
//

#import "DateManager.h"

@implementation DateManager

+ (NSString *)longDateTimeStringFromDate:(NSDate *)date {
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"EEEE, LLL d, yyyy hh:mm a"];
    NSString *stringFromDate = [formatter stringFromDate:date];
    
    return stringFromDate;
}

+ (NSString *)longDateStringFromDate:(NSDate *)date {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"EEEE, LLL d, yyyy"];
    
    NSString *stringFromDate = [formatter stringFromDate:date];
    
    return stringFromDate;
}

+ (NSString *)shortTimeStringFromDate:(NSDate *)date {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"hh:mm a"];
    
    NSString *stringFromDate = [formatter stringFromDate:date];
    
    return stringFromDate;
}

+ (NSString *)wmdyStringFromDate:(NSDate *)date {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.formatterBehavior = NSDateFormatterBehavior10_4;
    dateFormatter.dateFormat = @"E MM/dd/yyyy";
    NSString *s = [dateFormatter stringFromDate:date];
    //s = [[s substringToIndex:2] stringByAppendingString:[s substringFromIndex:3]];
    return s;
}

+ (NSString *)mdyStringFromDate:(NSDate *)date {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.formatterBehavior = NSDateFormatterBehavior10_4;
    dateFormatter.dateFormat = @"MM/dd/yyyy";
    
    return [dateFormatter stringFromDate:date];
}

+ (NSString *)stringFromDate:(NSDate *)date {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setFormatterBehavior:NSDateFormatterBehavior10_4];
    [dateFormatter setDateStyle:NSDateFormatterFullStyle];
    [dateFormatter setEraSymbols:nil]; [dateFormatter setLongEraSymbols:nil];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    
    return [dateFormatter stringFromDate:date];
}

+ (NSString *)stringFromDateAbbreviated:(NSDate *)date {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setFormatterBehavior:NSDateFormatterBehavior10_4];
    [dateFormatter setDateStyle:NSDateFormatterFullStyle];
    [dateFormatter setMonthSymbols:[dateFormatter shortMonthSymbols]];
    [dateFormatter setWeekdaySymbols:[dateFormatter shortWeekdaySymbols]];
    [dateFormatter setEraSymbols:nil]; [dateFormatter setLongEraSymbols:nil];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    
    return [dateFormatter stringFromDate:date];
}

+ (NSString *)dateToShortYmdString:(NSDate *)date {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyMMdd"];
    
    NSString *stringFromDate = [formatter stringFromDate:date];
    
    return stringFromDate;
}

+ (NSString *)dateToYmdString:(NSDate *)date {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setFormatterBehavior:NSDateFormatterBehavior10_4];
    [df setDateFormat:@"yyyyMMdd"];
    NSString *s = [df stringFromDate:date];
    
    return s;
}

+ (NSString *)dateToYmdDashString:(NSDate *)date {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setFormatterBehavior:NSDateFormatterBehavior10_4];
    [df setDateFormat:@"yyyy-MM-dd"];
    NSString *s = [df stringFromDate:date];
    
    return s;
}

+ (NSString *)dateTodmYSlashString:(NSDate *)date {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setFormatterBehavior:NSDateFormatterBehavior10_4];
    [df setDateFormat:@"MM/dd/yy"];
    NSString *s = [df stringFromDate:date];
    
    return s;
}

+ (NSString *)dateToLongDateString:(NSDate *)date {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setFormatterBehavior:NSDateFormatterBehavior10_4];
    [df setDateFormat:@"E MMM d, yyyy"];
    NSString *s = [df stringFromDate:date];
    
    return s;
}

+ (NSString *)dateToShortDateString:(NSDate *)date {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setFormatterBehavior:NSDateFormatterBehavior10_4];
    [df setDateFormat:@"MMM d, yyyy"];
    NSString *s = [df stringFromDate:date];
    
    return s;
}

+ (NSString *)dateToDowMonthDayString:(NSDate *)date {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setFormatterBehavior:NSDateFormatterBehavior10_4];
    [df setDateFormat:@"EEEE MMMM d"];
    NSString *s = [df stringFromDate:date];
    
    return s;
}

+ (NSString *)dateToYearString:(NSDate *)date {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setFormatterBehavior:NSDateFormatterBehavior10_4];
    [df setDateFormat:@"yyyy"];
    NSString *s = [df stringFromDate:date];
    
    return s;
}

+ (NSString *)dateToMonthAndDateString:(NSDate *)date {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.formatterBehavior = NSDateFormatterBehavior10_4;
    df.dateFormat = @"MM/dd";
    
    return [df stringFromDate:date];
}

+ (NSString *)dateToMonthAndYearString:(NSDate *)date {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.formatterBehavior = NSDateFormatterBehavior10_4;
    df.dateFormat = @"MM/yy";
    
    return [df stringFromDate:date];
}

+ (NSString *)dateToDayMonthAndDateString:(NSDate *)date {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.formatterBehavior = NSDateFormatterBehavior10_4;
    df.dateFormat = @"EEE MM/dd";
    
    return [df stringFromDate:date];
}

+ (NSString *)dateToDayMonthSpelledAndDateString:(NSDate *)date {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.formatterBehavior = NSDateFormatterBehavior10_4;
    df.dateFormat = @"EEE MMM dd";
    
    return [df stringFromDate:date];
}

+ (NSString *)dateToMonthSpelledAndDateString:(NSDate *)date {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.formatterBehavior = NSDateFormatterBehavior10_4;
    df.dateFormat = @"MMM dd";
    
    return [df stringFromDate:date];
}

+ (NSString *)dateToMdString:(NSDate *)date {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setFormatterBehavior:NSDateFormatterBehavior10_4];
    [df setDateFormat:@"MMdd"];
    NSString *s = [df stringFromDate:date];
    
    return s;
}

+ (NSDate *)dateFromYYYYMMDD:(NSString *)dateString {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setFormatterBehavior:NSDateFormatterBehavior10_4];
    [df setDateFormat:@"yyyy-MM-dd"];
    NSDate *date = [df dateFromString:dateString];
    
    return date;
}

+ (NSDate *)dateFromYmd:(NSString *)ymd {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setDateFormat:@"yyyy/MM/dd"];
    NSDate *d = [df dateFromString:ymd];
    
    return d;
}

+ (NSDate *)dateAtMidnight:(NSDate *)dateAndTime {
    return [[NSCalendar currentCalendar] dateFromComponents:[[NSCalendar currentCalendar] components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay) fromDate:dateAndTime]];
}

+ (BOOL)isDateInPast:(NSDate *)date {
    NSDate *today = [self dateAtMidnight:[NSDate date]];
    
    return [date compare:today] ==  NSOrderedAscending;
}

+ (NSInteger)daysBetweenDate:(NSDate *)fromDateTime date:(NSDate *)toDateTime {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *difference = [calendar components:NSCalendarUnitDay
                                               fromDate:fromDateTime toDate:toDateTime options:0];
    
    return [difference day];
}

@end
