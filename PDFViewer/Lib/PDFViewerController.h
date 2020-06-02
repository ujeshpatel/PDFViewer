//
//  PDFViewerController.h
//  NotaryCam
//
//  Created by Administrator on 19.04.15.
//  Copyright (c) 2015 HalcyonInnovation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface PDFViewerController : UIViewController

@property (nonatomic, strong) IBOutlet WKWebView *webView;
@property (nonatomic, strong) NSString *filePath;

@end
