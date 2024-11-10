game_set_speed(60, 60);
/*
baseHealth = [10, 30, 100, 5, 15, 95, 50, 10];
walkspeeds = [2, 2, 1, 5, 4, 1, 1, 2];
baseDamage = [2, 10, 35, 2, 20, 25, 9, 1];
//ype = {"Regular", "Shit", "Juggernaut", "Fast", "Scout", "Heavy", "Robot", "Worker"};
cooldownTimes = [1.5, 3, 3, 0.4, 1.5, 2, 1.4]
*/
global.last_action_time = 0;
move_speed = 4;         
max_speed = 8;           
acceleration = 0.2;      
deceleration = 0.2;          
stamina_drain_rate = 1;     
stamina_regen_rate = 0.5;    
h_speed = 0;            
v_speed = 0;               
sprinting = false;          
baseHealth = 90.90909091;
baseStamina = 90.90909091;
baseDamage = 5;
range = 2;
blood = 0;
armour = 1;
level = 1;
experience = 0;
damage = baseDamage * (level * 1.5)
health = baseHealth * (level * 1.1)
stamina = baseStamina * (level * 1.1)
max_stamina = baseStamina * (level * 1.1)
cooldown_time = 2500;

//items
mop = false;
lysol = false;
cart = false;
gun = false;
bucket = false;
ammo = 0;
keys = 0;

global.time = 0;