//
//  Arma.m
//  LeagueOfOrientedObject
//
//  Created by GUSTAVO LUIS on 11/19/13.
//  Copyright (c) 2013 GUSTAVO LUIS. All rights reserved.
//

#import "Arma.h"
#import "Jogador.h"
@implementation Arma

-(id)init {
    self = [super init];
    if (self) {
        srand(time(NULL));
        precisaoDoAtaque = ((rand()%41)+60)/100.0;
    }
    return self;
}
-(double) calculaForcaJogador:(Jogador *)novoJogador{
    return 0;
}

-(id) initDefault {
    self = [super init];
    
    return self;
}

@end
