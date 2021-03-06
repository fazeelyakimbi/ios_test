//
//  NSTimer+Extras.m
//  NSTimer Extras Example
//
//  Created by Charlie Fish on 8/22/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//
/*
 Permission is hereby granted, free of charge, to any person
 obtaining a copy of this software and associated documentation
 files (the "Software"), to deal in the Software without
 restriction, including without limitation the rights to use,
 copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software in source or binary form, and to permit persons to whom the
 Software is furnished to do so, subject to the following
 conditions:
 
 The above copyright notice and this permission notice shall be
 included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 OTHER DEALINGS IN THE SOFTWARE.
 */

#import "NSTimer+Extras.h"

@implementation NSTimer (Extras)
NSDate *pauseStart, *previousFireDate;
-(void)pauseTimer{
    pauseStart = [NSDate dateWithTimeIntervalSinceNow:0];
    
    previousFireDate = [self fireDate] ;
    
    [self setFireDate:[NSDate distantFuture]];
}
-(void)resumeTimer{
    float pauseTime = -1*[pauseStart timeIntervalSinceNow];
    
    [self setFireDate:[previousFireDate initWithTimeInterval:pauseTime sinceDate:previousFireDate]];
    
//    [pauseStart release];
    
 //   [previousFireDate release];

}
@end
