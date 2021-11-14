--[[ Keybinds ]]--

local FrontflipKey = Enum.KeyCode.Z
local BackflipKey = Enum.KeyCode.X
local AirjumpKey = Enum.KeyCode.C


--[[ Dependencies ]]--

local ca = game:GetService("ContextActionService")
local skid = game:GetService("Players").LocalPlayer
local h = 0.0174533
local antigrav


--[[ Functions ]]--

function skidFrontflip(act,inp,obj)
	if inp == Enum.UserInputState.Begin then
		skid.Character.Humanoid:ChangeState("Jumping")
		wait()
		skid.Character.Humanoid.Sit = true
		for i = 1,360 do 
			delay(i/720,function()
			skid.Character.Humanoid.Sit = true
				skid.Character.HumanoidRootPart.CFrame = skid.Character.HumanoidRootPart.CFrame * CFrame.Angles(-h,0,0)
			end)
		end
		wait(0.55)
		skid.Character.Humanoid.Sit = false
	end
end

function skidBackflip(act,inp,obj)
	if inp == Enum.UserInputState.Begin then
		skid.Character.Humanoid:ChangeState("Jumping")
		wait()
		skid.Character.Humanoid.Sit = true
		for i = 1,360 do
			delay(i/720,function()
			skid.Character.Humanoid.Sit = true
				skid.Character.HumanoidRootPart.CFrame = skid.Character.HumanoidRootPart.CFrame * CFrame.Angles(h,0,0)
			end)
		end
		wait(0.55)
		skid.Character.Humanoid.Sit = false
	end
end

function skidAirjump(act,inp,obj)
	if inp == Enum.UserInputState.Begin then
		skid.Character:FindFirstChildOfClass'Humanoid':ChangeState("Seated")
		wait()
		skid.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")	
	end
end


--[[ Binds ]]--

ca:BindAction("skidFrontflip",skidFrontflip,false,FrontflipKey)
ca:BindAction("skidBackflip",skidBackflip,false,BackflipKey)
ca:BindAction("skidAirjump",skidAirjump,false,AirjumpKey)

--[[ Load Message ]]--

print(scriptname .. " " .. ver .. " loaded successfully")
print("made by skid#7203")
