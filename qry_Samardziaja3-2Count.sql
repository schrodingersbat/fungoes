SELECT atbats.ab_id, 
	atbats.batter, 
  players.eliasid,
	players.`first`, 
	players.last, 
  atbats.pitcher, 
  atbats.des, 
	atbats.`event`,
	pitches.pitch_id,  
	pitches.des, 
	pitches.type, 
	pitches.id, 
	#pitches.x, 
	#pitches.y, 
	pitches.start_speed, 
	pitches.end_speed, 
	#pitches.sz_top, 
	#pitches.sz_bot, 
	#pitches.pfx_x, 
	#pitches.pfx_z, 
	#pitches.px, 
	#pitches.pz, 
	#pitches.x0, 
	#pitches.y0, 
	#pitches.z0, 
	#pitches.vx0, 
	#pitches.vy0, 
	#pitches.vz0, 
	#pitches.ax, 
	#pitches.ay, 
	#pitches.az, 
	#pitches.break_y, 
	pitches.break_angle, 
	pitches.break_length, 
	pitches.ball, 
	pitches.strike,
  pitches.on_1b,
  pitches.on_2b, 
	pitches.on_3b, 
	pitches.pitch_type, 
  pitches.type_confidence,   
	atbats.game_id, 
	games.date, 
	games.home, 
	games.away, 
	games.game
FROM atbats 
	 INNER JOIN pitches ON atbats.ab_id = pitches.ab_id
	 INNER JOIN players ON atbats.batter = players.eliasid
	 INNER JOIN games ON atbats.game_id = games.game_id
#WHERE pitches.pitch_type = 'EP'
#WHERE pitches.on_3b IS NOT Null
#AND pitches.on_2b IS Null
#AND pitches.on_1b IS Null
WHERE pitcher = 502188   # Jeff Samardzija
#AND atbats.ab_id = 282341
AND pitches.ball = 3
AND pitches.strike = 2
AND atbats.event = 'Single'
#AND batter = 547180   # Bryce Harper, batter
ORDER BY pitches.pitch_id ASC
