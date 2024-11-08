baseHealth = [10, 10];
walkspeeds = [2, 1];
baseDamage = [2, 4];
type = {"Gun", "Shotgun"};
cooldownTimes = [1.5, 1.5]
type_level = [1, 3];
ranges = [10, 2];
level = oPlayer.level;
cooldown_times = cooldownTimes[demonID];
demonID = 0;
if (level > type_level[demonID]){
demonID = random(demonTypes.length)
}
damage = baseDamage[demonID] * (level * 1.5);
health = baseHealth[demonID] * (level * 1.1);
stamina = baseStamina[demoniD] * (level * 1.1);
cooldown_time = cooldownTime[demonID];
walksp = walkspeeds[demonID];
mame = type[demonID];
