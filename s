-- Bring to you by 7alexv7
-- Enjoy the script!

-- Instances:

local FlyGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

--Properties:

FlyGui.Name = "FlyGui"
FlyGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = FlyGui
Frame.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0685602352, 0, 0.168769717, 0)
Frame.Size = UDim2.new(0.264544547, 0, 0.100000024, 0)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.06324628, 0, 0.400667697, 0)
TextButton.Size = UDim2.new(0.871157169, 0, 0.495614201, 0)
TextButton.Font = Enum.Font.ArialBold
TextButton.Text = "Fly"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextStrokeTransparency = 0.000
TextButton.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Size = UDim2.new(0, 86, 0, 24)
TextLabel.Font = Enum.Font.Oswald
TextLabel.Text = "Made by GcoSad_X"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

-- Scripts:

local function NQWSTGE_fake_script() -- Frame.Fly 
	local script = Instance.new('LocalScript', Frame)

	local plr = script.Parent.Parent.Parent.Parent
	repeat wait() until plr and plr.Character and plr.Character:findFirstChild("HumanoidRootPart") and plr.Character:findFirstChild("Humanoid") 
	local mouse = game.Players.LocalPlayer:GetMouse()  
	repeat wait() until mouse
	
	local torso = plr.Character.HumanoidRootPart 
	local flying = false
	local deb = true 
	local ctrl = {f = 0, b = 0, l = 0, r = 0} 
	local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
	local maxspeed = 1000 
	local speed = 50
	function Fly() 
	local bg = Instance.new("BodyGyro", torso) 
	bg.P = 9e4 
	bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
	bg.cframe = torso.CFrame 
	local bv = Instance.new("BodyVelocity", torso) 
	bv.velocity = Vector3.new(0,0.1,0) 
	bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
	repeat wait() 
	plr.Character.Humanoid.PlatformStand = true 
	if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
	speed = speed+.5+(speed/maxspeed) 
	if speed > maxspeed then 
	speed = maxspeed 
	end 
	elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
	speed = speed-1 
	if speed < 0 then 
					speed = 0
				else
					speed = 50
	end 
	end 
	if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
	bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
	lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
	elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
	bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
	else 
	bv.velocity = Vector3.new(0,0.1,0) 
	end 
	bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
	until not flying 
	ctrl = {f = 0, b = 0, l = 0, r = 0} 
	lastctrl = {f = 0, b = 0, l = 0, r = 0} 
		
	bg:Destroy() 
	bv:Destroy() 
		plr.Character.Humanoid.PlatformStand = false 
		speed = 50
	end 
	
	mouse.KeyDown:connect(function(key) 
	if key:lower() == "e" then 
			if flying then flying = false 
				speed = 50
	else 
	flying = true 
	Fly()
	
	end 
	elseif key:lower() == "w" then 
	ctrl.f = 1 
	elseif key:lower() == "s" then 
	ctrl.b = -1 
	elseif key:lower() == "a" then 
	ctrl.l = -1 
	elseif key:lower() == "d" then 
	ctrl.r = 1 
	end 
	end) 
	mouse.KeyUp:connect(function(key) 
	if key:lower() == "w" then 
	ctrl.f = 0 
	elseif key:lower() == "s" then 
	ctrl.b = 0 
	elseif key:lower() == "a" then 
	ctrl.l = 0 
	elseif key:lower() == "d" then 
	ctrl.r = 0 
	end 
	end)

local main = Instance.new("ScreenGui")
local epic = Instance.new("Frame")
local backgroundtitle = Instance.new("TextLabel")
local creator = Instance.new("TextLabel")
local title = Instance.new("TextLabel")
local close = Instance.new("TextButton")
local fbutton = Instance.new("TextButton")
local ebutton = Instance.new("TextButton")
local qbutton = Instance.new("TextButton")
local tbutton = Instance.new("TextButton")
local main2 = Instance.new("ScreenGui")
local epic2 = Instance.new("Frame")
local backgroundtitle2 = Instance.new("TextLabel")
local creator2 = Instance.new("TextLabel")
local title2 = Instance.new("TextLabel")
local close2 = Instance.new("TextButton")
local fbutton2 = Instance.new("TextButton")
local ebutton2 = Instance.new("TextButton")
local qbutton2 = Instance.new("TextButton")
local tbutton2 = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.CoreGui
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

