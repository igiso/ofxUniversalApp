#pragma once


#include "ofMain.h"
#include "ofxiPhone.h"
#include "ofxiPhoneExtras.h"

#include "ofxUniversalApp.h"


class testApp : public ofxiPhoneApp {
	
public:
	void setup();
	void update();
	void draw();
	void exit();
	
	void touchDown(ofTouchEventArgs &touch);
	void touchMoved(ofTouchEventArgs &touch);
	void touchUp(ofTouchEventArgs &touch);
	void touchDoubleTap(ofTouchEventArgs &touch);
	void touchCancelled(ofTouchEventArgs &touch);

	void lostFocus();
	void gotFocus();
	void gotMemoryWarning();
	void deviceOrientationChanged(int newOrientation);
   
    //this addons assumes that you write code for 320x480 therefore"
    int ofGetWidth(){
        return 320;
    }
    int ofGetHeight(){
        return 480;
    }
     ////use ofGetScreenWidth if you want actual resolution
  
    
    
    ///instead of ofImage:
    ofxUniversalImage sample;
    ofxUniversalImage circle;
    
    
    
    
};

