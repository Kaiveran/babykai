return {
	notes = "notes.lua",							-- Let's begin!
	layers = {"receptors.lua", "explosions.lua"},	-- Eventually want to implement Mad Matt's column flashes, will that require a separate Lua file?
	supports_all_buttons = true,					-- No more musical tofu. Although I have to question how useful this flag will be when custom gametypes come along...	
	fallback = "hanubeki",							-- I love you
--	player_colors = {{}}							-- Masks kinda suck, although colorizable graphics would be nice.
	skin_parameters = {
		receptors = {
			warning_time = 1,						--[[ Keeping Kyzentun's warning time because it's cool. 
													Want a darkening effect instead of coloring, but not sure how to pull it off at present.]]
		},
	},
	skin_parameter_info = {
		
		receptors = {
			translation = {
				en = {title = "Receptors", explanation = "Options for receptor effects."},
				es = {title = "Receptores", explanation = "Opciones para efectos de los receptores."}
				fr = {title = "Cibles", explanation = "Options des effets pour les cibles."}
				ga = {title = "Spriocanna", explanation = "Roghanna maidir le héifeachtaí ar na spriocanna."}
				-- Éirinn go Brách! (my Irish probably sucks but hey)
			},
			warning_time= {
				type = "float", min = 0, max = 10, translation = {
					en = {title = "Warning Time", explanation = "Darkens the receptor before an arrow arrives."},
					es = {title = "Tiempo de Aviso", explanation = "El receptor se oscurece antes de que llegue una nota."},
					fr = {title = "Temps de Préavis", explanation = "La cible devient sombre avant l'arrivée d'une note."},
					ga = {title = "Am ar Rabhadh", explanation = "Go dtiocfaidh an sprioc dorcha roimh theacht na nóta."}
				},
			},
		},
	},
} -- butts