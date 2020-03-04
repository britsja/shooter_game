//Destroy Bullet
instance_destroy();

//Create smaller asteroid on impact with bullet
//Careful, we can't refer to every instance of the asteroid object, only the impacted one
//other refers to the other object in the event, a very limited use....

with (other) {
	//Destroy asteroid
	instance_destroy();
	
	if(sprite_index == spr_asteroid_huge){
		//repeat is like a for loop with loop iteration amount inside braces
		//This will create two smaller (medium) sized asteroids
		repeat(2){
			var new_asteroid = instance_create_layer(x,y,"Instances",obj_asteroid);
			//Override asteroid start event creating asteroid of random size
			new_asteroid.sprite_index = spr_asteroid_medium;
		}
	} 
	else if(sprite_index == spr_asteroid_medium){
		//repeat is like a for loop with loop iteration amount inside braces
		//This will create two smaller (small) sized asteroids
		repeat(2){
			var new_asteroid = instance_create_layer(x,y,"Instances",obj_asteroid);
			//Override asteroid start event creating asteroid of random size
			new_asteroid.sprite_index = spr_asteroid_small;
		}
	}
	
	/*
	if(sprite_index == spr_asteroid_huge){
		repeat(2){
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_medium;
		}
	}
	*/
	
	//Create debris when an asteroid explodes
	repeat(10){
		instance_create_layer(x, y, "Instances", obj_debris);
	}
	
}


