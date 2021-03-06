//
//  ARTWebSocketTransport+Private.h
//  ably
//
//  Created by Ricardo Pereira on 17/2/16.
//  Copyright © 2016 Ably. All rights reserved.
//

#import <Ably/ARTWebSocketTransport.h>
#import <Ably/CompatibilityMacros.h>
#if COCOAPODS && !TEST_SUITE
#import <SocketRocketAblyFork/SRWebSocket.h>
#else
// Carthage
#import <SocketRocket/SRWebSocket.h>
#endif
#import <Ably/ARTEncoder.h>
#import <Ably/ARTAuth.h>

NS_ASSUME_NONNULL_BEGIN

@interface ARTWebSocketTransport () <SRWebSocketDelegate>

// From RestClient
@property (readwrite, strong, nonatomic) id<ARTEncoder> encoder;
@property (readonly, strong, nonatomic) ARTLog *logger;
@property (readonly, strong, nonatomic) ARTClientOptions *options;

@property (readwrite, strong, nonatomic, nullable) SRWebSocket *websocket;
@property (readwrite, strong, nonatomic, nullable) NSURL *websocketURL;

- (NSURL *)setupWebSocket:(NSArray<NSURLQueryItem *> *)params withOptions:(ARTClientOptions *)options resumeKey:(NSString *_Nullable)resumeKey connectionSerial:(NSNumber *_Nullable)connectionSerial;

- (void)setState:(ARTRealtimeTransportState)state;

@end

NS_ASSUME_NONNULL_END
