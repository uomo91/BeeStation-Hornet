
/mob/living/silicon/robot/Login()
	..()
	regenerate_icons()
	show_laws(0)
	if(mind)
		ticker.mode.remove_revolutionary(mind)
		ticker.mode.remove_gangster(mind,1,remove_bosses=1)
		ticker.mode.remove_thrall(mind,0)
		ticker.mode.remove_shadowling(mind)
		ticker.mode.remove_hog_follower(mind, 0)

	winset(src, null, "mainwindow.macro=robot-default")