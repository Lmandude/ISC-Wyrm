/datum/shuttle/autodock/ferry/lift
	name = "Cargo Lift"
	shuttle_area = /area/station/shuttle/lift
	warmup_time = 1
	move_time = 3
	waypoint_station = "nav_asteroid_lift_top"
	landmark_transition = "nav_asteroid_lift_middle"
	waypoint_offsite = "nav_asteroid_lift_bottom"
	sound_takeoff = 'sound/effects/lift_heavy_start.ogg'
	sound_landing = 'sound/effects/lift_heavy_stop.ogg'
	ceiling_type = null
	knockdown = 0
	location = 0
	direction = 0

/obj/machinery/computer/shuttle_control/lift
	name = "cargo lift controls"
	shuttle_tag = "Cargo Lift"
	ui_template = "shuttle_control_console_lift.tmpl"
	icon_state = "tiny"
	icon_keyboard = "tiny_keyboard"
	icon_screen = "lift"
	density = 0

/obj/effect/shuttle_landmark/lift/top
	name = "Supply Level"
	landmark_tag = "nav_asteroid_lift_top"
	base_area
	base_turf = /turf/simulated/open

/obj/effect/shuttle_landmark/lift/mid
	landmark_tag = "nav_asteroid_lift_middle"
	base_area = /area/maintenance/middle/lift
	base_turf = /turf/simulated/open

/obj/effect/shuttle_landmark/lift/bottom
	name = "Department Level"
	landmark_tag = "nav_asteroid_lift_bottom"
	base_area = /area/station/cargo/lower_storage
	base_turf = /turf/simulated/floor/plating

/obj/turbolift_map_holder/asteroid
	depth = 3
	dir = NORTH
	lift_size_x = 4
	lift_size_y = 4
	areas_to_use = list(
		/area/turbolift/department_level,
		/area/turbolift/construction_level,
		/area/turbolift/supply_level
		)