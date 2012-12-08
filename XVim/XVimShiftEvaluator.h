//
//  XVimShiftEvaluator.h
//  XVim
//
//  Created by Shuichiro Suzuki on 2/25/12.
//  Copyright (c) 2012 JugglerShu.Net. All rights reserved.
//

#import "XVimOperatorEvaluator.h"
#import "XVimOperatorAction.h"



@interface XVimShiftEvaluator : XVimOperatorEvaluator
- (id)initWithContext:(XVimEvaluatorContext*)context withWindow:(XVimWindow*)window withParent:(XVimEvaluator*)parent unshift:(BOOL)unshift;
@end
