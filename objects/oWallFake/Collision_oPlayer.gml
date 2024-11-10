hidden = [RoomH1,2]
xyInRooms = [700,160]
current_room=[Room1_1,Room1_2]
roomNow = array_get_index(current_room,room)
if roomNow==-1
{
roomNow = array_get_index(hidden,room)

}
room = hidden[roomNow]
oPlayer.x =xyInRooms[roomNow*2]
oPlayer.y =xyInRooms[roomNow*2+1]
