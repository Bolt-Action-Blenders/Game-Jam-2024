baseHealth = [10, 10, 20];
walkspeeds = [2, 1, 3];
baseDamage = [2, 4, 0.5];
   show_debug_message(baseDamage[1])
// type = {"Gun", "Shotgun", "Pyro"};
cooldownTimes = [1.5, 1.5, 0.1]
type_level = [1, 3, 10];
ranges = [10, 2, 2];
level = oPlayer.level;
cooldown_times = cooldownTimes[demonID];
demonID = 0;
if (level > type_level[demonID]){
demonID = random(3)
}
damage = baseDamage[demonID] * (level * 1.5);
health = baseHealth[demonID] * (level * 1.1);
stamina = baseStamina[demoniD] * (level * 1.1);
cooldown_time = cooldownTime[demonID];
walksp = walkspeeds[demonID];
// mame = type[demonID];
