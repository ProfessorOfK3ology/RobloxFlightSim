--Put this script in ServerScriptService.

players = game:GetService("Players")
players.PlayerAdded:Connect(function(player)
	
wait(1)
	
	local storage = game:GetService("ReplicatedStorage")
	local clone = storage.plane:Clone()
	
	game.SoundService.DistanceFactor = 0.0015
	
	clone.Parent = workspace
	playerName = player.Name
	clone.Color = Color3.new((math.random(1,255)),(math.random(1,255)),(math.random(1,255)))
	clone.Name = (playerName .. "Plane")
	clone.Position = Vector3.new(0, 1.4, 0)
	clone.engineSound:Play()
	
	print(clone.Name .. " has been cloned to Workspace")
			
		end)
	
players.PlayerRemoving:Connect(function(player)
local plane = game.Workspace:WaitForChild(playerName .. "Plane")
	plane:Destroy()
	
		print(plane.Name .. " destroyed")
end)
