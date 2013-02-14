//
//  RootViewController.m
//  TycoTestScenario1
//
//  Created by pradeep misra on 09/06/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"


@implementation RootViewController
@synthesize dataArray;

#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.title = @"UITableView Click Counter";
	NSString *path = [[NSBundle mainBundle] pathForResource:@"tableData" ofType:@"plist"];
	self.dataArray = [NSMutableArray arrayWithContentsOfFile:path];
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
	
}

#pragma mark -
#pragma mark Table view data source

#pragma mark - UITableView delegate methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [self.dataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *kCustomCellID = @"MyCellID";
	UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(160.0f, 2.0f, 30.0f, 20.0f)];
	UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(160.0f, 24.0f, 30.0f, 30.0f)];
	label2.textColor = [UIColor grayColor];
	UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:kCustomCellID];
	if (cell == nil)
	{
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:kCustomCellID] autorelease];
	    cell.selectionStyle = UITableViewCellSelectionStyleNone;
	}
	if([self.dataArray count]>indexPath.row)
	{
		label1.text = [[self.dataArray objectAtIndex:indexPath.row] objectForKey:@"Lable1"];
		label2.text =[[self.dataArray objectAtIndex:indexPath.row] objectForKey:@"Lable2"]; 
	}
	else {
		label1.text = @"";
		label2.text =@"";
	}
	[cell.contentView addSubview:label1];
	[cell.contentView addSubview:label2];
	[label1 release];
	[label2 release];
	return cell;
}


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   //take dictionary object from dataArray at selected index
   //take Lable2 value as a string and convert it into integer and increment the interger value
   //now convert this incremented integer value into string
   //now save it new string in Lable2 for the object dictionary and add this dict object into dataArray at selected index
	NSMutableDictionary * tempDict = [self.dataArray objectAtIndex:indexPath.row];
	NSLog(@"tempDict1:%@",[tempDict description]);
	int tempLableInt = [[tempDict objectForKey:@"Lable2"] intValue];
	NSLog(@"tempLableInt1:%d",tempLableInt);
	tempLableInt = tempLableInt +1;
	NSLog(@"tempLableInt2:%d",tempLableInt);
	[tempDict setObject:[NSString stringWithFormat:@"%d",tempLableInt] forKey:@"Lable2"];
	NSLog(@"tempDict2:%@",[tempDict description]);
	[self.dataArray replaceObjectAtIndex:indexPath.row withObject:tempDict];
	[tableView reloadData];
}


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
	[self.dataArray release];
	self.dataArray = nil;
    [super dealloc];
}


@end

