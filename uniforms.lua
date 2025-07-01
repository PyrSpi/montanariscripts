if true then 
	for _, player in game.Players:GetPlayers() do
		local character = player.Character or player.CharacterAdded:Wait()
		local shirt = character:FindFirstChildOfClass("Shirt")
		local pants = character:FindFirstChildOfClass("Pants")
	
		if not shirt then
			shirt = Instance.new("Shirt")
			shirt.Parent = character
		end
	
		if not pants then
			pants = Instance.new("Pants")
			pants.Parent = character
		end
		
		if player then
			local rank = player:GetRankInGroup(35707088)
							
			if rank >= 1 and rank <= 50 then
				-- Initiates
				shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=120184164673884"
				pants.PantsTemplate = "http://www.roblox.com/asset/?id=92864788852483"
		
			elseif rank >= 50 and rank <= 90 then
				-- At Arms
				shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=100924450891662"
				pants.PantsTemplate = "http://www.roblox.com/asset/?id=124953793018250"
		
			elseif rank >= 90 and rank <= 115 then
				-- HRs
				shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=109110372167595"
				pants.PantsTemplate = "http://www.roblox.com/asset/?id=92212727600118"
							
			elseif rank >= 115 and rank <= 140 then
				-- OGO
				shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=100924450891662"
				pants.PantsTemplate = "http://www.roblox.com/asset/?id=135220135437319"
					
			elseif rank > 140 then
				-- HiComm
				shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=109110372167595"
				pants.PantsTemplate = "http://www.roblox.com/asset/?id=92212727600118"
						
			else
				print(player.Name, "not in Montanari")
			end
		end
	
		print(player.Name.." received their uniform")
	
		if player:FindFirstChildOfClass("ShirtGraphic") then
			player:FindFirstChildOfClass("ShirtGraphic"):Destroy()
		end
	end
end
