//
//  RootViewController.m
//  TycoTestScenario2
//
//  Created by pradeep misra on 09/06/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "TycoTestScenarioDetailView.h"

@implementation RootViewController

@synthesize btn1,btn2,btn3,btn4,btn5;
@synthesize lblViews1,lblViews2,lblViews3,lblViews4,lblViews5;
@synthesize lblInterval1,lblInterval2,lblInterval3,lblInterval4,lblInterval5;

#pragma mark -
#pragma mark View lifecycle


- (void)viewDidLoad {
    [super viewDidLoad];

	UIBarButtonItem *back = [[UIBarButtonItem alloc]initWithTitle:@"A" style:UIBarButtonItemStylePlain target:nil action:nil];
	self.navigationItem.backBarButtonItem = back;
	[back release];
	self.navigationItem.title = @"A";
	[[NSUserDefaults standardUserDefaults] setObject:@"0" forKey:@"KEY_BUTTON1TAP"];
    [[NSUserDefaults standardUserDefaults] setObject:@"0" forKey:@"KEY_BUTTON2TAP"];
	[[NSUserDefaults standardUserDefaults] setObject:@"0" forKey:@"KEY_BUTTON3TAP"];
	[[NSUserDefaults standardUserDefaults] setObject:@"0" forKey:@"KEY_BUTTON4TAP"];
	[[NSUserDefaults standardUserDefaults] setObject:@"0" forKey:@"KEY_BUTTON5TAP"];
	
	[[NSUserDefaults standardUserDefaults] setObject:@"0" forKey:@"KEY_BUTTON1INT"];
    [[NSUserDefaults standardUserDefaults] setObject:@"0" forKey:@"KEY_BUTTON2INT"];
	[[NSUserDefaults standardUserDefaults] setObject:@"0" forKey:@"KEY_BUTTON3INT"];
	[[NSUserDefaults standardUserDefaults] setObject:@"0" forKey:@"KEY_BUTTON4INT"];
	[[NSUserDefaults standardUserDefaults] setObject:@"0" forKey:@"KEY_BUTTON5INT"];
}

-(IBAction)buttonClicked:(id)sender
{
	UIButton *btn = sender;
	if(btn.tag ==1)
	{
		NSLog(@"button 1 clicked");
		int viewsButton1 = [[[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON1TAP"] intValue];
		viewsButton1 = viewsButton1 +1;
		[[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%d",viewsButton1] forKey:@"KEY_BUTTON1TAP"];
		lblViews1.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON1TAP"];
		
		[[NSUserDefaults standardUserDefaults] setObject:@"1" forKey:@"KEY_BUTTON"];
		TycoTestScenarioDetailView *detailView = [[TycoTestScenarioDetailView alloc] initWithNibName:@"TycoTestScenarioDetailView" bundle:[NSBundle mainBundle]];
	    [self.navigationController pushViewController:detailView animated:YES];
		[detailView release];
	}
	else if(btn.tag ==2){
		NSLog(@"button 2 clicked");
		int viewsButton2 = [[[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON2TAP"] intValue];
		viewsButton2 = viewsButton2 +1;
		[[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%d",viewsButton2] forKey:@"KEY_BUTTON2TAP"];
		lblViews2.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON2TAP"];
		[[NSUserDefaults standardUserDefaults] setObject:@"2" forKey:@"KEY_BUTTON"];
		TycoTestScenarioDetailView *detailView = [[TycoTestScenarioDetailView alloc] initWithNibName:@"TycoTestScenarioDetailView" bundle:[NSBundle mainBundle]];
	    [self.navigationController pushViewController:detailView animated:YES];
		//self.navigationItem.title = @"2";
		[detailView release];
	}
	else if(btn.tag ==3){
		NSLog(@"button 3 clicked");
		int viewsButton3 = [[[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON3TAP"] intValue];
		viewsButton3 = viewsButton3 +1;
		[[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%d",viewsButton3] forKey:@"KEY_BUTTON3TAP"];
		lblViews3.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON3TAP"];
		
		[[NSUserDefaults standardUserDefaults] setObject:@"3" forKey:@"KEY_BUTTON"];
		TycoTestScenarioDetailView *detailView = [[TycoTestScenarioDetailView alloc] initWithNibName:@"TycoTestScenarioDetailView" bundle:[NSBundle mainBundle]];
	    [self.navigationController pushViewController:detailView animated:YES];
		//self.navigationItem.title = @"3";
		[detailView release];
	}
	else if(btn.tag ==4){
		NSLog(@"button 4 clicked");
		int viewsButton4 = [[[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON4TAP"] intValue];
		viewsButton4 = viewsButton4 +1;
		[[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%d",viewsButton4] forKey:@"KEY_BUTTON4TAP"];
		lblViews4.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON4TAP"];
		
		[[NSUserDefaults standardUserDefaults] setObject:@"4" forKey:@"KEY_BUTTON"];
		TycoTestScenarioDetailView *detailView = [[TycoTestScenarioDetailView alloc] initWithNibName:@"TycoTestScenarioDetailView" bundle:[NSBundle mainBundle]];
	    [self.navigationController pushViewController:detailView animated:YES];
		//self.navigationItem.title = @"4";
		[detailView release];
	}
	else if(btn.tag ==5){
		int viewsButton5 = [[[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON5TAP"] intValue];
		viewsButton5 = viewsButton5 +1;
		[[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%d",viewsButton5] forKey:@"KEY_BUTTON5TAP"];
		lblViews5.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON5TAP"];
		
		[[NSUserDefaults standardUserDefaults] setObject:@"5" forKey:@"KEY_BUTTON"];
		NSLog(@"button 5 clicked");
		TycoTestScenarioDetailView *detailView = [[TycoTestScenarioDetailView alloc] initWithNibName:@"TycoTestScenarioDetailView" bundle:[NSBundle mainBundle]];
	    [self.navigationController pushViewController:detailView animated:YES];
		//self.navigationItem.title = @"5";
		[detailView release];
	}

}

//- (void)updateTimeLeft
//{
//	NSTimeInterval timeLeft = self.player.duration - self.player.currentTime;
//	
//	// update your UI with timeLeft
//	self. timeDisplay.text = [NSString stringWithFormat:@"%f seconds left", timeLeft];
//}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
	
	lblInterval1.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON1INT"];
	lblInterval2.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON2INT"];
	lblInterval3.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON3INT"];
	lblInterval4.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON4INT"];
	lblInterval5.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"KEY_BUTTON5INT"];
}

/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}
*/

/*
 // Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
 */


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end

