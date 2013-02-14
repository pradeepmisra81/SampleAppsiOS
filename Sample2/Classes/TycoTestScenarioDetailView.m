//
//  TycoTestScenarioDetailView.m
//  TycoTestScenario2
//
//  Created by pradeep misra on 09/06/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "TycoTestScenarioDetailView.h"


@implementation TycoTestScenarioDetailView

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	self.navigationItem.title = [[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON"];
	
	//UIBarButtonItem *back = [[UIBarButtonItem alloc]initWithTitle:@"A" style:UIBarButtonItemStylePlain target:nil action:nil];
//	self.navigationItem.backBarButtonItem = back;
//	[back release];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
	NSDate *now = [NSDate date];
	long int startTime = (long int) [now timeIntervalSince1970];
	NSLog(@"startTime1:%li",startTime);
	[[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%li",startTime] forKey:@"KEY_START_TIME"];
	
}
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

-(void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
	NSDate *now = [NSDate date];
	long int endTime = (long int) [now timeIntervalSince1970];
	
	NSLog(@"endTime:%li",endTime);
	NSLog(@"startTime2:%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_START_TIME"]);
	long int startTime = (long int)[[[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_START_TIME"] intValue];
	NSLog(@"startTime3:%li",startTime);
	long int intervals = endTime - startTime;
	
	NSLog(@"interval:%li",intervals);
	
	NSString *btnId = [[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON"];
	
	if ([btnId isEqualToString:@"1"]) {
		long int interval = (long int)[[[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON1INT"] intValue];
		interval = interval + intervals;
		[[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%li",interval] forKey:@"KEY_BUTTON1INT"];
	}
	else if([btnId isEqualToString:@"2"]){
		long int interval = (long int)[[[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON2INT"] intValue];
		interval = interval + intervals;
		[[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%li",interval] forKey:@"KEY_BUTTON2INT"];
	
	}
	else if([btnId isEqualToString:@"3"]){
		long int interval = (long int)[[[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON3INT"] intValue];
		interval = interval + intervals;
		[[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%li",interval] forKey:@"KEY_BUTTON3INT"];
	}
	else if([btnId isEqualToString:@"4"]){
		long int interval = (long int)[[[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON4INT"] intValue];
		interval = interval + intervals;
		[[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%li",interval] forKey:@"KEY_BUTTON4INT"];
	}
	else if([btnId isEqualToString:@"5"]){
		long int interval = (long int)[[[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON5INT"] intValue];
		interval = interval + intervals;
		[[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%li",interval] forKey:@"KEY_BUTTON5INT"];
	}
}
- (void)viewDidUnload {
    [super viewDidUnload];
	// Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
