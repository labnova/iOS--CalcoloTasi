//
//  CitViewController.h
//  CalcoloTasi
//
//  Created by Innocenzo Tremamondo on 21/01/15.
//  Copyright (c) 2015 LabNova. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WebViewController;

@interface CitViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate>  {
    IBOutlet UITextField *urlField;
    WebViewController *webViewController;
    NSMutableArray *pastUrls;
    NSMutableArray *autocompleteUrls;
    UITableView *autocompleteTableView;
}

@property (nonatomic, retain) UITextField *urlField;
@property (nonatomic, retain) WebViewController *webViewController;
@property (nonatomic, retain) NSMutableArray *pastUrls;
@property (nonatomic, retain) NSMutableArray *autocompleteUrls;
@property (nonatomic, retain) UITableView *autocompleteTableView;

- (IBAction)goPressed;
- (void)searchAutocompleteEntriesWithSubstring:(NSString *)substring;

@end
