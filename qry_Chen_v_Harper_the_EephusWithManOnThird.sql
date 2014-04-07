/*****************************************************************************
This query show the outcome of two Eephus pitches thrown by Bruce Chen at
Bryce Harper.
*****************************************************************************/

SELECT atbats.ab_id, 
	atbats.batter, 
    players.eliasid,
	players.`first`, 
	players.last, 
    atbats.pitcher, 
	pitches.pitch_id,  
	pitches.des, 
	pitches.type, 
	pitches.id, 
	pitches.x, 
	pitches.y, 
	pitches.start_speed, 
	pitches.end_speed, 
	pitches.sz_top, 
	pitches.sz_bot, 
	pitches.pfx_x, 
	pitches.pfx_z, 
	pitches.px, 
	pitches.pz, 
	pitches.x0, 
	pitches.y0, 
	pitches.z0, 
	pitches.vx0, 
	pitches.vy0, 
	pitches.vz0, 
	pitches.ax, 
	pitches.ay, 
	pitches.az, 
	pitches.break_y, 
	pitches.break_angle, 
	pitches.break_length, 
	pitches.ball, 
	pitches.strike, 
	pitches.on_3b, 
	pitches.pitch_type, 
	pitches.type_confidence,  
	atbats.des, 
	atbats.`event`, 
	atbats.game_id, 
	games.date, 
	games.home, 
	games.away, 
	games.game
FROM atbats 
	 INNER JOIN pitches ON atbats.ab_id = pitches.ab_id
	 INNER JOIN players ON atbats.batter = players.eliasid
	 INNER JOIN games ON atbats.game_id = games.game_id
WHERE pitches.pitch_type = 'EP'
AND pitches.on_3b IS NOT Null
AND pitcher = 136600  # Bruce Chen
AND batter = 547180   # Bryce Harper
