//
//  Data.m
//  Plain Notes
//
//  Created by Jesse Hu on 5/17/14.
//  Copyright (c) 2014 Jesse Hu. All rights reserved.
//

#import "Data.h"

@implementation Data

static NSMutableDictionary *allNotes = nil;
static NSString *currentKey = nil;

+ (NSMutableDictionary *)getAllNotes
{
    if (allNotes == nil) {
        allNotes = [[NSMutableDictionary alloc] initWithDictionary:[[NSUserDefaults standardUserDefaults] objectForKey:kAllNotes]];
    }
    return allNotes;
}
+ (void)setCurrentKey:(NSString *)key
{
    currentKey = key;
}
+ (NSString *)getCurrentKey
{
//    if (currentKey == nil) {
//        currentKey = [[NSString alloc] init];
//    }
    return currentKey;
}
+ (void)setNoteForCurrentKey:(NSString *)note
{
    [self setNote:note forKey:currentKey];
}
+ (void)setNote:(NSString *)note forKey: (NSString *)key
{
    [allNotes setObject:note forKey:key];
}
+ (void)removeNoteForKey:(NSString *)key
{
    [allNotes removeObjectForKey:key];
}

+ (void)saveNotes
{
    [[NSUserDefaults standardUserDefaults] setObject:allNotes forKey:kAllNotes];
}

+ (NSString *)filePath
{
    NSArray *directories = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    NSString *documents = [directories objectAtIndex:0];
    return [documents stringByAppendingPathComponent:kAllNotes];
}

@end