epic.Name = "epic"
epic.Parent = main
epic.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
epic.Position = UDim2.new(0.0911376476, 0, 0.466830462, 0)
epic.Size = UDim2.new(0, 150, 0, 150)
epic.Active = true
epic.Draggable = true

creator.Name = "creator"
creator.Parent = epic
creator.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
creator.Position = UDim2.new(0.00442049652, 0, 0.762519121, 0)
creator.Size = UDim2.new(0, 80, 0, 10)
creator.Font = Enum.Font.SourceSans
creator.Text = ""
creator.TextColor3 = Color3.fromRGB(0, 0, 0)
creator.TextScaled = true
creator.TextSize = 14.000
creator.TextWrapped = false

title.Name = "title"
title.Parent = epic
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.0497237556, 0, 0, 0)
title.Size = UDim2.new(0, 80, 0, 10)
title.Font = Enum.Font.SciFi
title.Text = ""
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

close.Name = "close"
close.Parent = epic
close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
close.Position = UDim2.new(0.76795578, 0, 0, 0)
close.Size = UDim2.new(0, 35, 0, 35)
close.Font = Enum.Font.GothamBlack
close.Text = "X"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true
close.MouseButton1Down:connect(function()
epic.Visible = false
end)

fbutton.Name = "tbutton"
fbutton.Parent = epic
fbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fbutton.Position = UDim2.new(0.3, 0, 0.4, 0)
fbutton.Size = UDim2.new(0, 38, 0, 38)
fbutton.Font = Enum.Font.SourceSans
fbutton.Text = "S"
fbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
fbutton.TextSize = 14.000
fbutton.MouseButton1Down:connect(function()
   ctrl.b = -1
   wait(0.1)
   ctrl.b = 0
   ctrl.r = 0
   ctrl.l = 0
   ctrl.f = 0
end)

ebutton.Name = "fbutton"
ebutton.Parent = epic
ebutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ebutton.Position = UDim2.new(0.6, 0, 0.4, 0)
ebutton.Size = UDim2.new(0, 38, 0, 38)
ebutton.Font = Enum.Font.SourceSans
ebutton.Text = "D"
ebutton.TextColor3 = Color3.fromRGB(0, 0, 0)
ebutton.TextSize = 14.000
ebutton.MouseButton1Down:connect(function()
   ctrl.r = 1 
   wait(0.1)
   ctrl.b = 0
   ctrl.r = 0
   ctrl.l = 0
   ctrl.f = 0
end)

qbutton.Name = "rbutton"
qbutton.Parent = epic
qbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
qbutton.Position = UDim2.new(0.3, 0, 0.1, 0)
qbutton.Size = UDim2.new(0, 38, 0, 38)
qbutton.Font = Enum.Font.SourceSans
qbutton.Text = "W"
qbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
qbutton.TextSize = 14.000
qbutton.MouseButton1Down:connect(function()
   ctrl.f = 1 
   wait(0.1)
   ctrl.b = 0
   ctrl.r = 0
   ctrl.l = 0
   ctrl.f = 0
end)

tbutton.Name = "ebutton"

tbutton.Parent = epic

tbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tbutton.Position = UDim2.new(0, 0, 0.4, 0)
tbutton.Size = UDim2.new(0, 38, 0, 38)
tbutton.Font = Enum.Font.SourceSans
tbutton.Text = "A"
tbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
tbutton.TextSize = 14.000
tbutton.MouseButton1Down:connect(function()
   ctrl.l = -1 
   wait(0.1)
   ctrl.b = 0
   ctrl.r = 0
   ctrl.l = 0
   ctrl.f = 0
end)

