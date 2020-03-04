//Fade debris and then destroy the object 
//Image alpha is the image transparency - fading from 1 to 0 
image_alpha -= 0.01;

//Use less than equals in case frame gets skipped to ensure object is destroyed
if (image_alpha <= 0){
	instance_destroy();	
}
