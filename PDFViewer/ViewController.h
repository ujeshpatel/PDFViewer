//
//  ViewController.h
//  PDFViewer
//
//  Created by Ujesh Patel on 02/06/20.
//  Copyright © 2020 Ujesh Patel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "PDFViewerController.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet WKWebView *webview;
@property (weak, nonatomic) IBOutlet UILabel *label;


@end

