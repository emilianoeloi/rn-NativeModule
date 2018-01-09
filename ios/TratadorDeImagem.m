//
//  TratadorDeImagem.m
//  NativeModule
//
//  Created by Emiliano on 1/8/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "TratadorDeImagem.h"

@implementation TratadorDeImagem

-(void)tratarImagem:(NSString*) urlDaImagem
{
  if ([self.delegate respondsToSelector:@selector(entregaImagemTratada:)])
  {
    NSString *urlImagemTratada = [NSString stringWithFormat:@"%@ - %@", urlDaImagem, @"url.da.imagem.tradata"];
    [self.delegate entregaImagemTratada:urlImagemTratada];
  }
}



@end
