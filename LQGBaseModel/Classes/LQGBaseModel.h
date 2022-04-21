//
//  LQGBaseModel.h
//  LQGBaseModel
//
//  Created by 罗建
//  Copyright (c) 2021 罗建. All rights reserved.
//

#import <Foundation/Foundation.h>

/// 基础模型类
@interface LQGBaseModel : NSObject

/// key转换
+ (NSDictionary *)lqg_modelCustomPropertyMapper;

/// 模型嵌套
+ (NSDictionary *)lqg_modelContainerPropertyGenericClass;

/// 将字典数组转化为模型数组
/// @param dictionarys 字典数组
+ (NSMutableArray *)lqg_modelsWithDictionarys:(NSArray<NSDictionary *> *)dictionarys;

/// 将字典转化为模型
/// @param dictionary 字典
+ (instancetype)lqg_modelWithDictionary:(NSDictionary *)dictionary;

/// 初始化赋值
/// @param dictionary 字典
- (instancetype)lqg_initWithDictionary:(NSDictionary *)dictionary;

/// 给模型赋值
/// @param dictionary 字典
- (void)lqg_modelSetWithDictionary:(NSDictionary *)dictionary;

/// 模型转为字典
- (NSMutableDictionary *)lqg_modelToDictionary;

@end
