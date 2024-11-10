game_set_speed(60, 60);

meleeBaseDamage = [2, 10, 35, 2, 20, 25, 9, 1, 1];
//ype = {"Regular", "Shit", "Juggernaut", "Fast", "Scout", "Heavy", "Robot", "Worker", "Spiderfilth"};
meleeCooldownTimes = [1.5, 3, 3, 0.4, 1.5, 2, 1.4, 0.7]

//Gun, Shotgun, Pyro, Demo
rangedCooldownTimes = [1.5, 1.5, 0.1, 2]
ranges = [10, 3, 3, 5];
rangedBaseDamage = [0.1, 2, 4, 5]
last_action_time = 0;
global.last_action_time = 0;
is_poisoned = false;          
move_speed = 4;         
max_speed = 8;                   
stamina_drain_rate = 1;     
stamina_regen_rate = 0.5;    
h_speed = 0;            
v_speed = 0;               
sprinting = false;          
baseHealth = 90.90909091;
baseStamina = 90.90909091;
baseDamage = 5;
blood = 0;
armour = 1;
level = 1;
experience = 0;
damage = baseDamage * (level * 1.1) 
health = baseHealth * (level * 1.3)
stamina = baseStamina * (level * 1.3)
max_stamina = baseStamina * (level * 1.3)
cooldown_time = 1;
experience = 0;

//items
mop = false;
lysol = false;
cart = false;
gun = false;
bucket = false;
ammo = 0;
keys = 0;

global.time = 0;