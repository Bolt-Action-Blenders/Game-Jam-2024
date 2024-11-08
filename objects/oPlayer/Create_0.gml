game_set_speed(60, 60);
move_speed = 2;         
max_speed = 4;           
acceleration = 0.1;      
deceleration = 0.1;          
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
cooldown_time = 1;

//items
mop = false;
lysol = false;
cart = false;
gun = false;
bucket = false;
ammo = 0;
keys = 0;

global.time = 0;