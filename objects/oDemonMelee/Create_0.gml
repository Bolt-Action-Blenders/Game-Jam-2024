
baseHealth= [10, 30, 100, 5, 15, 95, 50, 10];
walkspeeds = [2, 2, 1, 5, 4, 1, 1, 2];
baseDamage= [2, 10, 35, 2, 20, 25, 9, 1];
//type = {"Regular", "Shit", "Juggernaut", "Fast", "Scout", "Heavy", "Robot", "Worker"};
cooldownTimes = [1.5, 3, 3, 0.4, 1.5, 2, 1.4]
type_level = [1, 5, 8, 1, 9, 8, 5, 1];
level = oPlayer.level;
cooldown_times = cooldownTimes[1];//do not keep
demonID = 1;
if (level > type_level[demonID]){
demonID = random(array_length(type_level))
}
damage = baseDamage[demonID] * (level * 1.5);
health = baseHealth[demonID] * (level * 1.1);

walksp = walkspeeds[demonID];
// mame = type[demonID];
