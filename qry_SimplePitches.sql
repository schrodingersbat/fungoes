select 
players.first,
players.last,
pitch_types.id,
pitches.pitch_type,
pitch_types.pitch,
pitches.ball,
pitches.strike,
pitches.type,
pitches.des,
atbats.event
FROM pitches
INNER JOIN pitch_types ON pitches.pitch_type = pitch_types.id
INNER JOIN atbats ON pitches.ab_id = atbats.ab_id
INNER JOIN players ON atbats.batter = players.eliasid
WHERE pitcher = 502188 #Jeff Samardzija

