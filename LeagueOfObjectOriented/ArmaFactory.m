//
//  ArmaFactory.m
//  LeagueOfObjectOriented
//
//  Created by GUSTAVO LUIS on 12/11/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import "ArmaFactory.h"

@implementation ArmaFactory
+(Arma*)cria:(NSString*)tipo {
    if ([[tipo uppercaseString] isEqual:@"F"]) {
        return [Faca new];
    }
    else if([[tipo uppercaseString] isEqual:@"E"]) {
        return [Espada new];
    }
    else if([[tipo uppercaseString] isEqual:@"C"]) {
        return [CapaInvisibilidade new];
    }
    else if([[tipo uppercaseString] isEqual:@"A"]) {
        return [ArcoEFlexa new];
    }
    return nil;
}
@end
