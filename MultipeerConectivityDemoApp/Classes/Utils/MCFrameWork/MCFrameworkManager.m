//
//  MCFrameworkManager.m
//  MultipeerConectivityDemoApp
//
//  Created by Mohini Sindhu  on 18/08/17.
//  Copyright © 2017 Mohini Sindhu . All rights reserved.
//

#import "MCFrameworkManager.h"

@implementation MCFrameworkManager

#pragma mark- Init methods
-(instancetype) init
{
	
	self = [super init];
	
	if(!self){
		
		self.peerId = nil;
		self.session = nil;
		self.advertisingAssistant = nil;
		self.mcBrowserViewController = nil;
	}
	return self;
}

#pragma mark- delegate methods
-(void)session:(MCSession *)session peer:(MCPeerID *)peerID didChangeState:(MCSessionState)state
{
	
	
}

-(void)session:(MCSession *)session didReceiveData:(NSData *)data fromPeer:(MCPeerID *)peerID
{
	
}

-(void)session:(MCSession *)session didStartReceivingResourceWithName:(NSString *)resourceName fromPeer:(MCPeerID *)peerID withProgress:(NSProgress *)progress
{
	
}

-(void)session:(MCSession *)session didFinishReceivingResourceWithName:(NSString *)resourceName fromPeer:(MCPeerID *)peerID atURL:(NSURL *)localURL withError:(NSError *)error
{
	
}

-(void)session:(MCSession *)session didReceiveStream:(NSInputStream *)stream withName:(NSString *)streamName fromPeer:(MCPeerID *)peerID
{
	
}

#pragma mark- Public methods
-(void)setupPeerAndSessionWithDisplayName:(NSString *)displayName
{
	self.peerId = [[MCPeerID alloc] initWithDisplayName:displayName];
	self.session = [[MCSession alloc] initWithPeer:self.peerId];
	self.session.delegate = self;
}

-(void) setupMCBrowser
{
	self.mcBrowserViewController = [[MCBrowserViewController alloc] initWithServiceType:kServiceType session:self.session];
}

-(void) advertiseSelf:(BOOL)shouldAdvertise
{
	if(shouldAdvertise)
	{
		self.advertisingAssistant = [[MCAdvertiserAssistant alloc] initWithServiceType:kServiceType discoveryInfo:nil session:self.session];
		
		[self.advertisingAssistant start];
	}
	else
	{
		[self.advertisingAssistant stop];
		self.advertisingAssistant = nil;
	}
}

@end
