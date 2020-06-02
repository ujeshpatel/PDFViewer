//
//  ViewController.m
//  PDFViewer
//
//  Created by Ujesh Patel on 02/06/20.
//  Copyright © 2020 Ujesh Patel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIDocumentInteractionControllerDelegate>

@end

@implementation ViewController

NSString *filePath;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    filePath = [[NSString alloc]init];
    
    // Get the PDF Data from the url in a NSData Object
    NSData *pdfData = [[NSData alloc] initWithContentsOfURL:[
                                                             NSURL URLWithString:@"https://file-examples.com/wp-content/uploads/2017/10/file-sample_150kB.pdf"]];
    
    // Store the Data locally as PDF File
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    
    filePath = [paths[0]
                stringByAppendingPathComponent:@"file-sample_150kB.pdf"];
    [pdfData writeToFile:filePath atomically:YES];
    
    _label.text = filePath;
    
}

- (IBAction)actionOnClickOpenPDF:(id)sender {
    // Now create Request for the file that was saved in your documents folder
    
    PDFViewerController * controller  = [PDFViewerController new];
    controller.filePath = filePath;
    [self.navigationController pushViewController:controller animated:YES];
    
}

- (IBAction)actionOnClickOpenPDFInDocumentViewer:(id)sender {
    // Now create Request for the file that was saved in your documents folder
    
    NSURL *targetURL = [NSURL fileURLWithPath:filePath];
    
    UIDocumentInteractionController *documentInteractionController =[UIDocumentInteractionController interactionControllerWithURL:targetURL];
    
    documentInteractionController.delegate = self;
    
    [documentInteractionController presentPreviewAnimated:YES];
    
}

- (UIViewController *) documentInteractionControllerViewControllerForPreview: (UIDocumentInteractionController *) controller {
    return self;
}

@end
