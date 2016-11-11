//draw if fog affects this obj
draw_self();
if(instance_exists(obj_worldfog))
{
    draw_set_blend_mode(bm_src_color);
    draw_sprite_ext(spr_light,0, x/obj_worldfog.res, y/obj_worldfog.res,1,1,0,0,1);
    draw_set_blend_mode(bm_normal);
    surface_reset_target();
}
