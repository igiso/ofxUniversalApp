//
//  ofxUniversalApp.h
//  emptyExample
//
//  Created by kyriacos on 7/21/13.
//
//

#ifndef emptyExample_ofxUniversalApp_h
#define emptyExample_ofxUniversalApp_h


#include "ofMain.h"
#include "ofxiPhone.h"
#include "ofxiPhoneExtras.h"



extern BOOL isRetina,isiPad,iphone5;
extern float scaleWidth,scaleHeight;
extern int  App_width, App_height;


enum iPhoneDeviceType {
	APPLE_DEVICE_IPHONE_RETINA,
	APPLE_DEVICE_IPHONE_NONRETINA,
	APPLE_DEVICE_IPAD_RETINA,
    APPLE_DEVICE_IPAD_NONRETINA,
    APPLE_DEVICE_IPHONE_5
};




iPhoneDeviceType ofxGetDeviceType();



void init_ofxUniversalApp();



ofPoint mouse();


class ofxUniversalImage : public ofImage{
public:
    
    bool loadImage(string url){
        
        string temp = url;
        
        if (iphone5) {
            url.insert(url.size()-4,"_i5");
            ofImage::loadImage(url);
            
        }else{
            if(isiPad&&isRetina){
                url.insert(url.size()-4,"_hd");
                ofImage::loadImage(url);
            }
            if(!isiPad&&!isRetina){
                url.insert(url.size()-4,"_3g");
                ofImage::loadImage(url);
            }
            if(isiPad&&!isRetina){
               
                
                url.insert(url.size()-4,"_ip");
                
                ofImage::loadImage(url);
                
            }
            if(!isiPad&&isRetina){
                ofImage::loadImage(url);
            }
        }
        if(!isAllocated())ofImage::loadImage(temp);
        
        return ofImage::isAllocated();
    }
    
    
    
};


#endif
