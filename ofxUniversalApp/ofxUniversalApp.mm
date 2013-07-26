//
//  ofxUniversalApp.mm
//  emptyExample
//
//  Created by kyriacos on 7/21/13.
//
//

#include "ofxUniversalApp.h"


 BOOL isRetina,isiPad,iphone5;
 float scaleWidth,scaleHeight,squaredScaleW,squaredScaleH,fontScaleW,fontScaleH;;
 int  App_width, App_height;




iPhoneDeviceType ofxGetDeviceType() {
    if (iphone5) {
        return APPLE_DEVICE_IPHONE_5;
        
    }else{
        if(isiPad&&isRetina){
            
            return APPLE_DEVICE_IPAD_RETINA;
            
        }
        if(!isiPad&&!isRetina){
            return APPLE_DEVICE_IPHONE_NONRETINA;
            
        }
        if(isiPad&&!isRetina){
            return APPLE_DEVICE_IPAD_NONRETINA;
            
            
        }
        if(!isiPad&&isRetina){
            
            return APPLE_DEVICE_IPHONE_RETINA;
            
        }
    }
    
}



void init_ofxUniversalApp(){

    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)]) {
        if ([[UIScreen mainScreen] scale] > 1)
            isRetina = true;
            }
    
    if ([[UIDevice currentDevice] respondsToSelector:@selector(userInterfaceIdiom)])
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
            isiPad = true;
            
            if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad && [[UIScreen mainScreen] respondsToSelector:@selector(scale)] && [UIScreen mainScreen].scale > 1)
            {
                isRetina = true;
                isiPad = true;
                
            }
    
    [pool release];
    
    
    if (isRetina && isiPad){
        App_width = 1536;
        App_height = 2048;
        scaleWidth =4.8;
        squaredScaleW=4.2666,squaredScaleH=4.2666;
        scaleHeight =4.2666;
        fontScaleW=0.2,fontScaleH=0.24;
    }
    else if (!isRetina && !isiPad){
        App_width = 320;
        App_height = 480;
        scaleWidth =1;
        scaleHeight =1;
        squaredScaleW =1;
        squaredScaleH =1;
        fontScaleW=1,fontScaleH=1;

    }
    else if (isRetina && !isiPad){
        App_width = 640;
        App_height = 960;
        scaleWidth =2;
        scaleHeight =2;
        squaredScaleW =2;
        squaredScaleH =2;
        fontScaleW=0.5,fontScaleH=0.5;

    }
    else if (!isRetina && isiPad){
        App_width = 768;
        App_height = 1024;
        scaleWidth =2.4;
        scaleHeight =2.13333;
        squaredScaleW =2.13333;
        squaredScaleH =2.13333;
        fontScaleW=0.43,fontScaleH=0.49;

    }
    
    if ([ [ UIScreen mainScreen ] bounds ].size.height == 568){
        iphone5 = true;
        App_width = 640;
        App_height = 1136;
        scaleWidth =2;
        scaleHeight =2.36666;
        squaredScaleW =2;
        squaredScaleH =2;
        fontScaleW=0.5,fontScaleH=0.49;

    }else{iphone5=false;
        
    }
}



ofPoint mouse(){
    
    float mousex = ofMap(ofGetMouseX(),0,320*scaleWidth,0,320);
    float mousey = ofMap(ofGetMouseY(), 0, 480*scaleHeight, 0,480);
    ofPoint p;
    p.set(mousex, mousey);
    return p;
}
ofPoint mouseSquared(){
    
    float mousex = ofMap(ofGetMouseX(),0,320*squaredScaleW,0,320);
    float mousey = ofMap(ofGetMouseY(), 0, 480*squaredScaleH, 0,480);
    ofPoint p;
    p.set(mousex, mousey);
    return p;
}

