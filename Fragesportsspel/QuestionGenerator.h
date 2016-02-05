//
//  QuestionGenerator.h
//  Fragesportsspel
//
//  Created by ITHS on 2016-02-05.
//  Copyright © 2016 ITHS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionGenerator : NSObject

-(NSMutableArray*)generateQuestion:(int)round;
-(BOOL)rightOrNot:(NSString*)answer;
-(void)generateNumber;
@property (nonatomic) NSMutableArray *questionArray;
@property (nonatomic) NSMutableArray *randomNumber;
@end
