/*      
    Interface.m
    (c) 2017 Daniel Ferreira
    Licensed under the GNU Lesser General Public License, version 2.
*/

#import "WebKitSystemInterface.h"

CFStringRef WKSignedPublicKeyAndChallengeString(unsigned keySize, CFStringRef challenge, CFStringRef keyDescription)
{
    return NULL;
}

WKCertificateParseResult WKAddCertificatesToKeychainFromData(const void *bytes, unsigned length)
{
    return 0;
}

CFStringEncoding WKGetWebDefaultCFStringEncoding(void)
{
    return 0;
}

void WKSetMetadataURL(NSString *URLString, NSString *referrer, NSString *path)
{}
    
WKPlugInModuleLoadPolicy WKLoadPolicyForPluginVersion(NSString *bundleIdentifier, NSString *bundleVersionString)
{
    return 0;
}

BOOL WKShouldBlockPlugin(NSString *bundleIdentifier, NSString *bundleVersionString)
{
    return YES;
}

BOOL WKIsPluginUpdateAvailable(NSString *bundleIdentifier)
{
    return NO;
}

BOOL WKShouldBlockWebGL() { return YES; }
BOOL WKShouldSuggestBlockingWebGL() { return YES; }

CGPatternRef WKCGPatternCreateWithImageAndTransform(CGImageRef image, CGAffineTransform transform, int tiling)
{
    return NULL;
}

BOOL WKCGContextIsBitmapContext(CGContextRef context) { return YES; }
bool WKCGContextIsPDFContext(CGContextRef context) { return NO; }

CFStringRef WKCopyFoundationCacheDirectory(void)
{
    return NULL;
}

CFURLStorageSessionRef WKCreatePrivateStorageSession(CFStringRef string)
{
    return NULL;
}

NSURLRequest *WKCopyRequestWithStorageSession(CFURLStorageSessionRef session, NSURLRequest *req)
{
    return NULL;
}

NSCachedURLResponse *WKCachedResponseForRequest(CFURLStorageSessionRef session, NSURLRequest *req)
{
    return NULL;
}

unsigned WKGetHTTPCookieAcceptPolicy(CFHTTPCookieStorageRef cookies) { return 0; }
NSArray *WKHTTPCookies(CFHTTPCookieStorageRef cookies) { return nil; }
NSArray *WKHTTPCookiesForURL(CFHTTPCookieStorageRef cookies, NSURL *url, NSURL *url2) { return nil; }
void WKSetHTTPCookiesForURL(CFHTTPCookieStorageRef cookies, NSArray *array, NSURL *url, NSURL *url2) {}
void WKDeleteAllHTTPCookies(CFHTTPCookieStorageRef cookies) {}
void WKDeleteHTTPCookie(CFHTTPCookieStorageRef cookies, NSHTTPCookie *cookie) {}

CFURLRef WKCopyBundleURLForExecutableURL(CFURLRef url)
{
    return NULL;
}

CALayer *WKMakeRenderLayer(uint32_t contextID)
{
    return nil;
}

void WKDestroyRenderingResources(void)
{}

void WKCALayerEnumerateRectsBeingDrawnWithBlock(CALayer *layer, CGContextRef context, void (^block)(CGRect rect))
{}

void WKSetCONNECTProxyForStream(CFReadStreamRef stream, CFStringRef proxyHost, CFNumberRef proxyPort) {}
void WKSetCONNECTProxyAuthorizationForStream(CFReadStreamRef stream, CFStringRef proxyAuthorizationString) {}
CFHTTPMessageRef WKCopyCONNECTProxyResponse(CFReadStreamRef stream, CFURLRef responseURL, CFStringRef proxyHost, CFNumberRef proxyPort) { return NULL; }

CFDictionaryRef WKNSURLRequestCreateSerializableRepresentation(NSURLRequest *request, CFTypeRef tokenNull) { return NULL; }
NSURLRequest *WKNSURLRequestFromSerializableRepresentation(CFDictionaryRef representation, CFTypeRef tokenNull) { return NULL; }
CFDictionaryRef WKCFURLRequestCreateSerializableRepresentation(CFURLRequestRef cfRequest, CFTypeRef tokenNull) { return NULL; }
CFURLRequestRef WKCreateCFURLRequestFromSerializableRepresentation(CFDictionaryRef representation, CFTypeRef tokenNull) { return NULL; }

CFArrayRef WKCFURLCacheCopyAllHostNamesInPersistentStore(void) { return NULL; }
void WKCFURLCacheDeleteHostNamesInPersistentStore(CFArrayRef hostArray) {}

