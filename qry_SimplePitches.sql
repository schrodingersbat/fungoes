/***
This is a simple query that joins on pitch_types, atbats and players to reveal
non-coordinate Pitch f/x data on all Jeff Samardzija pitches.
***/
select 
pitches.pitch_id,
pitches.ab_id,
CONCAT(players.first, " ", players.last) as batter,
#pitch_types.id,
pitches.pitch_type,
pitch_types.pitch,
pitches.start_speed,
pitches.end_speed,
pitches.ball,
pitches.strike,
pitches.type,
pitches.des,
atbats.event,
atbats.hit_type
FROM pitches
right JOIN pitch_types ON pitches.pitch_type = pitch_types.id
right JOIN atbats ON pitches.ab_id = atbats.ab_id
right JOIN players ON atbats.batter = players.eliasid
WHERE pitcher = 502188 #Jeff Samardzija

