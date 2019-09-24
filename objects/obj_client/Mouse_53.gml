/// @description Create a click and send to server
instance_create_layer(mouse_x, mouse_y, "Instances", obj_click);
buffer_seek(buffer, buffer_seek_start, 0);

buffer_write(buffer, buffer_u8, 1);
buffer_write(buffer, buffer_u32, mouse_x);
buffer_write(buffer, buffer_u32, mouse_y);

network_send_packet(socket, buffer, buffer_tell(buffer));