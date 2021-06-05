-- Author Kal & Racherry
-- Reference https://www.deviantart.com/speedracker/art/Red-NSA-Conky-388553986 
normal="0xffffff"
warn="0xff7200"
crit="0xff000d"


corner_r=35
bg_colour=0x2a2a2a
bg_alpha=0.2

settings_table = {
    
    {
        name='acpitemp',
        arg='',
        max=90,
        bg_colour=0x2a2a2a,
        bg_alpha=0.8,
        fg_colour=0xffffff,
        fg_alpha=0.8,
        x=240, y=375,
        radius=97,
        thickness=4,
        start_angle=0,
        end_angle=240
    },
    {
        name='cpu',
        arg='cpu0',
        max=100,
        bg_colour=0x2a2a2a,
        bg_alpha=0.8,
        fg_colour=0xffffff,
        fg_alpha=0.8,
        x=240, y=375,
        radius=86,
        thickness=13,
        start_angle=0,
        end_angle=240
    },
    {
        name='cpu',
        arg='cpu1',
        max=100,
        bg_colour=0x2a2a2a,
        bg_alpha=0.7,
        fg_colour=0xffffff,
        fg_alpha=0.8,
        x=240, y=375,
        radius=71,
        thickness=12,
        start_angle=0,
        end_angle=240
    },
    {
        name='cpu',
        arg='cpu2',
        max=100,
        bg_colour=0x2a2a2a,
        bg_alpha=0.6,
        fg_colour=0xffffff,
        fg_alpha=0.8,
        x=240, y=375,
        radius=57,
        thickness=11,
        start_angle=0,
        end_angle=240
    },
    {
        name='cpu',
        arg='cpu3',
        max=100,
        bg_colour=0x2a2a2a,
        bg_alpha=0.5,
        fg_colour=0xffffff,
        fg_alpha=0.8,
        x=240, y=375,
        radius=44,
        thickness=10,
        start_angle=0,
        end_angle=240
    },
    {
        name='memperc',
        arg='',
        max=100,
        bg_colour=0x2a2a2a,
        bg_alpha=0.8,
        fg_colour=0xffffff,
        fg_alpha=0.8,
        x=350, y=520,
        radius=60,
        thickness=15,
        start_angle=180,
        end_angle=420
    },
    {
        name='swapperc',
        arg='',
        max=100,
        bg_colour=0x2a2a2a,
        bg_alpha=0.4,
        fg_colour=0xffffff,
        fg_alpha=0.8,
        x=350, y=520,
        radius=45,
        thickness=10,
        start_angle=180,
        end_angle=420
    },
    {
        name='execpi',
        arg='86400 ./script/cetati.sh user',
        max=100,
        bg_colour=0x2a2a2a,
        bg_alpha=0.8,
        fg_colour=0xffffff,
        fg_alpha=0.8,
        x=220, y=560,
        radius=50,
        thickness=10,
        start_angle=0,
        end_angle=240
    },
    {
        name='execpi',
        arg='86400 ./script/cetati.sh arsenal',
        max=100,
        bg_colour=0x2a2a2a,
        bg_alpha=0.6,
        fg_colour=0xffffff,
        fg_alpha=0.8,
        x=220, y=560,
        radius=38,
        thickness=10,
        start_angle=0,
        end_angle=240
    },
    {
        name='execi',
        arg='86400 ./script/cetati.sh vbox', 
        max=100,
        bg_colour=0x2a2a2a,
        bg_alpha=0.4,
        fg_colour=0xffffff,
        fg_alpha=0.8,
        x=220, y=560,
        radius=26,
        thickness=10,
        start_angle=0,
        end_angle=240
    },
    {
        name='execi',
        arg='86400 ./script/cetati.sh download',
        max=100,
        bg_colour=0x2a2a2a,
        bg_alpha=0.2,
        fg_colour=0xffffff,
        fg_alpha=0.8,
        x=220, y=560,
        radius=14,
        thickness=10,
        start_angle=0,
        end_angle=240
    },
    {
        name='upspeedf',
        arg=conky_parse("${if_up wlp3s0}wlp3s0${else}enp0s25${endif}"),
        max=15000,
        bg_colour=0x2a2a2a,
        bg_alpha=0.8,
        fg_colour=0xffffff,
        fg_alpha=0.8,
        x=280, y=685,
        radius=50,
        thickness=12,
        start_angle=120,
        end_angle=360
    },
    {
        name='downspeedf',
        arg=conky_parse("${if_up wlp3s0}wlp3s0${else}enp0s25${endif}"),
        max=15000,
        bg_colour=0x2a2a2a,
        bg_alpha=0.6,
        fg_colour=0xffffff,
        fg_alpha=0.8,
        x=280, y=685,
        radius=38,
        thickness=8,
        start_angle=120,
        end_angle=360
    },
    {
        name='time',
        arg='%S',
        max=60,
        bg_colour=0x2a2a2a,
        bg_alpha=0.8,
        fg_colour=0xffffff,
        fg_alpha=0.8,
        x=180, y=700,
        radius=30,
        thickness=12,
        start_angle=0,
        end_angle=240
    },
    {
        name='time',
        arg='%M',
        max=60,
        bg_colour=0x2a2a2a,
        bg_alpha=0.6,
        fg_colour=0xffffff,
        fg_alpha=0.8,
        x=180, y=700,
        radius=18,
        thickness=8,
        start_angle=0,
        end_angle=240
    },
    {
        name='time',
        arg='%H',
        max=24,
        bg_colour=0x2a2a2a,
        bg_alpha=0.4,
        fg_colour=0xffffff,
        fg_alpha=0.8,
        x=180, y=700,
        radius=10,
        thickness=4,
        start_angle=0,
        end_angle=240
    },
    {
        name='battery_percent',
        arg='BAT0',
        max=100,
        bg_colour=0x2a2a2a,
        bg_alpha=0.6,
        fg_colour=0xffffff,
        fg_alpha=0.8,
        x=210, y=800,
        radius=20,
        thickness=15,
        start_angle=180,
        end_angle=420
    },
    {
        name='battery_percent',
        arg='BAT1',
        max=100,
        bg_colour=0x2a2a2a,
        bg_alpha=0.6,
        fg_colour=0xffffff,
        fg_alpha=0.8,
        x=210, y=800,
        radius=35,
        thickness=10,
        start_angle=180,
        end_angle=420
    },
}

