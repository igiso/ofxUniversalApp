#include "testApp.h"


/*

 
Load this example in different devices 
 
 OR 
 
 in different Simulators
 
 
 to see what happens.

 
It will automatically load images in correct resolution (if you provide them)

if you don't provide aditional images it will load the normal one and just scale it up

*/

//--------------------------------------------------------------
void testApp::setup(){	
	// register touch events
	ofRegisterTouchEvents(this);
	//iPhoneAlerts will be sent
	ofxiPhoneAlerts.addListener(this);


    circle.loadImage("images/ball.png");
    sample.loadImage("images/image.png");
}

//--------------------------------------------------------------
void testApp::update(){

}

//--------------------------------------------------------------
void testApp::draw(){
ofScale(scaleWidth,scaleHeight);////Automatically scale up to Device

/////////////////////////////////////////////////Write Universla code in normal 320x480  here:
    
    
    
    
    sample.draw(0,0,ofGetWidth(),ofGetHeight());
    
    ofEnableBlendMode(OF_BLENDMODE_MULTIPLY);
    circle.draw(0,0,480,480);
    ofDisableBlendMode();
    ofCircle(mouse().x, mouse().y, 20);

    
    
    
       
    
    
    
    
    
    
    
    
    
    
    
/////////////////////////////////////////////////////OR WRITE SEPERATE CODE FOR EACH DEVICE using ofxGetDeviceType() function
}
void testApp::touchDown(ofTouchEventArgs &touch){
   
    if (ofxGetDeviceType()== APPLE_DEVICE_IPHONE_RETINA) {
        cout<<"iphone4 iphone4s,ipod touch with retina screens";
        ofSetCircleResolution(25);

        
    }else if(ofxGetDeviceType()== APPLE_DEVICE_IPHONE_NONRETINA ){
        
        cout<<"older iphones iphone3gs old ipods etc";
        
    }else if(ofxGetDeviceType()== APPLE_DEVICE_IPHONE_5 ){
        ofSetCircleResolution(25);

        cout<<"iphone5 new gen ipod touch with wider screen";
        
        
    }else if(ofxGetDeviceType()== APPLE_DEVICE_IPAD_RETINA ){
        
        ofSetCircleResolution(50);
        cout<<"ipad 3 with retina";
        
    }else if(ofxGetDeviceType()== APPLE_DEVICE_IPAD_NONRETINA ){
        ofSetCircleResolution(25);

        cout<<"ipad 2 older ipads without retina screen";
        
    }
    
    cout<<endl<<endl<<endl;
    
 
    
    
    
}



//////////////////////////////////////////////////////////////////
/*
 
 The idea of ofxUniversalApp addon is simple:
 
 Write ONE single code for 320x480 resolution and let the addon upscale it automatically to fit your device:
 
 
 
 Remember to enable retina and initAddon at main.mm (like in this example)
 
 
 
 The addon has a Universal Image:
 
 
 for example you load one image:
 
 
 universalImage.loadImage("image.png")
 
 
 ofxUniversalImage will load the normal image but if you want to support hd retina in ipad or iphone 5 etc...
 
 you provide an aditional image in data folder that will end in _hd:
 
 like image_hd.png
 
 and if its there and the user owns an ipad etc.. it will load the hd image automatically
 
 
 if you want low resolution images for iphone 3gs (480x320)
 
 you just have to provide an aditional low resolution image inside data folder that will end to _3g:
 
 image_3g.png
 
 
 becaue when you support many resolutions ofGetWidth and ofGetHeight will brake..
 
 so in this example I've overwritten them to always return 320x480
 
 Remember you write your code like if the resolution was 320x480 and the addon will automatically scale everything up with the values:
 
 scaleWidth,scaleHeight
 
 ofGetScreenHeight()&ofGetScreenWidth() returns the actual screensize
 ofGetWidth()&ofGetHeight()retuns 320x480 (size of project)
 
 
 Don't use openFramworks' MouseX or MouseY in your code
 
 use:
 
 mouse().x and mouse().y
 
 like in the example
 
 
 */
//////////////////////////////////////////////////////////////////

//--------------------------------------------------------------
void testApp::exit(){
    
}

//--------------------------------------------------------------
void testApp::touchMoved(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void testApp::touchUp(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void testApp::touchDoubleTap(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void testApp::lostFocus(){

}

//--------------------------------------------------------------
void testApp::gotFocus(){

}

//--------------------------------------------------------------
void testApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void testApp::deviceOrientationChanged(int newOrientation){

}


//--------------------------------------------------------------
void testApp::touchCancelled(ofTouchEventArgs& args){

}

