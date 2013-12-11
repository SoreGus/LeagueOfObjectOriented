//
//  ArmaFactory.h
//  LeagueOfObjectOriented
//
//  Created by GUSTAVO LUIS on 12/11/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArcoEFlexa.h"
#import "Espada.h"
#import "Faca.h"
#import "CapaInvisibilidade.h"

@interface ArmaFactory : NSObject {
    
}

+(Arma*)cria:(NSString*)tipo;
@end
