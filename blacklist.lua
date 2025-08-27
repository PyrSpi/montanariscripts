game.Players.PlayerAdded:Connect(function(plr)
	
	--------------------
	---- WHITELISTS ----
	--------------------
	
	-- TOTD Hicomm
	if plr:GetRankInGroup(10284613) >= 18 then
		print(plr.Name, "joined")
	
	--------------------------
	---- ENEMY BLACKLISTS ----
	--------------------------

  	-- Thrymguard
	elseif plr:IsInGroup(35647814) then
		plr:Kick("You are in a blacklisted group (Mirafloria/Thrymgard). Please leave it to join this game.")
		print("Kicked Miraflorian:", plr.Name)
		
	--[[ Knights of Frostshire	
	elseif plr:IsInGroup(34442019) then
		plr:Kick("You are in a blacklisted group (Frostshire).")
		print("Kicked Frostshirean:", plr.Name) ]]
	
	--[[ Kingdom of Connacht
	elseif plr:IsInGroup(34799711) then
		plr:Kick("You are in a blacklisted group (Connacht).")
		print("Kicked Connachtian:", plr.Name) ]]
		
	-- Kingdom of Veloria	
	elseif plr:IsInGroup(35465855) then
		plr:Kick("You are in a blacklisted group (Veloria).")
		print("Kicked Velorian:", plr.Name)
		
	-- Sculptured Clan	
	elseif plr:IsInGroup(11106612) then
		plr:Kick("You are in a blacklisted clan (Sculptureds).")
		print("Kicked Sculptured:", plr.Name)

	-- Holy Empire of Dagmar	
	elseif plr:IsInGroup(34557445) then
		plr:Kick("You are in a blacklisted group (Dagmar).")
		print("Kicked Dagmar:", plr.Name)
		
	-- Aristos
	elseif plr:IsInGroup(16921328) then
		plr:Kick("You are in a blacklisted group (Aristos).")
		print("Kicked Aristos:", plr.Name) 
		
	-- Kingdom of Lytherion	
	elseif plr:IsInGroup(16609942) then
		plr:Kick("You are in a blacklisted group (Lytherion).")
		print("Kicked Lytherian:", plr.Name)

	-- Templars of The Dawn
	elseif plr:IsInGroup(10284613) then
		plr:Kick("You are in a blacklisted group, Templars of The Dawn. TOTD has been blacklisted for harassment, nepotistic corruption, collaboration with enemies, and defamation. Please leave it to join this game.")
		print("Kicked Templar:", plr.Name) 
		
	-------------------------------
	---- DEGENERATE BLACKLISTS ---- 
	-------------------------------

	-- Kingdom of Tomartia / Northumbria / Aelas	
	elseif plr:IsInGroup(34092361) or plr:IsInGroup(34086631) then
		plr:Kick("You are in a blacklisted group, Tomartia / Aelas / Northumbria. Their leader Rocco_Dracole and his bloodline have engaged in havy racism, bigotry, and degenerate behavior involving young people; Please leave it to join the game.")
		print("Kicked Tomartian:", plr.Name)
		
	-- OGRE CLAN / DRAGON CLAN 
	elseif plr:IsInGroup(10266623) or plr:IsInGroup(35663307) then
		plr:Kick("You are in a blacklisted group, Ogre Clan, a notoriously degenerate and WW2 Germany roleplaying group with ties to predators and 'white sups'. Please leave it to join the game.")
		print("Kicked Ogre:", plr.Name)
      
  	--[[ Valhalla Reborn
  	elseif plr:IsInGroup(35738646) then
		plr:Kick("You are in a blacklisted group, Valhalla Reborn, a group that has ties to racist and degenerate communities. Please leave it to join the game.")
		print("Kicked Valhallan:", plr.Name) ]]

	-- High Kingdom of Elyndor
	elseif plr:IsInGroup(34989992) then 
		plr:Kick("You are in a blacklisted group, Elyndor, which has known ties to racists and degenerate communities. Please leave it to join the game.")
		print("Kicked Elyndorian:", plr.Name)
			
	-- Virdia
	elseif plr:IsInGroup(34989992) then 
		plr:Kick("You are in a blacklisted genre, Virdia, notorious for being filled with predators, degenerates and 'white sups'. Please leave it to join the game.")
		print("Kicked Virdian:", plr.Name)
		
	--[[ Crimson Knights of Bloodspire
	elseif plr:IsInGroup(11551766) then
		plr:Kick("You are in a blacklisted group, Crimsom Knights, notorious for its preteen leadership (King and Queen admited to being 12) and association with degenerate groups. Please leave it to join the game.")
		print("Kicked Crimson Knight:", plr.Name)]]
		
	-- The Kingdom of Greater Bolts
	elseif plr:IsInGroup(34124788) then
		plr:Kick("You are in a blacklisted group, The Kingdom of Greater Bolts. Its owner and genre have connections to degenerates, predators, and 'white supts'. Please leave it to join the game.")
		print("Kicked Greater Bolts member:", plr.Name)
		
		-- The c.c Order of The Knights
	elseif plr:IsInGroup(6050558) then
		plr:Kick("You are in a blacklisted group, The c.c Order of The Knights, which has connections to degenerates, predators, and 'white sups'. Please leave it to join the game.")
		print("Kicked C.C. Knight:", plr.Name)
		
	-- The Holy Legion / The Mafia Goat Kingdom / House Of Amalor / The Empire Of The Targaryen / Luminari Imperium / The Royal Household Of Alrington
	elseif plr:IsInGroup(35809363) or plr:IsInGroup(8553848) or plr:IsInGroup(35904300) or plr:IsInGroup(34136792) or plr:IsInGroup(36095680) or plr:IsInGroup(35892008) then
		plr:Kick("You have connections to THL or its splinter groups, notorious for being home to 'white sups', predators, bigotry, and illegal activities. Degenerates like you are not welcome anywhere near Montanari.")
		print("Kicked THL degenerate:", plr.Name)

	--------------------------
	---- OTHER BLACKLISTS ----
	--------------------------

	elseif plr.AccountAge < 20 then
		plr:Kick("Your account is too young to join the game.")
		print("Kicked baby account:", plr.Name)
	
	elseif (function()
			local success, result = pcall(function()
				local url = "https://badges.roblox.com/v1/users/" .. plr.UserId .. "/badges?limit=100"
				local res = game:GetService("HttpService"):GetAsync(url)
				local data = game:GetService("HttpService"):JSONDecode(res)
				return #data.data
			end)
			return success and result < 20
		end)() then
		plr:Kick("Please use your main account.")
		print("Kicked alt with less than 30 badges:", plr.Name)
	
	else
		print(plr.Name, "joined")
	end
end)
