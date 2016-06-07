//
//  AppDelegate.m
//  objc-dictionary-practice
//
//  Created by Flatiron School on 5/21/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /**
     
     *  Write your code here!
     
     */
    
    
    
    
    NSDictionary *favoriteBands = [NSDictionary dictionary];
    NSMutableDictionary *mFavoriteBands = [NSMutableDictionary dictionaryWithDictionary: favoriteBands];
    
    [mFavoriteBands setObject: @"Thriller" forKey: @"Michael Jackson"];
    
    mFavoriteBands[@"Prince"]= @"Purple Rain";
    
    mFavoriteBands[@"FleetWood Mac"]= @"Rumors";
    
    NSLog (@"%@",mFavoriteBands);
    
    
    
    
    [mFavoriteBands removeObjectForKey:@"Prince"];
    
    NSLog (@"%@", mFavoriteBands);
    
    
    
    NSArray *favoriteBandAllKeys = [mFavoriteBands allKeys];
    
    for (NSString *band in favoriteBandAllKeys) {
        NSLog(@"Band/Artist: %@ with album: %@", band, [mFavoriteBands objectForKey:band]);
        
    }
    
    if ([favoriteBandAllKeys containsObject: @"Michael Jackson"]) {
        NSLog (@ "It has Michael Jackson!!!");
    }
    
    
    NSDictionary *Rumors = @{ @1 : @"Second Hand News",@2: @"Dreams",@3 : @"Never Going Back Again"};
    NSDictionary *Thriller = @{@1: @"Wanna Be Startin' Somethin'",@2: @"Baby Be Mine",@3: @"The Girl Is Mine"};
    
    
    [mFavoriteBands setObject:Rumors forKey:@"Fleetwood Mac"];
    [mFavoriteBands setObject:Thriller forKey: @"Michael Jackson"];
    
    NSLog (@"This is the dictionary: %@", mFavoriteBands);
    
    
    for (NSString *song in [mFavoriteBands[@"Michael Jackson"] allKeys]) {
        NSLog(@"Song: %@", [mFavoriteBands[@"Michael Jackson"] objectForKey:song]);
        
    }
    
    
    
    
    
    NSMutableDictionary *favoriteAlbums = [NSMutableDictionary new];
    
    
    for (NSString *Band in [mFavoriteBands allKeys]) {
        [favoriteAlbums addEntriesFromDictionary:mFavoriteBands ];
    }
    
    NSLog(@"Favorite albums: %@", favoriteAlbums);
    
    
    
    // Do not alter
    return YES;  //
}   ///////////////

@end
