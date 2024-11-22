game_set_speed(60, 60);
image_xscale = 4; // Scale width to 2x
image_yscale = 4; // Scale height to 2x

meleeBaseDamage = [2, 10, 35, 2, 20, 25, 9, 1, 1];
//ype = {"Regular", "Shit", "Juggernaut", "Fast", "Scout", "Heavy", "Robot", "Worker", "Spiderfilth"};
meleeCooldownTimes = [1.5, 3, 3, 0.4, 1.5, 2, 1.4, 0.7]
meleeExp = [10, 10, 10, 10, 10, 10, 10, 10, 10];

//Gun, Shotgun, Pyro, Demo
rangedCooldownTimes = [1.5, 1.5, 0.1, 2]
ranges = [10, 3, 3, 5];
rangedBaseDamage = [0.1, 2, 4, 5]

last_action_time = 0;
global.last_action_time = 0;
is_poisoned = false;
is_burning = false;
global.time = 1;
global.revive = [160,160]
poison_hits = 0;
burning_hits = 0;
poison_last_time = 0;
burning_last_time = 0;
move_speed = 4;         
max_speed = 8;                   
stamina_drain_rate = 1;     
stamina_regen_rate = 0.5;    
h_speed = 0;            
v_speed = 0;               
sprinting = false;          
baseHealth = 10;
baseStamina = 100;
baseDamage = 7;
blood = 0;
armour = 1;
level = 1;
experience = 0;
damage = baseDamage;
Playerhealth = baseHealth;
stamina = baseStamina;
max_stamina = baseStamina;
cooldown_time = 1;
experience = 0;
previous = 0
range = 50;
knockback = range * 1.5;
knockback_decay = 0.9;

//items
lysol = false;
bucket = true;
ammo = 0;
keys = 0;

global.time = 0;