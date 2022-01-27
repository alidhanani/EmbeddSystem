//This file was generated from (Commercial) UPPAAL 4.0.15 rev. CB6BB307F6F681CB, November 2019

/*

*/
Sensor_Model.alarm = 0 --> Sensor_Model.ON

/*

*/
User_Model.VeritfyLongPress --> not Sensor_Model.ON

/*

*/
Sensor_Model.BL --> Model_User.y < 200

/*

*/
E<> (Sensor_Model.BL and Sensor_Model.y<200)

/*

*/
A[] not deadlock

/*

*/
E[] Sensor_Model.OFF

/*

*/
E<> Sensor_Model.ON

/*

*/
A[] (Sensor_Model.ON and Sensor_Model.alarm = 2)

/*

*/
A<> Sensor_Model.ON

/*

*/
Sensor_Model.y>=500 and Sensor_Model.BL and not Sensor_Model.status --> Sensor_Model.OFF

/*

*/
Sensor_Model.alarm == 2 and Sensor_Model.OFF --> not Sensor_Model.ON

/*

*/
Sensor_Model.alarm = 2  --> not Sensor_Model.ON

/*

*/
E<> (Sensor_Model.alarm = 1  and Sensor_Model.ON) 

/*

*/
E[] (Sensor_Model.alarm = 2 and not Sensor_Model.status) 

/*

*/
E[] (Sensor_Model.alarm = 2 and not Sensor_Model.ON)

/*

*/
A<> Sensor_Model.OFF
