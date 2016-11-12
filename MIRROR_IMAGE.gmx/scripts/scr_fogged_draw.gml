draw_self();
if(global.fogged && instance_exists(obj_worldfog))
{
    surface_set_target(obj_worldfog.sFog);
    draw_set_blend_mode( bm_src_color );
    draw_sprite_ext(spr_light, 0, x / obj_worldfog.res, y / obj_worldfog.res, 0.5, 0.5, 0, 0, 0.75);
    draw_set_blend_mode( bm_normal );
    surface_reset_target();
}
