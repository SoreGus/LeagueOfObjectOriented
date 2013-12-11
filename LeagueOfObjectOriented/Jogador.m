//
//  Jogador.m
//  LeagueOfOrientedObject
//
//  Created by GUSTAVO LUIS on 11/19/13.
//  Copyright (c) 2013 GUSTAVO LUIS. All rights reserved.
//

#import "Jogador.h"
#import "Arma.h"

@implementation Jogador

static const int ELFO = 1;
static const int ORC = 2;
static const int ANAO = 4;
static const int HUMANO = 8;

@synthesize nome,vida,forcaEscudo,raca,forcaAtaque,forcaDefesa;

+(int)HUMANO{return HUMANO;}
+(int)ELFO{return ELFO;}
+(int)ANAO{return ANAO;}
+(int)ORC{return ORC;}

-(id)initNome:(NSString*)n comRaca:(int)r comVida:(float)v comForcaEscudo:(int)fe comForcaAtaque:(int)fa comForcaDefesa:(int)fd comArmaPrimaria:(Arma *)a{
    nome = n;
    raca = r;
    vida = v;
    forcaEscudo = fe;
    forcaAtaque = fa;
    forcaDefesa = fd;
    armaPrimaria = a;
    return self;
}

-(float)ataque:(Jogador*)adversario{
    return [self sofreAtaque:adversario comForca:[armaPrimaria calculaForcaJogador:self]];
}


-(float)sofreAtaque:(Jogador *)adversario comForca:(double)forca{
    srand(time(NULL));
    float dano = 0;
    if([adversario raca] == ORC){
        dano = forca - ((([adversario forcaDefesa]*rand()%101)/100) + 5 + [adversario forcaEscudo]);
    }
    else if([adversario raca] == ANAO || [adversario raca] == HUMANO){
        dano = forca - ((([adversario forcaDefesa]*rand()%101)/100) + 15 + [adversario forcaEscudo]);
    }
    else if([adversario raca] == ELFO){
        dano = forca - ((([adversario forcaDefesa]*rand()%101)/100) + 10 + [adversario forcaEscudo]);
    }
    [adversario setForcaEscudo:[adversario forcaEscudo] - 1];
    if(dano < 0) return 0;
    return dano;
}

@end
