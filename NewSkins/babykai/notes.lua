-- Based on hanubeki 5.1-alpha6
-- EXTREMELY UNFINISHED, I HAVE NO IDEA WHAT I'M DOING
--[[ Not even sure I wanna base it off hanubeki anymore, because it seems precisely tailored to that skin's oddities
and not really useful as a universal noteskin script.]]

--[[ For convenience, I will tag anything that I haven't gone through,
via comments that say "KAI LEAVES" and "KAI COMES BACK"]]

local skin_name = Var("skin_name");
return function(button_list, stepstype, skin_parameters)
	local tapList = {
		-- Dance, Pump, Techno
		["Up"]		= {image = "step ortho", rotZ = 180, rotY = 0},	-- from down
		["Down"]	= {image = "step ortho", rotZ = 0, rotY = 0},
		["Left"]	= {image = "step ortho", rotZ = 90, rotY = 0},
		["Right"]	= {image = "step ortho", rotZ = 270, rotY = 0},
		["UpLeft"]	= {image = "step diag", rotZ = 0, rotY = 0},	-- from upleft
		["UpRight"]	= {image = "step diag", rotZ = 90, rotY = 0},
		["DownLeft"]	= {image = "step diag", rotZ = 270, rotY = 0},
		["DownRight"] 	= {image = "step diag", rotZ = 180, rotY = 0},
		["Center"]    	= {image = "step center", rotZ = 0, rotY = 0},
		-- Para (plus future 2-level para mode, maybe)
		["ParaUp"]	= {image = "hand para vert", rotZ = 0, rotY = 0},
		["ParaLeft"]	= {image = "hand para horiz", rotZ = 0, rotY = 0},		-- from left
		["ParaRight"]	= {image = "hand para vert", rotZ = 180, rotY = 0},
		["ParaUpLeft"]	= {image = "hand para upperdiag", rotZ = 0, rotY = 0},		-- from upleft
		["ParaUpRight"]	= {image = "hand para upperdiag", rotZ = 90, rotY = 0},
	--[[
		["ParaL1Up"]		= {image = "2para petal", rotZ = 0, rotY = 0},   -- from down
		["ParaL1Left"]		= {image = "2para petal", rotZ = 60, rotY = 0}
		["ParaL1Right"]		= {image = "2para petal", rotZ = 300, rotY = 0}
		["ParaL1UpLeft"]	= {image = "2para petal", rotZ = 30, rotY = 0}
		["ParaL1UpRight"]	= {image = "2para petal", rotZ = 330, rotY = 0}
		["ParaL2Up"]		= {image = "2para petal", rotZ = 180, rotY = 0}
		["ParaL2Left"]		= {image = "2para petal", rotZ = 120, rotY = 0}
		["ParaL2Right"]		= {image = "2para petal", rotZ = 240, rotY = 0}
		["ParaL2UpLeft"]	= {image = "2para petal", rotZ = 150, rotY = 0}
		["ParaL2UpRight"]	= {image = "2para petal", rotZ = 210, rotY = 0}
	]]	
		-- ez2, ds3ddx (dss eventually)
		["FootDown"]		= {image = "step ortho", rotZ = 0, rotY = 0},
		["FootUpLeft"]		= {image = "step diag", rotZ = 0, rotY = 0},
		["FootUpRight"]		= {image = "step diag", rotZ = 90, rotY = 0},
		["FootDownLeft"]	= {image = "step diag", rotZ = 270, rotY = 0},
		["FootDownRight"]	= {image = "step diag", rotZ = 180, rotY = 0},
	--	["FootCenter"]		= {image = "step center", rotZ = 0, rotY = 0}
		["HandUp"]		= {image = "hand chevron", rotZ = 0, rotY = 0}, 	-- all from up
		["HandDown"]		= {image = "hand chevron", rotZ = 180, rotY = 0},
		["HandLeft"]		= {image = "hand chevron", rotZ = 270, rotY = 0},
		["HandRight"]		= {image = "hand chevron", rotZ = 90, rotY = 0},
	--[[	eventual dss notes to be multiplexed with ds3ddx
		["HandUp"]		= {image = "hand neobloc vert", rotZ = 0, rotY = 0}
		["HandDown"]		= {image = "hand neobloc vert", rotZ = 180, rotY = 0}
		["HandLeft"]		= {image = "hand neobloc horiz", rotZ = 0, rotY = 0}
		["HandRight"]		= {image = "hand neobloc horiz", rotZ = 180, rotY = 0}
	]]
		["HandUpLeft"]		= {image = "hand circle", rotZ = 0, rotY = 0},
		["HandUpRight"]		= {image = "hand circle", rotZ = 0, rotY = 0},
		["HandLrLeft"]		= {image = "hand circle", rotZ = 0, rotY = 0},
		["HandLrRight"]		= {image = "hand circle", rotZ = 0, rotY = 0},
		-- kb7, beat
		["Key1"]		= {image = "key generic", rotZ = 0, rotY = 0},
		["Key2"]        	= {image = "key generic", rotZ = 0, rotY = 0},
		["Key3"]		= {image = "key generic", rotZ = 0, rotY = 0},
		if stepstype == "StepsType_Kb7_Single" then							-- update for ksmash
			["Key4"]		= {image = "key thumb", rotZ = 0, rotY = 0},
		else	
			["Key4"]		= {image = "key generic", rotZ = 0, rotY = 0},
		end
		["Key5"]		= {image = "key generic", rotZ = 0, rotY = 0},
		["Key6"]		= {image = "key generic", rotZ = 0, rotY = 0},
		["Key7"]		= {image = "key generic", rotZ = 0, rotY = 0},
		["Scratch"]		= {image = "scratch generic", rotZ = 0, rotY = 0},
		["Scratch up"]		= {image = "scratch up", rotZ = 0, rotY = 0},
		["Scratch down"]	= {image = "scratch down", rotZ = 0, rotY = 0},
		-- popn
		["Left White"]		= {image = "square", rotZ = 0, rotY = 0},
		["Left Yellow"]		= {image = "square", rotZ = 0, rotY = 0},
		["Left Green"]		= {image = "square", rotZ = 0, rotY = 0},
		["Left Blue"]		= {image = "square", rotZ = 0, rotY = 0},
		["Red"]			= {image = "square", rotZ = 0, rotY = 0},
		["Right Blue"]		= {image = "square", rotZ = 0, rotY = 0},
		["Right Green"]		= {image = "square", rotZ = 0, rotY = 0},
		["Right Yellow"]	= {image = "square", rotZ = 0, rotY = 0},
		["Right White"]		= {image = "square", rotZ = 0, rotY = 0},
		-- kickbox
		["DownLeftFoot"]	= {image = "kick", rotZ = 0, rotY = 180}, -- Down: blue
		["LeftFoot"]		= {image = "kick", rotZ = 0, rotY = 180}, -- Any:  yellow
		["UpLeftFoot"]		= {image = "kick", rotZ = 0, rotY = 180}, -- Up:   red
		["UpLeftFist"]		= {image = "punch", rotZ = 0, rotY = 180},
		["LeftFist"]		= {image = "punch", rotZ = 0, rotY = 180},
		["DownLeftFist"]	= {image = "punch", rotZ = 0, rotY = 180},
		["DownRightFist"]	= {image = "punch", rotZ = 0, rotY = 0},
		["RightFist"]		= {image = "punch", rotZ = 0, rotY = 0},
		["UpRightFist"]		= {image = "punch", rotZ = 0, rotY = 0},
		["UpRightFoot"]		= {image = "kick", rotZ = 0, rotY = 0},
		["RightFoot"]		= {image = "kick", rotZ = 0, rotY = 0},
		["DownRightFoot"]	= {image = "kick", rotZ = 0, rotY = 0},
	};

	-- *** KAI LEAVES ***
	
	setmetatable(tapList, {
		__index = function(table, key, value)
			return {image = "fallback", rotZ = 0, rotY = 0};
		end
	});

	local holdList = {
		-- Dance, Pump, Techno
		["Up"]        = {image = "down", flip = "TexCoordFlipMode_Y"},
		["Down"]      = {image = "down", flip = "TexCoordFlipMode_None"},
		["Left"]      = {image = "left", flip = "TexCoordFlipMode_None"},
		["Right"]     = {image = "left", flip = "TexCoordFlipMode_X"},
		["UpLeft"]    = {image = "upleft", flip = "TexCoordFlipMode_None"},
		["UpRight"]   = {image = "upleft", flip = "TexCoordFlipMode_X"},
		["DownLeft"]  = {image = "upleft", flip = "TexCoordFlipMode_Y"},
		["DownRight"] = {image = "upleft", flip = "TexCoordFlipMode_XY"},
		["Center"]    = {image = "center", flip = "TexCoordFlipMode_None"},
		-- Para
		["ParaUp"]      = {image = "paraup", flip = "TexCoordFlipMode_None"},
		["ParaLeft"]    = {image = "paraleft", flip = "TexCoordFlipMode_None"},
		["ParaRight"]   = {image = "paraleft", flip = "TexCoordFlipMode_X"},
		["ParaUpLeft"]  = {image = "paraupleft", flip = "TexCoordFlipMode_None"},
		["ParaUpRight"] = {image = "paraupleft", flip = "TexCoordFlipMode_X"},
		-- ez2, ds3ddx
		["FootDown"]      = {image = "down", flip = "TexCoordFlipMode_None"},
		["FootUpLeft"]    = {image = "upleft", flip = "TexCoordFlipMode_None"},
		["FootUpRight"]   = {image = "upleft", flip = "TexCoordFlipMode_X"},
		["FootDownLeft"]  = {image = "upleft", flip = "TexCoordFlipMode_Y"},
		["FootDownRight"] = {image = "upleft", flip = "TexCoordFlipMode_XY"},
		["HandUp"]        = {image = "handdown", flip = "TexCoordFlipMode_Y"},
		["HandDown"]      = {image = "handdown", flip = "TexCoordFlipMode_None"},
		["HandLeft"]      = {image = "handleft", flip = "TexCoordFlipMode_None"},
		["HandRight"]     = {image = "handleft", flip = "TexCoordFlipMode_X"},
		["HandUpLeft"]    = {image = "circle", flip = "TexCoordFlipMode_None"},
		["HandUpRight"]   = {image = "circle", flip = "TexCoordFlipMode_None"},
		["HandLrLeft"]    = {image = "circle", flip = "TexCoordFlipMode_None"},
		["HandLrRight"]   = {image = "circle", flip = "TexCoordFlipMode_None"},
		-- kb7, beat
		["Key1"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key2"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key3"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key4"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key5"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key6"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key7"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Scratch"]      = {image = "scratch", flip = "TexCoordFlipMode_None"},
		["Scratch up"]   = {image = "scratch", flip = "TexCoordFlipMode_None"},
		["Scratch down"] = {image = "scratch", flip = "TexCoordFlipMode_None"},
		-- popn
		["Left White"]   = {image = "square", flip = "TexCoordFlipMode_None"},
		["Left Yellow"]  = {image = "square", flip = "TexCoordFlipMode_None"},
		["Left Green"]   = {image = "square", flip = "TexCoordFlipMode_None"},
		["Left Blue"]    = {image = "square", flip = "TexCoordFlipMode_None"},
		["Red"]          = {image = "square", flip = "TexCoordFlipMode_None"},
		["Right Blue"]   = {image = "square", flip = "TexCoordFlipMode_None"},
		["Right Green"]  = {image = "square", flip = "TexCoordFlipMode_None"},
		["Right Yellow"] = {image = "square", flip = "TexCoordFlipMode_None"},
		["Right White"]  = {image = "square", flip = "TexCoordFlipMode_None"},
		-- kickbox
		["DownLeftFoot"]  = {image = "kick", flip = "TexCoordFlipMode_X"},
		["LeftFoot"]      = {image = "kick", flip = "TexCoordFlipMode_X"},
		["UpLeftFoot"]    = {image = "kick", flip = "TexCoordFlipMode_X"},
		["UpLeftFist"]    = {image = "punch", flip = "TexCoordFlipMode_X"},
		["LeftFist"]      = {image = "punch", flip = "TexCoordFlipMode_X"},
		["DownLeftFist"]  = {image = "punch", flip = "TexCoordFlipMode_X"},
		["DownRightFist"] = {image = "punch", flip = "TexCoordFlipMode_None"},
		["RightFist"]     = {image = "punch", flip = "TexCoordFlipMode_None"},
		["UpRightFist"]   = {image = "punch", flip = "TexCoordFlipMode_None"},
		["UpRightFoot"]   = {image = "kick", flip = "TexCoordFlipMode_None"},
		["RightFoot"]     = {image = "kick", flip = "TexCoordFlipMode_None"},
		["DownRightFoot"] = {image = "kick", flip = "TexCoordFlipMode_None"},
	};

	setmetatable(holdList, {
		__index = function(table, key, value)
			return {image = "fallback", flip = "TexCoordFlipMode_None"};
		end
	});

	local reverseHoldList = {
		-- Dance, Pump, Techno
		["Up"]        = {image = "down", flip = "TexCoordFlipMode_None"},
		["Down"]      = {image = "down", flip = "TexCoordFlipMode_Y"},
		["Left"]      = {image = "left", flip = "TexCoordFlipMode_Y"},
		["Right"]     = {image = "left", flip = "TexCoordFlipMode_XY"},
		["UpLeft"]    = {image = "upleft", flip = "TexCoordFlipMode_Y"},
		["UpRight"]   = {image = "upleft", flip = "TexCoordFlipMode_XY"},
		["DownLeft"]  = {image = "upleft", flip = "TexCoordFlipMode_None"},
		["DownRight"] = {image = "upleft", flip = "TexCoordFlipMode_X"},
		["Center"]    = {image = "center", flip = "TexCoordFlipMode_Y"},
		-- Para
		["ParaUp"]      = {image = "paraup", flip = "TexCoordFlipMode_Y"},
		["ParaLeft"]    = {image = "paraleft", flip = "TexCoordFlipMode_Y"},
		["ParaRight"]   = {image = "paraleft", flip = "TexCoordFlipMode_XY"},
		["ParaUpLeft"]  = {image = "paraupleft", flip = "TexCoordFlipMode_Y"},
		["ParaUpRight"] = {image = "paraupleft", flip = "TexCoordFlipMode_XY"},
		-- ez2, ds3ddx
		["FootDown"]      = {image = "down", flip = "TexCoordFlipMode_Y"},
		["FootUpLeft"]    = {image = "upleft", flip = "TexCoordFlipMode_Y"},
		["FootUpRight"]   = {image = "upleft", flip = "TexCoordFlipMode_XY"},
		["FootDownLeft"]  = {image = "upleft", flip = "TexCoordFlipMode_None"},
		["FootDownRight"] = {image = "upleft", flip = "TexCoordFlipMode_X"},
		["HandUp"]        = {image = "handdown", flip = "TexCoordFlipMode_None"},
		["HandDown"]      = {image = "handdown", flip = "TexCoordFlipMode_Y"},
		["HandLeft"]      = {image = "handleft", flip = "TexCoordFlipMode_Y"},
		["HandRight"]     = {image = "handleft", flip = "TexCoordFlipMode_XY"},
		["HandUpLeft"]    = {image = "circle", flip = "TexCoordFlipMode_Y"},
		["HandUpRight"]   = {image = "circle", flip = "TexCoordFlipMode_Y"},
		["HandLrLeft"]    = {image = "circle", flip = "TexCoordFlipMode_Y"},
		["HandLrRight"]   = {image = "circle", flip = "TexCoordFlipMode_Y"},
		-- kb7, beat
		["Key1"]         = {image = "key", flip = "TexCoordFlipMode_Y"},
		["Key2"]         = {image = "key", flip = "TexCoordFlipMode_Y"},
		["Key3"]         = {image = "key", flip = "TexCoordFlipMode_Y"},
		["Key4"]         = {image = "key", flip = "TexCoordFlipMode_Y"},
		["Key5"]         = {image = "key", flip = "TexCoordFlipMode_Y"},
		["Key6"]         = {image = "key", flip = "TexCoordFlipMode_Y"},
		["Key7"]         = {image = "key", flip = "TexCoordFlipMode_Y"},
		["Scratch"]      = {image = "scratch", flip = "TexCoordFlipMode_Y"},
		["Scratch up"]   = {image = "scratch", flip = "TexCoordFlipMode_Y"},
		["Scratch down"] = {image = "scratch", flip = "TexCoordFlipMode_Y"},
		-- popn
		["Left White"]   = {image = "square", flip = "TexCoordFlipMode_Y"},
		["Left Yellow"]  = {image = "square", flip = "TexCoordFlipMode_Y"},
		["Left Green"]   = {image = "square", flip = "TexCoordFlipMode_Y"},
		["Left Blue"]    = {image = "square", flip = "TexCoordFlipMode_Y"},
		["Red"]          = {image = "square", flip = "TexCoordFlipMode_Y"},
		["Right Blue"]   = {image = "square", flip = "TexCoordFlipMode_Y"},
		["Right Green"]  = {image = "square", flip = "TexCoordFlipMode_Y"},
		["Right Yellow"] = {image = "square", flip = "TexCoordFlipMode_Y"},
		["Right White"]  = {image = "square", flip = "TexCoordFlipMode_Y"},
		-- kickbox
		["DownLeftFoot"]  = {image = "kick", flip = "TexCoordFlipMode_XY"},
		["LeftFoot"]      = {image = "kick", flip = "TexCoordFlipMode_XY"},
		["UpLeftFoot"]    = {image = "kick", flip = "TexCoordFlipMode_XY"},
		["UpLeftFist"]    = {image = "punch", flip = "TexCoordFlipMode_XY"},
		["LeftFist"]      = {image = "punch", flip = "TexCoordFlipMode_XY"},
		["DownLeftFist"]  = {image = "punch", flip = "TexCoordFlipMode_XY"},
		["DownRightFist"] = {image = "punch", flip = "TexCoordFlipMode_Y"},
		["RightFist"]     = {image = "punch", flip = "TexCoordFlipMode_Y"},
		["UpRightFist"]   = {image = "punch", flip = "TexCoordFlipMode_Y"},
		["UpRightFoot"]   = {image = "kick", flip = "TexCoordFlipMode_Y"},
		["RightFoot"]     = {image = "kick", flip = "TexCoordFlipMode_Y"},
		["DownRightFoot"] = {image = "kick", flip = "TexCoordFlipMode_Y"},
	};

	setmetatable(reverseHoldList, {
		__index = function(table, key, value)
			return {image = "fallback", flip = "TexCoordFlipMode_Y"};
		end
	});

	local rollList = {
		-- Dance, Pump, Techno
		["Up"]        = {image = "up", flip = "TexCoordFlipMode_None"},
		["Down"]      = {image = "down", flip = "TexCoordFlipMode_None"},
		["Left"]      = {image = "left", flip = "TexCoordFlipMode_None"},
		["Right"]     = {image = "left", flip = "TexCoordFlipMode_X"},
		["UpLeft"]    = {image = "upleft", flip = "TexCoordFlipMode_None"},
		["UpRight"]   = {image = "upleft", flip = "TexCoordFlipMode_X"},
		["DownLeft"]  = {image = "downleft", flip = "TexCoordFlipMode_None"},
		["DownRight"] = {image = "downleft", flip = "TexCoordFlipMode_X"},
		["Center"]    = {image = "center", flip = "TexCoordFlipMode_None"},
		-- Para
		["ParaUp"]      = {image = "paraup", flip = "TexCoordFlipMode_None"},
		["ParaLeft"]    = {image = "paraleft", flip = "TexCoordFlipMode_None"},
		["ParaRight"]   = {image = "paraleft", flip = "TexCoordFlipMode_X"},
		["ParaUpLeft"]  = {image = "paraupleft", flip = "TexCoordFlipMode_None"},
		["ParaUpRight"] = {image = "paraupleft", flip = "TexCoordFlipMode_X"},
		-- ez2, ds3ddx
		["FootDown"]      = {image = "down", flip = "TexCoordFlipMode_None"},
		["FootUpLeft"]    = {image = "upleft", flip = "TexCoordFlipMode_None"},
		["FootUpRight"]   = {image = "upleft", flip = "TexCoordFlipMode_X"},
		["FootDownLeft"]  = {image = "downleft", flip = "TexCoordFlipMode_None"},
		["FootDownRight"] = {image = "downleft", flip = "TexCoordFlipMode_X"},
		["HandUp"]        = {image = "handup", flip = "TexCoordFlipMode_None"},
		["HandDown"]      = {image = "handdown", flip = "TexCoordFlipMode_None"},
		["HandLeft"]      = {image = "handleft", flip = "TexCoordFlipMode_None"},
		["HandRight"]     = {image = "handleft", flip = "TexCoordFlipMode_X"},
		["HandUpLeft"]    = {image = "circle", flip = "TexCoordFlipMode_None"},
		["HandUpRight"]   = {image = "circle", flip = "TexCoordFlipMode_None"},
		["HandLrLeft"]    = {image = "circle", flip = "TexCoordFlipMode_None"},
		["HandLrRight"]   = {image = "circle", flip = "TexCoordFlipMode_None"},
		-- kb7, beat
		["Key1"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key2"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key3"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key4"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key5"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key6"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key7"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Scratch"]      = {image = "scratch", flip = "TexCoordFlipMode_None"},
		["Scratch up"]   = {image = "scratch", flip = "TexCoordFlipMode_None"},
		["Scratch down"] = {image = "scratch", flip = "TexCoordFlipMode_None"},
		-- popn
		["Left White"]   = {image = "square", flip = "TexCoordFlipMode_None"},
		["Left Yellow"]  = {image = "square", flip = "TexCoordFlipMode_None"},
		["Left Green"]   = {image = "square", flip = "TexCoordFlipMode_None"},
		["Left Blue"]    = {image = "square", flip = "TexCoordFlipMode_None"},
		["Red"]          = {image = "square", flip = "TexCoordFlipMode_None"},
		["Right Blue"]   = {image = "square", flip = "TexCoordFlipMode_None"},
		["Right Green"]  = {image = "square", flip = "TexCoordFlipMode_None"},
		["Right Yellow"] = {image = "square", flip = "TexCoordFlipMode_None"},
		["Right White"]  = {image = "square", flip = "TexCoordFlipMode_None"},
		-- kickbox
		["DownLeftFoot"]  = {image = "kick", flip = "TexCoordFlipMode_X"},
		["LeftFoot"]      = {image = "kick", flip = "TexCoordFlipMode_X"},
		["UpLeftFoot"]    = {image = "kick", flip = "TexCoordFlipMode_X"},
		["UpLeftFist"]    = {image = "punch", flip = "TexCoordFlipMode_X"},
		["LeftFist"]      = {image = "punch", flip = "TexCoordFlipMode_X"},
		["DownLeftFist"]  = {image = "punch", flip = "TexCoordFlipMode_X"},
		["DownRightFist"] = {image = "punch", flip = "TexCoordFlipMode_None"},
		["RightFist"]     = {image = "punch", flip = "TexCoordFlipMode_None"},
		["UpRightFist"]   = {image = "punch", flip = "TexCoordFlipMode_None"},
		["UpRightFoot"]   = {image = "kick", flip = "TexCoordFlipMode_None"},
		["RightFoot"]     = {image = "kick", flip = "TexCoordFlipMode_None"},
		["DownRightFoot"] = {image = "kick", flip = "TexCoordFlipMode_None"},
	};

	setmetatable(rollList, {
		__index = function(table, key, value)
			return {image = "fallback", flip = "TexCoordFlipMode_None"};
		end
	});

	local reverseRollList = {
		-- Dance, Pump, Techno
		["Up"]        = {image = "down", flip = "TexCoordFlipMode_None"},
		["Down"]      = {image = "up", flip = "TexCoordFlipMode_None"},
		["Left"]      = {image = "left", flip = "TexCoordFlipMode_None"},
		["Right"]     = {image = "left", flip = "TexCoordFlipMode_X"},
		["UpLeft"]    = {image = "downleft", flip = "TexCoordFlipMode_None"},
		["UpRight"]   = {image = "downleft", flip = "TexCoordFlipMode_X"},
		["DownLeft"]  = {image = "upleft", flip = "TexCoordFlipMode_None"},
		["DownRight"] = {image = "upleft", flip = "TexCoordFlipMode_X"},
		["Center"]    = {image = "center", flip = "TexCoordFlipMode_None"},
		-- Para
		["ParaUp"]      = {image = "paradown", flip = "TexCoordFlipMode_None"},
		["ParaLeft"]    = {image = "paraleft", flip = "TexCoordFlipMode_None"},
		["ParaRight"]   = {image = "paraleft", flip = "TexCoordFlipMode_X"},
		["ParaUpLeft"]  = {image = "paradownleft", flip = "TexCoordFlipMode_None"},
		["ParaUpRight"] = {image = "paradownleft", flip = "TexCoordFlipMode_X"},
		-- ez2, ds3ddx
		["FootDown"]      = {image = "up", flip = "TexCoordFlipMode_None"},
		["FootUpLeft"]    = {image = "downleft", flip = "TexCoordFlipMode_None"},
		["FootUpRight"]   = {image = "downleft", flip = "TexCoordFlipMode_X"},
		["FootDownLeft"]  = {image = "upleft", flip = "TexCoordFlipMode_None"},
		["FootDownRight"] = {image = "upleft", flip = "TexCoordFlipMode_X"},
		["HandUp"]        = {image = "handdown", flip = "TexCoordFlipMode_None"},
		["HandDown"]      = {image = "handup", flip = "TexCoordFlipMode_None"},
		["HandLeft"]      = {image = "handleft", flip = "TexCoordFlipMode_None"},
		["HandRight"]     = {image = "handleft", flip = "TexCoordFlipMode_X"},
		["HandUpLeft"]    = {image = "circle", flip = "TexCoordFlipMode_None"},
		["HandUpRight"]   = {image = "circle", flip = "TexCoordFlipMode_None"},
		["HandLrLeft"]    = {image = "circle", flip = "TexCoordFlipMode_None"},
		["HandLrRight"]   = {image = "circle", flip = "TexCoordFlipMode_None"},
		-- kb7, beat
		["Key1"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key2"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key3"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key4"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key5"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key6"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Key7"]         = {image = "key", flip = "TexCoordFlipMode_None"},
		["Scratch"]      = {image = "scratch", flip = "TexCoordFlipMode_None"},
		["Scratch up"]   = {image = "scratch", flip = "TexCoordFlipMode_None"},
		["Scratch down"] = {image = "scratch", flip = "TexCoordFlipMode_None"},
		-- popn
		["Left White"]   = {image = "square", flip = "TexCoordFlipMode_None"},
		["Left Yellow"]  = {image = "square", flip = "TexCoordFlipMode_None"},
		["Left Green"]   = {image = "square", flip = "TexCoordFlipMode_None"},
		["Left Blue"]    = {image = "square", flip = "TexCoordFlipMode_None"},
		["Red"]          = {image = "square", flip = "TexCoordFlipMode_None"},
		["Right Blue"]   = {image = "square", flip = "TexCoordFlipMode_None"},
		["Right Green"]  = {image = "square", flip = "TexCoordFlipMode_None"},
		["Right Yellow"] = {image = "square", flip = "TexCoordFlipMode_None"},
		["Right White"]  = {image = "square", flip = "TexCoordFlipMode_None"},
		-- kickbox
		["DownLeftFoot"]  = {image = "reversekick", flip = "TexCoordFlipMode_X"},
		["LeftFoot"]      = {image = "reversekick", flip = "TexCoordFlipMode_X"},
		["UpLeftFoot"]    = {image = "reversekick", flip = "TexCoordFlipMode_X"},
		["UpLeftFist"]    = {image = "reversepunch", flip = "TexCoordFlipMode_X"},
		["LeftFist"]      = {image = "reversepunch", flip = "TexCoordFlipMode_X"},
		["DownLeftFist"]  = {image = "reversepunch", flip = "TexCoordFlipMode_X"},
		["DownRightFist"] = {image = "reversepunch", flip = "TexCoordFlipMode_None"},
		["RightFist"]     = {image = "reversepunch", flip = "TexCoordFlipMode_None"},
		["UpRightFist"]   = {image = "reversepunch", flip = "TexCoordFlipMode_None"},
		["UpRightFoot"]   = {image = "reversekick", flip = "TexCoordFlipMode_None"},
		["RightFoot"]     = {image = "reversekick", flip = "TexCoordFlipMode_None"},
		["DownRightFoot"] = {image = "reversekick", flip = "TexCoordFlipMode_None"},
	};

	setmetatable(reverseRollList, {
		__index = function(table, key, value)
			return {image = "fallback", flip = "TexCoordFlipMode_None"};
		end
	});

	local columnWidth = {
		-- dance: 64 per column
		StepsType_Dance_Single = {64, 64, 64, 64},
		StepsType_Dance_Double = {64, 64, 64, 64, 64, 64, 64, 64},
		StepsType_Dance_Couple = {64, 64, 64, 64, 64, 64, 64, 64},
		StepsType_Dance_Solo = {64, 48, 64, 64, 48, 64},
		StepsType_Dance_Threepanel = {64, 64, 64},
		StepsType_Dance_Routine = {64, 64, 64, 64, 64, 64, 64, 64},

		-- pump: 50 per column (2px double margin)
		StepsType_Pump_Single = {50, 50, 50, 50, 50},
		StepsType_Pump_Halfdouble = {50, 50, 50, 50, 50, 50},
		StepsType_Pump_Double = {50, 50, 50, 50, 50, 50, 50, 50, 50, 50},
		StepsType_Pump_Couple = {50, 50, 50, 50, 50, 50, 50, 50, 50, 50},
		StepsType_Pump_Routine = {50, 50, 50, 50, 50, 50, 50, 50, 50, 50},

		-- kb7: 64 per column w/96 thumb key
		StepsType_Kb7_Single = {64, 64, 64, 96, 64, 64, 64},

		-- ez2: inaccurate
		StepsType_Ez2_Single = {44, 44, 44, 44, 44},
		StepsType_Ez2_Double = {44, 44, 44, 44, 44, 44, 44, 44, 44, 44},
		StepsType_Ez2_Real = {44, 44, 44, 44, 44, 44, 44},

		-- para: 55 per column
		StepsType_Para_Single = {55, 55, 55, 55, 55},

		-- ds3ddx: inaccurate
		StepsType_Ds3ddx_Single = {36, 44, 44, 40, 40, 44, 44, 36},

		-- beat: scratch = 64, key = 32 (SM5 style)
		StepsType_Beat_Single5 = {64, 32, 32, 32, 32, 32},
		StepsType_Beat_Versus5 = {64, 32, 32, 32, 32, 32},
		StepsType_Beat_Double5 = {64, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64},
		StepsType_Beat_Single7 = {64, 32, 32, 32, 32, 32, 32, 32},
		StepsType_Beat_Versus7 = {64, 32, 32, 32, 32, 32, 32, 32},
		StepsType_Beat_Double7 = {64, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64},

		-- bm: alias for beat
		StepsType_Bm_Single5 = {64, 32, 32, 32, 32, 32},
		StepsType_Bm_Versus5 = {64, 32, 32, 32, 32, 32},
		StepsType_Bm_Double5 = {64, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64},
		StepsType_Bm_Single7 = {64, 32, 32, 32, 32, 32, 32, 32},
		StepsType_Bm_Versus7 = {64, 32, 32, 32, 32, 32, 32, 32},
		StepsType_Bm_Double7 = {64, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 64},

		-- maniax: 32 per column (4px double margin)
		StepsType_Maniax_Single = {32, 32, 32, 32},
		StepsType_Maniax_Double = {32, 32, 32, 32, 32, 32, 32, 32},

		-- techno: inaccurate
		StepsType_Techno_Single4 = {70, 70, 70, 70},
		StepsType_Techno_Single5 = {56, 56, 56, 56, 56},
		StepsType_Techno_Single8 = {56, 56, 56, 56, 56, 56, 56, 56},
		StepsType_Techno_Double4 = {70, 70, 70, 70, 70, 70, 70, 70},
		StepsType_Techno_Double5 = {56, 56, 56, 56, 56, 56, 56, 56, 56, 56},
		StepsType_Techno_Double8 = {56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56},

		-- popn: not streched in 5buttons
		StepsType_Popn_Five = {32, 32, 32, 32, 32}, -- {36, 30, 36, 30, 36}
		StepsType_Popn_Nine = {32, 32, 32, 32, 32, 32, 32, 32, 32}, -- {36, 30, 36, 30, 36, 30, 36, 30, 36}

		-- pnm: alias for popn
		StepsType_Pnm_Five = {32, 32, 32, 32, 32}, -- {36, 30, 36, 30, 36}
		StepsType_Pnm_Nine = {32, 32, 32, 32, 32, 32, 32, 32, 32}, -- {36, 30, 36, 30, 36, 30, 36, 30, 36}

		-- lights: is not game
		StepsType_Lights_Cabinet = {64, 64, 64, 64, 64, 64, 64, 64},

		-- kickbox: 64 per column
		StepsType_Kickbox_Human = {64, 64, 64, 64},
		StepsType_Kickbox_Quadarm = {64, 64, 64, 64},
		StepsType_Kickbox_Insect = {64, 64, 64, 64, 64, 64},
		StepsType_Kickbox_Arachnid = {64, 64, 64, 64, 64, 64, 64, 64},
	};

	setmetatable(columnWidth, {
		__index = function(table, key, value)
			return {};
		end
	});

-- *** KAI COMES BACK ***
	
	local columnPadding = {
		-- ez2: inaccurate
		StepsType_Ez2_Real = {0, -24, 0, 0, 0, -24, 0},

		-- kb7: no more lonely thumb
		StepsType_Kb7_Single = {0, 0, 0, 0, 0, 0, 0},

		-- ds3ddx: overlap HandUp/HandDown
		StepsType_Ds3ddx_Single = {40, -40, 40, -40, -40, 40, -40, 40},
		
		-- dss: i have no fucking idea.
--		StepsType_Dss_Single = {?, ?, ?, ?, ?, ?, ?, ?, ?},
--		StepsType_Dss_Versus = {?, ?, ?, ?, ?, ?, ?, ?, ?},
--		StepsType_Dss_Double = {?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?},

		-- popn
		StepsType_Popn_Five = {2, 2, 2, 2, 2}, -- {2, 0, 2, 0, 2}
		StepsType_Popn_Nine = {2, 2, 2, 2, 2, 2, 2, 2, 2}, -- {2, 0, 2, 0, 2, 0, 2, 0, 2}

		-- pnm: alias for popn
		StepsType_Pnm_Five = {2, 2, 2, 2, 2}, -- {2, 0, 2, 0, 2}
		StepsType_Pnm_Nine = {2, 2, 2, 2, 2, 2, 2, 2, 2}, -- {2, 0, 2, 0, 2, 0, 2, 0, 2}
	};

	setmetatable(columnPadding, {
		__index = function(table, key, value)
			return {};
		end
	});

--[[
Column Color Reference for "tap_xxx_arrow":
	3: Hot Pink 	(dance verts)
	7: Neon Green	(dance diags, techno horiz)
	11: Baby Blue	(dance horiz)
	15: Apple Red	(ez2 diags, pump upper, ds3ddx upper)
	19: Cream Yellow(ez2 down)
	23: Azure		(pump/ds3ddx/dss/techno lower diags)
	27: Red		(techno/dss upper diags)
	31: Yellow		(techno verts)	
	35: Reserved - Reflex Spice
	39: Reserved - Reflex Purple
	43: Reserved - Reflex Spice
	47: Reserved - Reflex Purple
	51: Reserved - Reflex Spice
	55: Reserved - Reflex Purple
	59: Reserved - Reflex Spice
	63: Reserved - Reflex Purple
	
	This pattern is repeated in both images just for consistency.
]]
	local columnColorList = {
		-- dance: be free from your prison of red!
		StepsType_Dance_Single = {11, 3, 3, 11},
		StepsType_Dance_Double = {11, 3, 3, 11, 11, 3, 3, 11},
		StepsType_Dance_Couple = {11, 3, 3, 11, 11, 3, 3, 11},
		StepsType_Dance_Solo = {11, 7, 3, 3, 7, 11},
		StepsType_Dance_Threepanel = {7, 3, 7},
		StepsType_Dance_Routine = {11, 3, 3, 11, 11, 3, 3, 11},

		-- pump: tap_center has only gold at 43, and dss yellow at 39.
		StepsType_Pump_Single = {23, 15, 43, 15, 23},
		StepsType_Pump_Halfdouble = {43, 15, 23, 23, 15, 43},
		StepsType_Pump_Double = {23, 15, 43, 15, 23, 23, 15, 43, 15, 23},
		StepsType_Pump_Couple = {23, 15, 43, 1, 23, 23, 15, 43, 15, 23},
		StepsType_Pump_Routine = {23, 15, 43, 1, 23, 23, 15, 43, 15, 23},
		
		-- ez2: circles have upper blue (3) and lower green (7)
		StepsType_Ez2_Single = {15, 3, 19, 3, 15},
		StepsType_Ez2_Double = {15, 3, 19, 3, 15, 15, 3, 7, 3, 15},
		StepsType_Ez2_Real = {15, 7, 3, 19, 3, 7, 15},

		-- para: all magenta (3). Azure (7), Gold (11), and Green (15) exist for future plans.
		StepsType_Para_Single = {3, 3, 3, 3, 3},
--		StepsType_Para_Real = {3, 7, 3, 7, 3, 7, 3, 7, 3, 7},
--		StepsType_Para_Surround = {11, 3, 3, 11, 3, 3, 3, 11},
--		StepsType_Para_Exhibition = {3, 11, 11, 11, 3},
--		StepsType_Para_ExReal = {3, 7, 11, 15, 11, 15, 11, 15, 3, 7},

		-- ds3ddx: hands have orange (3) and green (7)
		StepsType_Ds3ddx_Single = {3, 23, 15, 7, 7, 15, 23, 3},
		
		-- dss: i'll deal with you later.
--		StepsType_DSS_Single = {3, 23, 15, 7, 39, 7, 15, 23, 3},
--		StepsType_DSS_Double = {3, 23, 15, 7, 39, 7, 15, 23, 3, 3, 23, 15, 7, 39, 7, 15, 23, 3}
--		StepsType_DSS_Routine = {3, 23, 15, 7, 39, 7, 15, 23, 3, 3, 23, 15, 7, 39, 7, 15, 23, 3}
		
		-- techno
		StepsType_Techno_Single4 = {5, 31, 31, 5},
		StepsType_Techno_Single5 = {3, 1, 13, 1, 3},
		StepsType_Techno_Single8 = {3, 5, 1, 7, 7, 1, 5, 3},
		StepsType_Techno_Double4 = {5, 7, 7, 5, 5, 7, 7, 5},
		StepsType_Techno_Double5 = {3, 1, 13, 1, 3, 3, 1, 13, 1, 3},
		StepsType_Techno_Double8 = {3, 5, 1, 7, 7, 1, 5, 3, 3, 5, 1, 7, 7, 1, 5, 3},

--[[
Column Color Reference for "key_generic" & "key_thumb":
	3: Off-White	(beat light, kb7 index/ring, ksmash left hand)
	7: Midnite Blue	(beat dark)
	11: Cool Blue	(kb7 middle, ksmash right hand)
	15: Purple	(ksmash both)
	19: Goldenrod	(kb7 thumb)
	23: Pop'n Red
	27: Pop'n Blue
	31: Pop'n Green
	35: Pop'n Yellow
	39: Pop'n White
	43: Reserved - Reflex Charcoal
	47: Reserved - Reflex Green
	51: Reserved - Reflex Charcoal
	55: Reserved - Reflex Green
	59: Reserved - Reflex Charcoal
	63: Reserved - Reflex Green
	]]		
		-- kb7
		StepsType_Kb7_Single = {3, 11, 3, 19, 3, 11, 3},
		
		-- beat: "scratch" has only one functional color at 63, although 51/55/59 have DJ Hero colors (here's hoping)
		StepsType_Beat_Single5 = {63, 3, 7, 3, 7, 3},
		StepsType_Beat_Versus5 = {63, 3, 7, 3, 7, 3},
		StepsType_Beat_Double5 = {63, 3, 7, 3, 7, 3, 3, 7, 3, 7, 3, 63},
		StepsType_Beat_Single7 = {63, 3, 7, 3, 7, 3, 7, 3},
		StepsType_Beat_Versus7 = {63, 3, 7, 3, 7, 3, 7, 3},
		StepsType_Beat_Double7 = {63, 3, 7, 3, 7, 3, 7, 3, 3, 7, 3, 7, 3, 7, 3, 63},

		-- bm: alias for beat
		StepsType_Bm_Single5 = {63, 3, 7, 3, 7, 3},
		StepsType_Bm_Versus5 = {63, 3, 7, 3, 7, 3},
		StepsType_Bm_Double5 = {63, 3, 7, 3, 7, 3, 3, 7, 3, 7, 3, 63},
		StepsType_Bm_Single7 = {63, 3, 7, 3, 7, 3, 7, 3},
		StepsType_Bm_Versus7 = {63, 3, 7, 3, 7, 3, 7, 3},
		StepsType_Bm_Double7 = {63, 3, 7, 3, 7, 3, 7, 3, 3, 7, 3, 7, 3, 7, 3, 63},

		-- maniax: magenta/azure
		StepsType_Maniax_Single = {3, 7, 7, 3},
		StepsType_Maniax_Double = {3, 7, 7, 3, 3, 7, 7, 3},

-- *** KAI LEAVES ***
		
		-- popn
		StepsType_Popn_Five = {5, 3, 1, 3, 5},
		StepsType_Popn_Nine = {17, 7, 5, 3, 1, 3, 5, 7, 17},

		-- pnm: alias for popn
		StepsType_Pnm_Five = {5, 3, 1, 3, 5},
		StepsType_Pnm_Nine = {17, 7, 5, 3, 1, 3, 5, 7, 17},

		-- lights: is not game
		StepsType_Lights_Cabinet = {1, 1, 1, 1, 1, 1, 1, 1},

		-- kickbox
		StepsType_Kickbox_Human = {7, 7, 7, 7},
		StepsType_Kickbox_Quadarm = {1, 3, 3, 1},
		StepsType_Kickbox_Insect = {7, 1, 3, 3, 1, 7},
		StepsType_Kickbox_Arachnid = {3, 1, 1, 3, 3, 1, 1, 3},
	};

	setmetatable(columnColorList, {
		__index = function(table, key, value)
			return {};
		end
	});


	local mineZoomList = {
		-- beat: *0.5
		StepsType_Beat_Single5 = 0.5,
		StepsType_Beat_Versus5 = 0.5,
		StepsType_Beat_Double5 = 0.5,
		StepsType_Beat_Single7 = 0.5,
		StepsType_Beat_Versus7 = 0.5,
		StepsType_Beat_Double7 = 0.5,

		-- bm: alias for beat
		StepsType_Bm_Single5 = 0.5,
		StepsType_Bm_Versus5 = 0.5,
		StepsType_Bm_Double5 = 0.5,
		StepsType_Bm_Single7 = 0.5,
		StepsType_Bm_Versus7 = 0.5,
		StepsType_Bm_Double7 = 0.5,

		-- maniax: *0.5
		StepsType_Maniax_Single = 0.5,
		StepsType_Maniax_Double = 0.5,

		-- popn: not streched in 5buttons
		StepsType_Popn_Five = 0.5,
		StepsType_Popn_Nine = 0.5,

		-- pnm: alias for popn
		StepsType_Pnm_Five = 0.5,
		StepsType_Pnm_Nine = 0.5,
	};

	setmetatable(mineZoomList, {
		__index = function(table, key, value)
			return 1;
		end
	});

-- *** KAI COMES BACK ***

	local tapState = {
		parts_per_beat = 5040,				-- fucking ridiculous
		quanta = {
			{per_beat = 1, states = {1}},	-- 2nd, Red
			{per_beat = 2, states = {5}},	-- 4th, Blue
			{per_beat = 4, states = {9}},	-- 8th, Green
			{per_beat = 5, states = {13}},	-- 10th, Lavender
			{per_beat = 6, states = {17}},	-- 12th, Violet
			{per_beat = 7, states = {21}},	-- 14th, Brown
			{per_beat = 8, states = {25}},	-- 16th, Yellow
			{per_beat = 9, states = {29}},	-- 18th, Pink
			{per_beat = 10, states = {33}}, -- 20th, Chartreuse
			{per_beat = 12, states = {37}}, -- 24th, Orange
			{per_beat = 14, states = {41}}, -- 28th, Navy Blue
			{per_beat = 16, states = {45}}, -- 32nd, Cyan
			{per_beat = 18, states = {49}}, -- 36th, Teal
			{per_beat = 24, states = {53}}, -- 48th, Fuchsia
			-- fallbacks are white and gray, which alternate until the noteskin gets back to a "known" quant.
			-- although, I have to question why I'm still doing that after I made all these weird quants.
			-- maybe I should make one with the extra quants, and one without.
		},
	};

--[[	if skin_parameters.new_quants == false then						^ Something like this maybe?
		tapState = {
			parts_per_beat = 48,
			quanta = {
				{per_beat = 1, states = {1}},	-- 2nd
				{per_beat = 2, states = {5}},	-- 4th
				{per_beat = 4, states = {9}},	-- 8th
				{per_beat = 6, states = {17}},	-- 12th
				{per_beat = 8, states = {25}},	-- 16th
				{per_beat = 12, states = {37}}, -- 24th
				{per_beat = 16, states = {45}}, -- 32nd
				{per_beat = 24, states = {53}}, -- 48th
			},
		};
	end]]

	local mineState = {										-- Note to self: learn how to control quantized mines
		parts_per_beat = 1,									-- Mines need to respond to a "variant" skin parameter, to toggle quantization of mines.
		quanta = {{per_beat = 1, states = {1}}}				--[[ They also need to respond to the "new_quants" parameter, 
															so that they use the quantization mode that the user has specified.]]
	};

	local liftState = DeepCopy(tapState)
	for i, quanta in ipairs(liftState.quanta) do				--[[ Is the right way of pointing to Lift States
																that are one up from the tap states?]]
		quanta.states[1]= quanta.states[1] + 1
	end

	local activeState = {												-- Don't think I'll use quantized holds/rolls
		parts_per_beat = 1, quanta = {{per_beat = 1, states = {1}}}
	};

	local inactiveState = {
		parts_per_beat = 1, quanta = {{per_beat = 1, states = {3}}}
	};

-- *** KAI LEAVES ***
	
	local columns = {};
	for i, button in ipairs(button_list) do
		local noteType = skin_parameters and skin_parameters.note_type or "Normal";
		local colorType = skin_parameters and skin_parameters.color_type or "Quantize";

		local tap = tapList[button];
		local hold = holdList[button];
		local reverseHold = reverseHoldList[button];
		local roll = rollList[button];
		local reverseRoll = reverseRollList[button];
		local mineZoom = mineZoomList[stepstype];

		if stepstype == "StepsType_Maniax_Single" or stepstype == "StepsType_Maniax_Double" then
			tap = {image = "ring", rotZ = 0, rotY = 0};
			hold = {image = "ring", flip = "TexCoordFlipMode_None"};
			reverseHold = {image = "ring", flip = "TexCoordFlipMode_Y"};
			roll = {image = "ring", flip = "TexCoordFlipMode_None"};
			reverseRoll = {image = "ring", flip = "TexCoordFlipMode_None"};
		end

		if stepstype == "StepsType_Kb7_Single" then
			tap = {image = "circle", rotZ = 0, rotY = 0};
			hold = {image = "circle", flip = "TexCoordFlipMode_None"};
			reverseHold = {image = "circle", flip = "TexCoordFlipMode_Y"};
			roll = {image = "circle", flip = "TexCoordFlipMode_None"};
			reverseRoll = {image = "circle", flip = "TexCoordFlipMode_None"};
		end

		if (stepstype == "StepsType_Techno_Single5" or stepstype == "StepsType_Techno_Double5") and button == "Center" then
			tap = {image = "circle", rotZ = 0, rotY = 0};
			hold = {image = "circle", flip = "TexCoordFlipMode_None"};
			reverseHold = {image = "circle", flip = "TexCoordFlipMode_Y"};
			roll = {image = "circle", flip = "TexCoordFlipMode_None"};
			reverseRoll = {image = "circle", flip = "TexCoordFlipMode_None"};
		end

		local baseWidth = (button == "Scratch" or button == "Scratch up" or button == "Scratch down") and 128 or 64;
		local computedPadding = (columnWidth[stepstype][i] or 64) + (columnPadding[stepstype][i] or 0) - baseWidth;

		if noteType == "Bar32" then
			tap = {image = "key", rotZ = 0, rotY = 0};
			hold = {image = "key", flip = "TexCoordFlipMode_None"};
			reverseHold = {image = "key", flip = "TexCoordFlipMode_Y"};
			roll = {image = "key", flip = "TexCoordFlipMode_None"};
			reverseRoll = {image = "key", flip = "TexCoordFlipMode_None"};
			mineZoom = 0.5;

			baseWidth = 64;
			computedPadding = -28; -- 36 per column
		elseif noteType == "Bar64" then
			tap = {image = "scratch", rotZ = 0, rotY = 0};
			hold = {image = "scratch", flip = "TexCoordFlipMode_None"};
			reverseHold = {image = "scratch", flip = "TexCoordFlipMode_Y"};
			roll = {image = "scratch", flip = "TexCoordFlipMode_None"};
			reverseRoll = {image = "scratch", flip = "TexCoordFlipMode_None"};
			mineZoom = 1;

			baseWidth = 128;
			computedPadding = -56; -- 72 per column
		elseif noteType == "Circle" then
			tap = {image = "circle", rotZ = 0, rotY = 0};
			hold = {image = "circle", flip = "TexCoordFlipMode_None"};
			reverseHold = {image = "circle", flip = "TexCoordFlipMode_Y"};
			roll = {image = "circle", flip = "TexCoordFlipMode_None"};
			reverseRoll = {image = "circle", flip = "TexCoordFlipMode_None"};
			mineZoom = 1;

			baseWidth = 64;
			computedPadding = -8; -- 56 per column
		end

		local columnColor = columnColorList[stepstype][i] or 1;

		if colorType == "Split" then
			columnColor = i <= #button_list / 2 and 17 or 3; -- left or right

			if #button_list % 2 == 1 and i == (#button_list - 1) / 2 + 1 then
				columnColor = 19; -- center
			end
		elseif colorType == "Alternate" then
			columnColor = i % 2 == 1 and 17 or 3; -- odd or even
		elseif colorType == "Symmetry" then
			columnColor = math.min(i, #button_list - i + 1) % 2 == 1 and 17 or 3; -- odd or even
		end

		local columnState = {
			parts_per_beat = 1, quanta = {{per_beat = 1, states = {columnColor}}}
		}

		columns[i] = {
			-- width = columnWidth[stepstype][i] or 64,
			-- padding = columnPadding[stepstype][i] or 0,
			-- XXX: "Holds in this column will be stretched to this width."
			width = baseWidth,
			padding = computedPadding,
			quantum_time = 2	-- this makes the quants cover 2 beats, right?
			hold_gray_percent = .3
			taps = {
				NewSkinTapPart_Tap = {
					state_map = (colorType == "Quantize") and tapState or columnState,
					actor = Def.Sprite {
						Texture = NEWSKIN:get_path(skin_name, "_" .. tap.image .. "4x16 (quadres).png"),
						InitCommand = cmd(rotationz,tap.rotZ;rotationy,tap.rotY),
					}
				},
				NewSkinTapPart_Mine = {
					state_map = mineState,
					actor = Def.ActorFrame {
						InitCommand = cmd(zoom,mineZoom),
						Def.Sprite {
							Texture = NEWSKIN:get_path(skin_name, "_mine 2x16 (doubleres).png"),
						},
						Def.Sprite {
							Texture = NEWSKIN:get_path(skin_name, "_mparts 2x16 (doubleres).png"),
							InitCommand = cmd(spin;effectclock,"beat";effectmagnitude,0,0,-60),
						},
						Def.Sprite {
							Texture = NEWSKIN:get_path(skin_name, "_mparts 2x16 (doubleres).png"),
						},
						Def.Sprite {
							Texture = NEWSKIN:get_path(skin_name, "_mparts 2x16 (doubleres).png"),
							InitCommand = cmd(rotationz,240;spin;effectclock,"beat";effectmagnitude,0,0,-60),
						},
					}
				},
				NewSkinTapPart_Lift = {
					state_map = liftState,
					actor = Def.Sprite {
						Texture = NEWSKIN:get_path(skin_name, "_fallback tap lift 2x1 (doubleres).png"),
						InitCommand = cmd(zoom,mineZoom),
					}
				},
			},
			holds = {
				TapNoteSubType_Hold = {
					{
						state_map = inactiveState,
						textures = {"_" .. hold.image .. "_hold gen 2x1 (quadres).png"},
						flip = hold.flip,
						disable_filtering = false,
						length_data = {
							start_note_offset = -0.5,
							end_note_offset = 0.5,
							head_pixs = 27, 			-- 108 if not automatically downscaled
							body_pixs = 107.5,			-- 430
							tail_pixs = 27,				-- 108
						},
					},
					{
						state_map = activeState,
						textures = {"_" .. hold.image .. " hold 4x1 (doubleres).png"},
						flip = hold.flip,
					},
				},
				TapNoteSubType_Roll = {
					{
						state_map = inactiveState,
						textures = {"_" .. roll.image .. " roll 4x1 (doubleres).png"},
						flip = roll.flip,
					},
					{
						state_map = activeState,
						textures = {"_" .. roll.image .. " roll 4x1 (doubleres).png"},
						flip = roll.flip,
					},
				},
			},
			reverse_holds = {
				TapNoteSubType_Hold = {
					{
						state_map = inactiveState,
						textures = {"_" .. reverseHold.image .. " hold 4x1 (doubleres).png"},
						flip = reverseHold.flip,
					},
					{
						state_map = activeState,
						textures = {"_" .. reverseHold.image .. " hold 4x1 (doubleres).png"},
						flip = reverseHold.flip,
					},
				},
				TapNoteSubType_Roll = {
					{
						state_map = inactiveState,
						textures = {"_" .. reverseRoll.image .. " roll 4x1 (doubleres).png"},
						flip = reverseRoll.flip,
					},
					{
						state_map = activeState,
						textures = {"_" .. reverseRoll.image .. " roll 4x1 (doubleres).png"},
						flip = reverseRoll.flip,
					},
				},
			},
			rotations = {
				NewSkinTapPart_Tap = 0,
				NewSkinTapPart_Mine = 0,
				NewSkinTapPart_Lift = 0,
			},
		};
	end
	return {
		columns = columns,
		vivid_operation = false,
	};
end
