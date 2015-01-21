//
//  ComuniTableViewController.m
//  CalcoloTasi
//
//  Created by Innocenzo Tremamondo on 21/01/15.
//  Copyright (c) 2015 LabNova. All rights reserved.
//

#import "ComuniTableViewController.h"

@implementation ComuniTableViewController


@synthesize urlField = urlField;
@synthesize webViewController;
@synthesize pastUrls;
@synthesize autocompleteUrls;
@synthesize autocompleteTableView;

autocompleteTableView = [[UITableView alloc] initWithFrame:
                         CGRectMake(0, 80, 320, 120) style:UITableViewStylePlain];
autocompleteTableView.delegate = self;
autocompleteTableView.dataSource = self;
autocompleteTableView.scrollEnabled = YES;
autocompleteTableView.hidden = YES;
[self.view addSubview:autocompleteTableView];


- (BOOL)textField:(UITextField *)textField
shouldChangeCharactersInRange:(NSRange)range
replacementString:(NSString *)string {
    autocompleteTableView.hidden = NO;
    
    NSString *substring = [NSString stringWithString:textField.text];
    substring = [substring
                 stringByReplacingCharactersInRange:range withString:string];
    [self searchAutocompleteEntriesWithSubstring:substring];
    return YES;
}

- (void)searchAutocompleteEntriesWithSubstring:(NSString *)substring {
    
    // Put anything that starts with this substring into the autocompleteUrls array
    // The items in this array is what will show up in the table view
    [autocompleteUrls removeAllObjects];
    for(NSString *curString in pastUrls) {
        NSRange substringRange = [curString rangeOfString:substring];
        if (substringRange.location == 0) {
            [autocompleteUrls addObject:curString];
        }
    }
    [autocompleteTableView reloadData];
}

@end
