///@arg text
///@arg style
///@arg x
///@arg y

//GitHub version

//Replace "Instances" with the layer that you want the text to appear on
textEngine = instance_create_layer(argument2,argument3,"Instances",obj_RPGTextEngine);

textEngine.toprint = argument0;
textEngine.textstyle = argument1;