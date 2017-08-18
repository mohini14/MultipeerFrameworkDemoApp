//
//  MCFrameworkManager.h
//  MultipeerConectivityDemoApp
//
//  Created by Mohini Sindhu  on 18/08/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MultipeerConnectivity/MultipeerConnectivity.h>
#import "Define.h"

@interface MCFrameworkManager : NSObject<MCSessionDelegate>

@property (strong,nonatomic) MCPeerID* peerId;
@property (strong,nonatomic) MCSession *session;
@property (strong,nonatomic) MCBrowserViewController* mcBrowserViewController;
@property (strong,nonatomic) MCAdvertiserAssistant* advertisingAssistant;

-(void)setupPeerAndSessionWithDisplayName:(NSString *)displayName;
-(void)setupMCBrowser;
-(void)advertiseSelf:(BOOL)shouldAdvertise;

@end
