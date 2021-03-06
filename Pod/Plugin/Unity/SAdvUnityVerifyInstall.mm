/**
 * @Copyright:   SuperAwesome Trading Limited 2017
 * @Author:      Gabriel Coman (gabriel.coman@superawesome.tv)
 */

#import <UIKit/UIKit.h>
#import "SAdvUnityCallback.h"

#if defined(__has_include)
#if __has_include(<SuperAwesomeAdvertiserSDK/SAVerifyInstall.h>)
#import <SuperAwesomeAdvertiserSDK/SAVerifyInstall.h>
#else
#import "SAVerifyInstall.h"
#endif
#endif

extern "C" {
    
    /**
     * Unity to native iOS method that sends a CPI event.
     */
    void SuperAwesomeAdvertiserUnitySAVerifyInstall () {
         
        [[SAVerifyInstall getInstance] handleInstall:^(BOOL success) {
            sendCPICallback(@"SAVerifyInstall", success, @"HandleInstall");
        }];
    }
}
