//
//  Jogador.h
//  LeagueOfOrientedObject
//
//  Created by GUSTAVO LUIS on 11/19/13.
//  Copyright (c) 2013 GUSTAVO LUIS. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Arma;

@interface Jogador : NSObject{
    NSString *nome;
    int raca;
    float vida;
    int forcaEscudo;
    int forcaAtaque;
    int forcaDefesa;
    Arma *armaPrimaria;
    Arma *armaSecundaria;
}

-(id)initNome:(NSString*)n comRaca:(int)r comArmaPrimaria:(Arma *)a;

@property (nonatomic,strong) NSString *nome;
@property (nonatomic,assign) int raca;
@property (nonatomic,assign) int forcaEscudo;
@property (nonatomic,assign) float vida;
@property (nonatomic,assign) int forcaAtaque;
@property (nonatomic,assign) int forcaDefesa;


+(int)HUMANO;
+(int)ELFO;
+(int)ANAO;
+(int)ORC;


-(float)ataque:(Jogador*)adversario;
-(float)sofreAtaque:(Jogador *)arma comForca:(double)forca;

@end