WKSandboxExtensionRef WKSandboxExtensionCreate(const char* path, WKSandboxExtensionType type) { return NULL; }
void WKSandboxExtensionDestroy(WKSandboxExtensionRef sandboxExtension) {}

bool WKSandboxExtensionConsume(WKSandboxExtensionRef sandboxExtension) { return NO; }
bool WKSandboxExtensionInvalidate(WKSandboxExtensionRef sandboxExtension) { return NO; }

const char* WKSandboxExtensionGetSerializedFormat(WKSandboxExtensionRef sandboxExtension, size_t* length) { return NULL; }
WKSandboxExtensionRef WKSandboxExtensionCreateFromSerializedFormat(const char* serializationFormat, size_t length) { return NULL; }

void WKSetCrashReportApplicationSpecificInformation(CFStringRef string) {}

bool WKIsPublicSuffix(NSString *domain) { return YES; }

CFArrayRef WKCFURLCacheCopyAllHostNamesInPersistentStoreForPartition(CFStringRef partition) { return NULL; }

void WKCFURLCacheDeleteHostNamesInPersistentStoreForPartition(CFArrayRef hostArray, CFStringRef partition) {}
CFStringRef WKCachePartitionKey(void) { return NULL; }
void WKCFURLCacheCopyAllPartitionNames(CFURLCacheCopyAllPartitionNamesResultsNotification resultsBlock) {}

int WKExernalDeviceTypeForPlayer(AVPlayer *player) { return 0; }
NSString *WKExernalDeviceDisplayNameForPlayer(AVPlayer *player) { return nil; }

bool WKQueryDecoderAvailability(void) { return NO; }

void WKShowKeyAndMain(void) {}

void WKAdvanceDefaultButtonPulseAnimation(NSButtonCell *button) {}

NSString *WKWindowWillOrderOnScreenNotification(void) { return nil; }
NSString *WKWindowWillOrderOffScreenNotification(void) { return nil; }
void WKSetNSWindowShouldPostEventNotifications(NSWindow *window, BOOL post) {}

CFTypeID WKGetAXTextMarkerTypeID(void) { return 0; }
CFTypeID WKGetAXTextMarkerRangeTypeID(void) { return 0; }
CFTypeRef WKCreateAXTextMarker(const void *bytes, size_t len) { return NULL; }
BOOL WKGetBytesFromAXTextMarker(CFTypeRef textMarker, void *bytes, size_t length) { return NO;}
CFTypeRef WKCreateAXTextMarkerRange(CFTypeRef start, CFTypeRef end) { return NULL; }
CFTypeRef WKCopyAXTextMarkerRangeStart(CFTypeRef range) { return NULL; }
CFTypeRef WKCopyAXTextMarkerRangeEnd(CFTypeRef range) { return NULL; }
void WKAccessibilityHandleFocusChanged(void) {}
AXUIElementRef WKCreateAXUIElementRef(id element) { return NULL; }
void WKUnregisterUniqueIdForElement(id element) {}
    
NSArray *WKSpeechSynthesisGetVoiceIdentifiers(void) { return nil; }
NSString *WKSpeechSynthesisGetDefaultVoiceIdentifierForLocale(NSLocale *locale) { return nil; }

// Remote Accessibility API.
void WKAXInitializeElementWithPresenterPid(id element, pid_t pid) {}
NSData *WKAXRemoteTokenForElement(id element) { return nil; }
id WKAXRemoteElementForToken(NSData *data) { return nil; }
void WKAXSetWindowForRemoteElement(id remoteWindow, id remoteElement) {}
void WKAXRegisterRemoteProcess(bool registerProcess, pid_t pid) {}
pid_t WKAXRemoteProcessIdentifier(id remoteElement) { return 0; }

// The CG context's current path is the focus ring's path.
// Color and radius are ignored. Older versions of WebKit expected to
// be able to change the rendering of the system focus ring.
void WKDrawFocusRing(CGContextRef context, CGColorRef color, int radius) {}
bool WKDrawFocusRingAtTime(CGContextRef context, NSTimeInterval time) { return NO; }
bool WKDrawCellFocusRingWithFrameAtTime(NSCell *cell, NSRect cellFrame, NSView *controlView, NSTimeInterval time) { return NO; }

void WKSetDragImage(NSImage *image, NSPoint offset) {}

void WKDrawBezeledTextArea(NSRect rect, BOOL enabled) {}

