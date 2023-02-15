//
//  ViewController.m
//  iDecideApp
//
//  Created by Sami Bajwa on 1/28/23.
//

#import "ViewController.h"

@interface ViewController () {
    UILabel* decisionText;
    NSMutableArray *arr;
    int answerIndex;
}
@property (strong, nonatomic) IBOutlet UILabel *decisionText;

- (int)generateRandomNumberWithLower:(int)lowerIndex andUpper:(int)upperIndex;

@end

@implementation ViewController

@synthesize decisionText = _decisionText;

- (int)generateRandomNumberWithLower:(int)lowerIndex andUpper:(int)upperIndex {
  return lowerIndex + arc4random() % (upperIndex - lowerIndex);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)buttonPressed:(id)sender {
    NSLog(@"Button has been pressed!");
    NSMutableArray *arr = [NSMutableArray arrayWithObjects: @"Maybe someday", @"Yes", @"Most definitely", @"Perhaps", @"I don't think so", @"Go for a run", @"Certainly possible", @"Hi",nil];
    int count = (int)[arr count];
    NSLog(@"viewDidLoad count is: %d", count);
    answerIndex = [self generateRandomNumberWithLower:0 andUpper:count];
    NSLog(@"Answer index: %d", answerIndex);
    _decisionText.text = [arr objectAtIndex:answerIndex];
}



@end
