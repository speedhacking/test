local ch = speaker.Character
local prt=Instance.new("Model")
prt.Parent = speaker.Character
local p1 = Instance.new("Part")
p1.Name="Torso"
p1.CanCollide = false
p1.Anchored = true
local p2 = Instance.new("Part")
p2.Name="Head"
p2.Parent = prt
p2.Anchored = true
p2.CanCollide = false
local p3 =Instance.new("Humanoid")
p3.Name="Humanoid"
p3.Parent = prt
p1.Position = Vector3.new(0,9999,0)
speaker.Character=prt
wait(3)
speaker.Character=ch
wait(3)
local Hum = Instance.new("Humanoid")
p2:Clone()
Hum.Parent = speaker.Character
local root =  getRoot(speaker.Character)
for i,v in pairs(speaker.Character:GetChildren()) do
	if v ~= root and  v.Name ~= "Humanoid" then
		v:Destroy()
	end
end
root.Transparency = 0
root.Color = Color3.new(1, 1, 1)
local invisflingStepped
invisflingStepped = game:GetService('RunService').Stepped:Connect(function()
	if speaker.Character and getRoot(speaker.Character) then
		getRoot(speaker.Character).CanCollide = false
	else
		invisflingStepped:Disconnect()
	end
end)
sFLY()
workspace.CurrentCamera.CameraSubject = root
local bambam = Instance.new("BodyThrust")
bambam.Parent = getRoot(speaker.Character)
bambam.Force = Vector3.new(99999,99999*10,99999)
bambam.Location = getRoot(speaker.Character).Position
