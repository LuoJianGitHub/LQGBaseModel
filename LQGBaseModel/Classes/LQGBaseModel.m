//
//  LQGBaseModel.m
//  LQGBaseModel
//
//  Created by 罗建
//  Copyright (c) 2021 罗建. All rights reserved.
//

#import "LQGBaseModel.h"

#import <YYModel/YYModel.h>

@implementation LQGBaseModel


#pragma mark - key转换

+ (NSDictionary *)modelCustomPropertyMapper {
    return [self lqg_modelCustomPropertyMapper];
}

+ (NSDictionary *)lqg_modelCustomPropertyMapper {
    return nil;
}


#pragma mark - 模型嵌套

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return [self lqg_modelContainerPropertyGenericClass];
}

+ (NSDictionary *)lqg_modelContainerPropertyGenericClass {
    return nil;
}


#pragma mark - json转模型

+ (NSMutableArray *)lqg_modelsWithDictionarys:(NSArray<NSDictionary *> *)dictionarys {
    if (![dictionarys isKindOfClass:[NSArray class]]) return [NSMutableArray array];
    
    NSMutableArray *models = [NSMutableArray array];
    for (NSDictionary *dictionary in dictionarys) {
        [models addObject:[self lqg_modelWithDictionary:dictionary]];
    }
    return models;
}

+ (instancetype)lqg_modelWithDictionary:(NSDictionary *)dictionary {
    return [[self alloc] lqg_initWithDictionary:dictionary];
}

- (instancetype)lqg_initWithDictionary:(NSDictionary *)dictionary {
    return [self initWithDictionary:dictionary];
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    if (self = [super init]) {
        [self lqg_modelSetWithDictionary:dictionary];
    }
    return self;
}

- (void)lqg_modelSetWithDictionary:(NSDictionary *)dictionary {
    [self yy_modelSetWithDictionary:dictionary];
}


#pragma mark - 模型转json

- (NSMutableDictionary *)lqg_modelToDictionary {
    NSMutableDictionary *dictionary = self.yy_modelToJSONObject;
    if (![dictionary isKindOfClass:[NSMutableDictionary class]]) {
        dictionary = [NSMutableDictionary dictionary];
    }
    return dictionary;
}

@end
