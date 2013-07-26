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
extern float scaleWidth,scaleHeight,squaredScaleW,squaredScaleH,fontScaleW,fontScaleH;
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
ofPoint mouse2();


class ofxUniversalFont : public ofTrueTypeFont{
    int SIZE;
public:
void loadFont(string fontName,int Size){
        SIZE = Size*scaleWidth;
ofTrueTypeFont::loadFont(fontName, SIZE);
    }
    void draw(string message,int x,int y){
        ofPushMatrix();
        ofTranslate(x, y);
//float sx = ofMap(scaleWidth, 1, 4.8, 1,0.25);
//float sy = ofMap(scaleHeight, 1, 4.2666, 1,0.2);
        ofScale(fontScaleW,fontScaleW);
ofTrueTypeFont::drawString(message,0,0);
        ofPopMatrix();

        
    }
    void draw(string message,ofPoint pos){
      
    this->draw( message,pos.x,pos.y);
    }
    
};









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
        if(!ofImage::isAllocated()){ofImage::loadImage(temp);
        
            cout<<"ofxUniversalImage::"<<endl;
            cout<<"something went wrong TRYING TO LOAD TEMP: "<<temp<<" The url is "<<url<<endl;
        
        }
        
        return ofImage::isAllocated();
    }
    
    
    
};


#endif
