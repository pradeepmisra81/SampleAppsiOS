//
//  RootViewController.h
//  TycoTestScenario2
//
//  Created by pradeep misra on 09/06/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController {
	
	IBOutlet UIButton *btn1;
	IBOutlet UIButton *btn2;
	IBOutlet UIButton *btn3;
	IBOutlet UIButton *btn4;
	IBOutlet UIButton *btn5;
	IBOutlet UILabel *lblViews1;
	IBOutlet UILabel *lblViews2;
	IBOutlet UILabel *lblViews3;
	IBOutlet UILabel *lblViews4;
	IBOutlet UILabel *lblViews5;
	
	IBOutlet UILabel *lblInterval1;
	IBOutlet UILabel *lblInterval2;
	IBOutlet UILabel *lblInterval3;
	IBOutlet UILabel *lblInterval4;
	IBOutlet UILabel *lblInterval5;
}

@property(nonatomic,retain) IBOutlet UIButton *btn1;
@property(nonatomic,retain) IBOutlet UIButton *btn2;
@property(nonatomic,retain) IBOutlet UIButton *btn3;
@property(nonatomic,retain) IBOutlet UIButton *btn4;
@property(nonatomic,retain) IBOutlet UIButton *btn5;

@property(nonatomic,retain) IBOutlet UILabel *lblViews1;
@property(nonatomic,retain) IBOutlet UILabel *lblViews2;
@property(nonatomic,retain) IBOutlet UILabel *lblViews3;
@property(nonatomic,retain) IBOutlet UILabel *lblViews4;
@property(nonatomic,retain) IBOutlet UILabel *lblViews5;

@property(nonatomic,retain) IBOutlet UILabel *lblInterval1;
@property(nonatomic,retain) IBOutlet UILabel *lblInterval2;
@property(nonatomic,retain) IBOutlet UILabel *lblInterval3;
@property(nonatomic,retain) IBOutlet UILabel *lblInterval4;
@property(nonatomic,retain) IBOutlet UILabel *lblInterval5;

-(IBAction)buttonClicked:(id)sender;
@end
