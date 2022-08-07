local camera = workspace.CurrentCamera
local run = game:GetService("RunService")
local mouse = game:GetService("Players").LocalPlayer:GetMouse()

wait(1)

local plane = workspace:FindFirstChild(script.Parent.Parent.Name .. "Plane")
camera.CameraType = Enum.CameraType.Scriptable
camera.CameraSubject = plane
camera.FieldOfView = 45

run.Heartbeat:Connect(function()
	
	camera.CFrame = plane.Attachment.WorldCFrame
	plane.CFrame = plane.CFrame * CFrame.new(0.00375,0,0)

end)

local input = game:GetService("UserInputService")

while true do
	wait()
		if input:IsMouseButtonPressed(1) then
			plane.AngularVelocity.AngularVelocity = Vector3.new(
				0,
				((math.rad(-(mouse.X) + (mouse.ViewSizeX/2)))/2),
				((math.rad(-(mouse.Y) + (mouse.ViewSizeY/2)))/2)
			)
			local av = plane.AngularVelocity.AngularVelocity
		plane.Orientation = av + (plane.Orientation)
		end
	end
