//
//  CCWNHAssetOrderTableViewCell.m
//  CocosBCXWallet
//
//  Created by 邵银岭 on 2019/7/18.
//  Copyright © 2019 邵银岭. All rights reserved.
//

#import "CCWNHAssetOrderTableViewCell.h"

@interface CCWNHAssetOrderTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *orderIdLabel;
@property (weak, nonatomic) IBOutlet UILabel *sellerLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *nodeLabel;
@property (weak, nonatomic) IBOutlet UILabel *expirationLabel;
@end

@implementation CCWNHAssetOrderTableViewCell

/** 初始化Cell */
+ (instancetype)cellWithTableView:(UITableView *)tableView WithIdentifier:(NSString *)identifier
{
    CCWNHAssetOrderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([CCWNHAssetOrderTableViewCell class]) owner:nil options:nil] lastObject];
    }
    return cell;
}

- (void)setNhAssetOrderModel:(CCWNHAssetOrderModel *)nhAssetOrderModel
{
    _nhAssetOrderModel = nhAssetOrderModel;
    self.orderIdLabel.text = nhAssetOrderModel.ID;
    self.sellerLabel.text = nhAssetOrderModel.seller;
    self.priceLabel.text = [nhAssetOrderModel.price mj_JSONString];
    self.nodeLabel.text = nhAssetOrderModel.memo;
    self.expirationLabel.text = nhAssetOrderModel.expiration;
}
// 出售资产
- (IBAction)bugNHAssetClick:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(CCWPropOrderCellbuyClick:)]) {
        [self.delegate CCWPropOrderCellbuyClick:self];
    }
}

@end