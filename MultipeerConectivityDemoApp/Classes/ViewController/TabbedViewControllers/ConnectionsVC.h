//
//  ConnectionsVCViewController.h
//  MultipeerConectivityDemoApp
//
//  Created by Mohini Sindhu  on 18/08/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConnectionsVC : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *deviceNameTextField;
@property (weak, nonatomic) IBOutlet UISwitch *deviceVisibleSwitch;
@property (weak, nonatomic) IBOutlet UITableView *deviceListTableView;
@property (weak, nonatomic) IBOutlet UIButton *dissconectButtonOutlet;

- (IBAction)browseOtherDeviceButtonPressed:(UIButton *)sender;
- (IBAction)disconnectButtonPressed:(id)sender;
- (IBAction)deviceVisibleSwitchPressed:(UISwitch *)sender;

@end
