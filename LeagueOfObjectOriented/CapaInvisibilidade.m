//
//  CapaInvisibilidade.m
//  LeagueOfObjectOriented
//
//  Created by LUCAS PEREIRA on 12/11/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import "CapaInvisibilidade.h"
#import "Jogador.h"

@implementation CapaInvisibilidade

@synthesize forcaMaxima, desgaste;

-(id)init {
    self = [super init];
    if (self) {
        forcaMaxima = 70;
        desgaste = 0;
    }
    return self;
}

-(double) calculaForcaJogador:(Jogador *)novoJogador{
    if([novoJogador raca] == [Jogador ORC]){
        return ([novoJogador forcaAtaque]+(forcaMaxima-desgaste))*precisaoDoAtaque;
    }
    else if([novoJogador raca] == [Jogador HUMANO]){
        return ([novoJogador forcaAtaque]+(forcaMaxima-desgaste)+5)*precisaoDoAtaque;
    }
    else if([novoJogador raca] == [Jogador ANAO]){
        return ([novoJogador forcaAtaque]+(forcaMaxima-desgaste)+10)*precisaoDoAtaque;
    }
    else if([novoJogador raca] == [Jogador ELFO]){
        return ([novoJogador forcaAtaque]+(forcaMaxima-desgaste)+15)*precisaoDoAtaque;
    }
    else return 0;
}

-(void)desgastar {
    desgaste += 5;
}

- (id)initDefault {
    self = [[CapaInvisibilidade alloc] init];
    [self setForcaMaxima:70];
    [self setDesgaste:0];
    return self;
}

@end
