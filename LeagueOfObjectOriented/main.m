//
//  main.m
//  LeagueOfOrientedObject
//
//  Created by GUSTAVO LUIS on 11/19/13.
//  Copyright (c) 2013 GUSTAVO LUIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"
#import "Espada.h"

int main(){
    @autoreleasepool {
        Espada *escalibur = [Espada new];
        Jogador *j1 = [[Jogador alloc]initNome:@"Gandalf" comRaca:4 comArmaPrimaria:escalibur];
        Jogador *j2 = [[Jogador alloc]initNome:@"Joel" comRaca:4 comArmaPrimaria:escalibur];
        NSLog(@"vida %@ igual: %.2f\n",[j1 nome],[j1 vida]);
        NSLog(@"vida %@ igual: %.2f",[j1 nome],[j1 vida]);
    }
}