void WKPopupMenu(NSMenu *meny, NSPoint location, float width, NSView *view, int selectedItem, NSFont *font, NSControlSize controlSize, bool usesCustomAppearance) {}
void WKPopupContextMenu(NSMenu *menu, NSPoint screenLocation) {}
void WKSendUserChangeNotifications(void) {}

bool WKCGContextDrawsWithCorrectShadowOffsets(CGContextRef ctx) { return NO; }

CGContextRef WKNSWindowOverrideCGContext(NSWindow *window, CGContextRef ctx) { return NULL; }
void WKNSWindowRestoreCGContext(NSWindow *window, CGContextRef ctx) {}

void WKGetWheelEventDeltas(NSEvent *event, float *deltaX, float *deltaY, BOOL *continuous) {}

BOOL WKAppVersionCheckLessThan(NSString *string, int number1, double number2) { return NO; }

int WKQTMovieGetType(QTMovie* movie) { return NO; }

BOOL WKQTMovieHasClosedCaptions(QTMovie* movie) { return NO; }
void WKQTMovieSetShowClosedCaptions(QTMovie* movie, BOOL showClosedCaptions) {}
void WKQTMovieSelectPreferredAlternates(QTMovie* movie) {}

unsigned WKQTIncludeOnlyModernMediaFileTypes(void) { return 0; }
float WKQTMovieMaxTimeLoaded(QTMovie* movie) { return 0; }
NSString *WKQTMovieMaxTimeLoadedChangeNotification(void) { return nil; }
void WKQTMovieDisableComponent(uint32_t array[5]) {}
NSURL *WKQTMovieResolvedURL(QTMovie* movie) { return nil; }

void WKSetVisibleApplicationName(CFStringRef string) {}
void WKSetApplicationInformationItem(CFStringRef key, CFTypeRef value) {}

BOOL WKHitTestMediaUIPart(int part, CGRect bounds, CGPoint point) { return NO; }
void WKMeasureMediaUIPart(int part, CGRect *bounds, CGSize *naturalSize) {}
void WKDrawMediaUIPart(int part, CGContextRef context, CGRect rect, unsigned state) {}
void WKDrawMediaSliderTrack(CGContextRef context, CGRect rect, float timeLoaded, float currentTime, float duration, unsigned state) {}
NSView *WKCreateMediaUIBackgroundView(void) { return nil; }

NSControl *WKCreateMediaUIControl(int controlType) { return nil; }

NSArray *WKQTGetSitesInMediaDownloadCache() { return nil; }
void WKQTClearMediaDownloadCacheForSite(NSString *site) {}
void WKQTClearMediaDownloadCache() {}
    
WKSoftwareCARendererRef WKSoftwareCARendererCreate(uint32_t contextID) { return NULL; }
void WKSoftwareCARendererDestroy(WKSoftwareCARendererRef renderer) {}
void WKSoftwareCARendererRender(WKSoftwareCARendererRef renderer, CGContextRef ctx, CGRect rect) {}
WKCAContextRef WKCAContextMakeRemoteForWindowServer(void) { return NULL; }

void WKWindowSetClipRect(NSWindow *window, NSRect rect) {}

NSUInteger WKGetInputPanelWindowStyle(void) { return 0; }
UInt8 WKGetNSEventKeyChar(NSEvent *event) { return 0; }

void WKWindowSetAlpha(NSWindow *window, float alphaValue) {}
void WKWindowSetScaledFrame(NSWindow *window, NSRect scaleFrame, NSRect nonScaledFrame) {}

void WKEnableSettingCursorWhenInBackground(void) {}

OSStatus WKEnableSandboxStyleFileQuarantine(void) { return 0; }

int WKRecommendedScrollerStyle(void) { return 0; }

bool WKExecutableWasLinkedOnOrBeforeSnowLeopard(void) { return NO; }

CFStringRef WKCopyDefaultSearchProviderDisplayName(void) { return NULL; }

NSCursor *WKCursor(const char *name) { return nil; }

bool WKExecutableWasLinkedOnOrBeforeLion(void) { return NO; }

CGFloat WKNSElasticDeltaForTimeDelta(CGFloat initialPosition, CGFloat initialVelocity, CGFloat elapsedTime) { return 0; }
CGFloat WKNSElasticDeltaForReboundDelta(CGFloat delta) { return 0; }
CGFloat WKNSReboundDeltaForElasticDelta(CGFloat delta) { return 0; }

bool WKRegisterOcclusionNotificationHandler(WKOcclusionNotificationType type, WKOcclusionNotificationHandler handler) { return NO; }
bool WKEnableWindowOcclusionNotifications(NSInteger windowID, bool *outCurrentOcclusionState) { return NO; }