require 'cairo'

function rgb_to_r_g_b(colour,alpha)
	return ((colour / 0x10000) % 0x100) / 255., ((colour / 0x100) % 0x100) / 255., (colour % 0x100) / 255., alpha
end

function draw_ring(cr,t,pt)

	local w,h=conky_window.width,conky_window.height
	
	local xc,yc,ring_r,ring_w,sa,ea=pt['x'],pt['y'],pt['radius'],pt['thickness'],pt['start_angle'],pt['end_angle']
	local bgc, bga, fgc, fga=pt['bg_colour'], pt['bg_alpha'], pt['fg_colour'], pt['fg_alpha']

	local angle_0=sa*(2*math.pi/360)-math.pi/2
	local angle_f=ea*(2*math.pi/360)-math.pi/2
	local t_arc=t*(angle_f-angle_0)

	-- Draw background ring

	cairo_arc(cr,xc,yc,ring_r,angle_0,angle_f)
	cairo_set_source_rgba(cr,rgb_to_r_g_b(bgc,bga))
	cairo_set_line_width(cr,ring_w)
	cairo_stroke(cr)
	
	-- Draw indicator ring

	cairo_arc(cr,xc,yc,ring_r,angle_0,angle_0+t_arc)
	cairo_set_source_rgba(cr,rgb_to_r_g_b(fgc,fga))
	cairo_stroke(cr)		
end

function conky_ring_stats()
	local function setup_rings(cr,pt)
		local str=''
		local value=0
		
		str=string.format('${%s %s}',pt['name'],pt['arg'])
		str=conky_parse(str)
		
		value=tonumber(str)
		if value == nil then value = 0 end
		pct=value/pt['max']
		
		draw_ring(cr,pct,pt)
	end

	if conky_window==nil then return end
	local cs=cairo_xlib_surface_create(conky_window.display,conky_window.drawable,conky_window.visual, conky_window.width,conky_window.height)
	
	local cr=cairo_create(cs)	
	
	local updates=conky_parse('${updates}')
	update_num=tonumber(updates)

	if update_num>5 then
	    for i in pairs(settings_table) do
                display_temp=temp_watch()
		setup_rings(cr,settings_table[i])
	    end
	end
   cairo_surface_destroy(cs)
  cairo_destroy(cr)
end

function disk_watch()

    warn_disk=93
    crit_disk=98

    -- poser une boucle plus tard... pas simple

    disk=tonumber(conky_parse("${fs_used_perc /}"))

    if disk<warn_disk then
        settings_table[8]['fg_colour']=normal
    elseif disk<crit_disk then
        settings_table[8]['fg_colour']=warn
    else
        settings_table[8]['fg_colour']=crit
    end

    disk=tonumber(conky_parse("${fs_used_perc /home}"))

    if disk<warn_disk then
        settings_table[9]['fg_colour']=normal
    elseif disk<crit_disk then
        settings_table[9]['fg_colour']=warn
    else
        settings_table[9]['fg_colour']=crit
    end

    disk=tonumber(conky_parse("${fs_used_perc /usr}"))

    if disk<warn_disk then
        settings_table[10]['fg_colour']=normal
    elseif disk<crit_disk then
        settings_table[10]['fg_colour']=warn
    else
        settings_table[10]['fg_colour']=crit
    end
end

function temp_watch()

    warn_value=70
    crit_value=80

    temperature=tonumber(conky_parse("${acpitemp}"))

    if temperature<warn_value then
        settings_table[1]['fg_colour']=normal
    elseif temperature<crit_value then
        settings_table[1]['fg_colour']=warn
    else
        settings_table[1]['fg_colour']=crit
    end
end

function conky_draw_bg()
    if conky_window==nil then return end
    local w=conky_window.width
    local h=conky_window.height
    local cs=cairo_xlib_surface_create(conky_window.display, conky_window.drawable, conky_window.visual, w, h)
    cr=cairo_create(cs)
    
    cairo_move_to(cr,corner_r,0)
    cairo_line_to(cr,w-corner_r,0)
    cairo_curve_to(cr,w,0,w,0,w,corner_r)
    cairo_line_to(cr,w,h-corner_r)
    cairo_curve_to(cr,w,h,w,h,w-corner_r,h)
    cairo_line_to(cr,corner_r,h)
    cairo_curve_to(cr,0,h,0,h,0,h-corner_r)
    cairo_line_to(cr,0,corner_r)
    cairo_curve_to(cr,0,0,0,0,corner_r,0)
    cairo_close_path(cr)
    
    cairo_set_source_rgba(cr,rgb_to_r_g_b(bg_colour,bg_alpha))
    cairo_fill(cr)
end

function conky_main()
    temp_watch()
    disk_watch()
    conky_ring_stats()
-- quand fond nécessaire
--    conky_draw_bg()
end
