#include "ofMain.h"
#include "testApp.h"
#include "ofxUniversalApp.h"
/*
Add
  init_ofxUniversalApp();
and
 iOSWindow->enableRetinaSupport();
*/
int main(){
    init_ofxUniversalApp();///Get what device this is
    
    ofAppiPhoneWindow * iOSWindow = new ofAppiPhoneWindow();  
    
    ofSetupOpenGL(iOSWindow, 320,480, OF_FULLSCREEN);
    iOSWindow->enableRetinaSupport();//enable Retina
    
    ofRunApp(new testApp); 
       
}
