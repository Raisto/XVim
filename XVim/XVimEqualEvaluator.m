//
//  XVimEqualEvaluator.m
//  XVim
//
//  Created by Nader Akoury on 3/5/2012
//  Copyright (c) 2012 JugglerShu.Net. All rights reserved.
//

#import "XVimEqualEvaluator.h"
#import "XVimSourceView.h"
#import "XVimSourceView+Vim.h"
#import "XVimSourceView+Xcode.h"
#import "XVimMotionEvaluator.h"
#import "XVimWindow.h"
#import "Logger.h"
#import "XVim.h"

@implementation XVimEqualEvaluator

- (XVimEvaluator*)EQUAL{
    if ([self numericArg] < 1) 
        return nil;
    XVimMotion* m = XVIM_MAKE_MOTION(MOTION_LINE_FORWARD, LINEWISE, MOTION_OPTION_NONE, [self numericArg]-1);
    return [self _motionFixed:m];
}

- (XVimEvaluator *)_motionFixed:(XVimMotion *)motion{
    [[self sourceView] filter:motion];
    return nil;
}

@end

