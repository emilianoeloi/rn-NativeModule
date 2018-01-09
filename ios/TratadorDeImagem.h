//
//  TratadorDeImagem.h
//  NativeModule
//
//  Created by Emiliano on 1/8/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TratadorDeImagemDelegate <NSObject>

- (void) entregaImagemTratada:(NSString *) urlDaImagemTratada;

@end

@interface TratadorDeImagem : NSObject

@property (weak) id<TratadorDeImagemDelegate> delegate;

-(void)tratarImagem:(NSString*) urlDaImagem;

@end
