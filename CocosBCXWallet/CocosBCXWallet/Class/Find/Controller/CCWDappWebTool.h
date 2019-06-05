//
//  CCWDappWebTool.h
//  CocosBCXWallet
//
//  Created by 邵银岭 on 2019/5/13.
//  Copyright © 2019年 邵银岭. All rights reserved.
//

#import <Foundation/Foundation.h>

#define JS_PUSHMESSAGE                  @"pushMessage"

#define JS_METHOD_getCocosAccount       @"getAccountInfo"
#define JS_METHOD_getAccountBalances    @"getAccountBalances"
#define JS_METHOD_transfer              @"transferAsset"
#define JS_METHOD_callContract          @"callContractFunction"
#define JS_METHOD_queryContra           @"queryContract"
#define JS_METHOD_queryContraD          @"queryAccountContractData"
#define JS_METHOD_queryAccoInfo         @"queryAccountInfo"
#define JS_METHOD_queryNHAsset          @"queryNHAssets"
#define JS_METHOD_queryAccoNHOrders     @"queryAccountNHAssetOrders"
#define JS_METHOD_queryNHOrders         @"queryNHAssetOrders"
#define JS_METHOD_queryAccoNH           @"queryAccountNHAssets"
#define JS_METHOD_decodeMemo            @"decodeMemo"
#define JS_METHOD_transferNH            @"transferNHAsset"
#define JS_METHOD_fillNHAssetOrder      @"fillNHAssetOrder"


#define JS_METHODNAME_CALLBACKRESULT                @"callbackResult"

NS_ASSUME_NONNULL_BEGIN

@interface CCWDappWebTool : NSObject

+ (void)JSHandle_ReceiveMessageName:(NSString *)name messageBody:(NSDictionary *)body response:(void(^)(NSString *serialNumber, NSString *response))block;

@end

NS_ASSUME_NONNULL_END