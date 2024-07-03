cam_x = obj_player.x - (CAM_W / 2);
cam_y = obj_player.y - (CAM_H / 2);

cam_x = clamp(cam_x, 0, room_width - CAM_W);
cam_y = clamp(cam_y, 0, room_height - CAM_H);

camera_set_view_pos(camera, cam_x, cam_y);