//
//  TratarImagem.h
//  NativeModule
//
//  Created by Emiliano on 1/8/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

#import "TratadorDeImagem.h"

@interface TratarImagem : RCTEventEmitter <RCTBridgeModule, TratadorDeImagemDelegate>

@end
