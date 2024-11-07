var Enemies = {oDemonMelee, oDemonRanged, oTrap};
var last_action_time = 0; // last time action was performed


 for (var i = 0; i < 3; i++){
var enemy_x = Enemies[i].x;
var enemy_y = Enemies[i].y;

// Calculate the angle between the player and the enemy object
var angle_to_enemy = point_direction(x, y, enemy_x, enemy_y);

var angle_diff = abs(direction - angle_to_enemy && distance_to_enemy <= range);
if (global.time - last_action_time >= cooldown_time) {
if (angle_diff < 45 || angle_diff > 315) {
    Enemies[i].health -= damage + blood;
	last_action_time = global.time;
}}
 if (Enemies[i].health <= 0){
        with (instance_place(Enemies[i].x, Enemies[i].y, Enemies[i])) {
            instance_destroy();
        }
 }  
 }
 
 /*
var enemy_x = oDemonMelee.x;
var enemy_y = oDemonMelee.y;

// Calculate the angle between the player and the enemy object
var angle_to_enemy = point_direction(x, y, enemy_x, enemy_y);

var angle_diff = abs(direction - angle_to_enemy && distance_to_enemy <= range);
if (angle_diff < 45 || angle_diff > 315) {
    oDemonMelee.health -= damage + blood;
} 
 if (oDemonMelee.health <= 0){
        with (instance_place(oDemonMelee.x, oDemonMelee.y, oDemonMelee)) {
            instance_destroy();
        }
 }  
 
enemy_x = oDemonRanged.x;
enemy_y = oDemonRanged.y;

angle_to_enemy = point_direction(x, y, enemy_x, enemy_y);

angle_diff = abs(direction - angle_to_enemy && distance_to_enemy <= range);
if (angle_diff < 45 || angle_diff > 315) {
    oDemonRanged.health -= damage + blood;
} 
 if (oDemonRanged.health <= 0){
        with (instance_place(oDemonRanged.x, oDemonRanged.y, oDemonRanged)) {
            instance_destroy();
        }
 }  

enemy_x = oTrap.x;
enemy_y = oTrap.y;

angle_to_enemy = point_direction(x, y, enemy_x, enemy_y);

angle_diff = abs(direction - angle_to_enemy && distance_to_enemy <= range);
if (angle_diff < 45 || angle_diff > 315) {
    oTrap.health -= damage + blood;
} 
 if (oTrap.health <= 0){
        with (instance_place(oTrap.x, oTrap.y, oTrap)) {
            instance_destroy();
        }
 }  
 */