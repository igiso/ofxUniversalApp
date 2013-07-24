ofxUniversalApp
===============

This is an OF Example of How to write universal code for all apple devices (iphone.retina.ipad.iphone5 etc) 
using the ofxUniversalApp "addon"

There are many ways to do this, this is how I do it.



What this "addon" provides

* an extention to the ofImage class  called ofxUniversalImage that will automatically search for customized images
in the same directory as your normal images and will load them if they are there.

* get device type

* other stuff.




I write one code for 320x480 resolution - this is i-phone 2g resolution.


I check for the device 


and then I upscale everything up automatically to fit the new resolution.


This might sound horrible for images but we solve this by using 

-> ofxUniversalImage
-> ofxUniversalFont

If your image appears pixelated you just provide an ADDITIONAL image in your data folder
with the same name but a specific extension at the end to separate it from the other one:

in general here is what I used but you can change it if you like:

for iphone 1st gen add "_3g" at the end of the image so it becomes image_3g.png

for retina iphone I left it normal because this is the most common resolution 

for ipad I added _hd

3 images will do the trick for all apple devices but you can provide specific images for all devices as well

for more info look at the example.



Nothing fancy but I think this is the easiest way to write one universal code for all apple devices.


Open the example and compile it at different devices or simulators and see how it loads
the appropriate images for each device


Disadvantages of this method:
 

* it "stretches" your app. If aspect ratio is important it might look a bit funny.
*but you can use squaredScale and create 2 scopes : one that fills the screen and one that keeps aspect-ratio

I personally think is not that big of a deal but others might disagree 