local main = Instance.new("ScreenGui")
local epic = Instance.new("Frame")
local backgroundtitle = Instance.new("TextLabel")
local creator = Instance.new("TextLabel")
local title = Instance.new("TextLabel")
local close = Instance.new("TextButton")
local fbutton = Instance.new("TextButton")
local main2 = Instance.new("ScreenGui")
local epic2 = Instance.new("Frame")
local backgroundtitle2 = Instance.new("TextLabel")
local creator2 = Instance.new("TextLabel")
local title2 = Instance.new("TextLabel")
local close2 = Instance.new("TextButton")
local fbutton2 = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.CoreGui
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

epic.Name = "epic"
epic.Parent = main
epic.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
epic.Position = UDim2.new(0.0911376476, 0, 0.466830462, 0)
epic.Size = UDim2.new(0, 80, 0, 120)
epic.Active = true
epic.Draggable = true

creator.Name = "creator"
creator.Parent = epic
creator.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
creator.Position = UDim2.new(0.00442049652, 0, 0.762519121, 0)
creator.Size = UDim2.new(0, 80, 0, 10)
creator.Font = Enum.Font.SourceSans
creator.Text = ""
creator.TextColor3 = Color3.fromRGB(0, 0, 0)
creator.TextScaled = true
creator.TextSize = 14.000
creator.TextWrapped = false

title.Name = "title"
title.Parent = epic
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.0497237556, 0, 0, 0)
title.Size = UDim2.new(0, 80, 0, 10)
title.Font = Enum.Font.SciFi
title.Text = ""
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

close.Name = "close"
close.Parent = epic
close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
close.Position = UDim2.new(0.76795578, 0, 0, 0)
close.Size = UDim2.new(0, 20, 0, 20)
close.Font = Enum.Font.GothamBlack
close.Text = "X"
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true
close.MouseButton1Down:connect(function()
epic.Visible = false
end)

fbutton.Name = "tbutton"
fbutton.Parent = epic
fbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fbutton.Position = UDim2.new(0.243093923, 0, 0.344781578, 0)
fbutton.Size = UDim2.new(0, 38, 0, 38)
fbutton.Font = Enum.Font.SourceSans
fbutton.Text = "Stop"
fbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
fbutton.TextSize = 14.000
fbutton.MouseButton1Down:connect(function()
   flying = false
 wait(0.1)
 flying = true
 Fly()
end)


	
	plr.Character.Humanoid.StateChanged:Connect(function(o,n)
		if n == Enum.HumanoidStateType.Running then
			ctrl.f = 1
		else
			ctrl.f = 0
		end
	
	end)
	script.Parent.TextButton.MouseButton1Click:Connect(function()
		if flying then
			flying = false
			speed = 50
		else
			flying = true
			Fly()
		end
	end)
	
end
coroutine.wrap(NQWSTGE_fake_script)()
local function RAQA_fake_script() -- Frame.Buttons 
	local script = Instance.new('LocalScript', Frame)

	local Trigger = script.Parent.MiniTrext
	local IsMini = false
	function CreateTween(Instance,Style,Direction,Time,table,RepeatCount,CanRepeat,Delay)
		local ts = game:GetService("TweenService")
		local TweenInfo = TweenInfo.new(Time,Style,Direction,RepeatCount,CanRepeat,Delay)
		local Tween = ts:Create(Instance,TweenInfo,table)
		repeat wait() until Tween ~= nil
		return Tween
		
	end
	Trigger.MouseButton1Click:Connect(function()
		if IsMini then
			CreateTween(script.Parent,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0.5,{Size = UDim2.new(0.265, 0,0.1, 0)},0,false,0.1):Play()
			IsMini = false
			Trigger.Text = "-"
		else
			CreateTween(script.Parent,Enum.EasingStyle.Quad,Enum.EasingDirection.Out,0.5,{Size = UDim2.new(0.265, 0,0.042, 0)},0,false,0.1):Play()
			IsMini = true
			Trigger.Text = "+"
		end
	end)
	script.Parent.Delete.MouseButton1Click:Connect(function()
		script.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(RAQA_fake_script)()
local function TKVUMP_fake_script() -- Frame.Drag Gui 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(TKVUMP_fake_script)()
