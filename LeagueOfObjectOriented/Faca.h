//
//  Faca.h
//  LeagueOfObjectOriented
//
//  Created by GUSTAVO LUIS on 12/11/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Arma.h"

@interface Faca : Arma{
    int desgaste;
    int forca;
}

@property (nonatomic,assign) int desgaste;
@property (nonatomic,assign) int forca;

@end
