//
//  PDFViewerController.m
//  NotaryCam
//
//  Created by Administrator on 19.04.15.
//  Copyright (c) 2015 HalcyonInnovation. All rights reserved.
//

#import "PDFViewerController.h"

@interface PDFViewerController ()

@end

@implementation PDFViewerController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.webView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    
    self.webView.translatesAutoresizingMaskIntoConstraints = false;

}

- (void)viewDidAppear:(BOOL)animated {
        [super viewDidAppear:animated];

        NSURL *targetURL = [NSURL fileURLWithPath:_filePath];
        NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
        [self.webView loadRequest:request];
        
    
}




@end
