//
//  TratarImagem.m
//  NativeModule
//
//  Created by Emiliano on 1/8/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "TratarImagem.h"

@implementation TratarImagem {
  TratadorDeImagem *tratador;
}



RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(testarEvento)
{
  [self emiteImageTratada:@{@"imagemTratada": @"testar Evento"}];
}

RCT_EXPORT_METHOD(testarEventoComParametro:(NSString *) urlDaImagem)
{
  tratador = [[TratadorDeImagem alloc] init];
  tratador.delegate = self;
  
  [tratador tratarImagem:urlDaImagem];
}

-(NSArray<NSString *> *)supportedEvents
{
  return @[@"entregarImagem"];
}

-(void)emiteImageTratada:(NSDictionary *) dadosUsuario
{
  [self sendEventWithName:@"entregarImagem" body:dadosUsuario[@"imagemTratada"]];
}

#pragma mark TratadorDeImagemDelegate
-(void)entregaImagemTratada:(NSString *)urlDaImagemTratada
{
  [self emiteImageTratada:@{@"imagemTratada": urlDaImagemTratada}];
}

@end
