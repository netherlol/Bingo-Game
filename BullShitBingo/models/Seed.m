//
//  Seed.m
// 
//
//  Created by Mobile Team (G4M) on 6/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Seed.h"
#import "Theme+Manage.h"
#import "Word+Manage.h"

@implementation Seed

+(void)populateDatabase:(NSManagedObjectContext *)context
{
    Theme * jogador = [Theme createTheme:@"jogador" inManagedObjectContext:context];
    Theme * pais = [Theme createTheme:@"pais" inManagedObjectContext:context];
    Theme * cristao = [Theme createTheme:@"cristao" inManagedObjectContext:context];
    
    Word *word = [Word createWord:@"ronaldo" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"messi" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"xavi" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"iniesta" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"torres" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"yaya" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"ronney" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"kaka" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"ibrahimovic" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"adebayor" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"tevez" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"eto" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"ribery" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"terry" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"lampard" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"gerrard" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"villa" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"alves" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"ferdinand" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"balorelli" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"toure" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"ashley" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"drogba" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"casillas" inManagedObjectContext:context]; word.theme = jogador;
    word = [Word createWord:@"benzema" inManagedObjectContext:context]; word.theme = jogador;
    
    word = [Word createWord:@"portugal" inManagedObjectContext:context]; word.theme = pais;
    word = [Word createWord:@"china" inManagedObjectContext:context]; word.theme = pais;
    word = [Word createWord:@"america" inManagedObjectContext:context]; word.theme = pais;
    word = [Word createWord:@"espanha" inManagedObjectContext:context]; word.theme = pais;
    word = [Word createWord:@"franca" inManagedObjectContext:context]; word.theme = pais;
    word = [Word createWord:@"alemanha" inManagedObjectContext:context]; word.theme = pais;
    word = [Word createWord:@"russia" inManagedObjectContext:context]; word.theme = pais;
    word = [Word createWord:@"england" inManagedObjectContext:context]; word.theme = pais;
    
    word = [Word createWord:@"deus" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"justo" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"fiel" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"verdadeiro" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"primeiro" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"ultimo" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"vida" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"cruz" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"salvacao" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"senhor" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"rei" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"amen" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"aleluia" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"gloria" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"cordeiro" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"ceu" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"amigo" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"pai" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"bencao" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"impossivel" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"advogado" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"medico" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"universo" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"trono" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"louvor" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"poder" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"digno" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"livro" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"vencedor" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"fe" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"crer" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"porta" inManagedObjectContext:context]; word.theme = cristao;
    word = [Word createWord:@"sangue" inManagedObjectContext:context]; word.theme = cristao;
    
}
@end
