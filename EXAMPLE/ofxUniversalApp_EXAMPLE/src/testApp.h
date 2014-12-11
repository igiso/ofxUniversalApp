#pragma once


#include "ofMain.h"
#include "ofxiPhone.h"
#include "ofxiPhoneExtras.h"

#include "ofxUniversalApp.h"
/* this example needs my specific data images in order to work

 
 look for them in the OF forum!!
 
 http://forum.openframeworks.cc/t/universal-app-example/10770/4
 
 basically apple devices need images in a specified dimention to enable retina etc.
 
 if you know what I mean go ahead and use your own images 
 
 otherwise try find my data folder in my original OF post. 
 data folder also here: http://forum.openframeworks.cc/uploads/default/7149/dd35354b150c5f0d.zip
*/


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


