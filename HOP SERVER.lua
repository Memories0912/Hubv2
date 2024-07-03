local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local shadowHolder = Instance.new("Frame")
local umbraShadow = Instance.new("ImageLabel")
local penumbraShadow = Instance.new("ImageLabel")
local ambientShadow = Instance.new("ImageLabel")
local Hubname = Instance.new("TextLabel")
local HopSecond = Instance.new("TextLabel")
local Reason = Instance.new("TextLabel")
local InstanceFrame = Instance.new("LocalScript", Frame)

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, -1, 0)
Frame.Size = UDim2.new(0, 1424, 0, 776)

InstanceFrame.Parent:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 1, false)

shadowHolder.Name = "shadowHolder"
shadowHolder.Parent = Frame
shadowHolder.BackgroundTransparency = 1.000
shadowHolder.Size = UDim2.new(1, 0, 1, 0)
shadowHolder.ZIndex = 0

umbraShadow.Name = "umbraShadow"
umbraShadow.Parent = shadowHolder
umbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
umbraShadow.BackgroundTransparency = 1.000
umbraShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
umbraShadow.Size = UDim2.new(1, 100, 1, 300)
umbraShadow.ZIndex = 0
umbraShadow.Image = "rbxassetid://1316045217"
umbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
umbraShadow.ImageTransparency = 0.860
umbraShadow.ScaleType = Enum.ScaleType.Slice
umbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

penumbraShadow.Name = "penumbraShadow"
penumbraShadow.Parent = shadowHolder
penumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
penumbraShadow.BackgroundTransparency = 1.000
penumbraShadow.Position = UDim2.new(0.5, 0, 0.5, 6)
penumbraShadow.Size = UDim2.new(1, 100, 1, 300)
penumbraShadow.ZIndex = 0
penumbraShadow.Image = "rbxassetid://1316045217"
penumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
penumbraShadow.ImageTransparency = 0.880
penumbraShadow.ScaleType = Enum.ScaleType.Slice
penumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

ambientShadow.Name = "ambientShadow"
ambientShadow.Parent = shadowHolder
ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
ambientShadow.BackgroundTransparency = 1.000
ambientShadow.Position = UDim2.new(0.499297738, 0, 0.392268056, 6)
ambientShadow.Size = UDim2.new(1, 100, 1, 300)
ambientShadow.ZIndex = 0
ambientShadow.Image = "rbxassetid://1316045217"
ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
ambientShadow.ImageTransparency = 0.880
ambientShadow.ScaleType = Enum.ScaleType.Slice
ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)

Hubname.Name = "Hubname"
Hubname.Parent = Frame
Hubname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hubname.BackgroundTransparency = 1.000
Hubname.BorderColor3 = Color3.fromRGB(0, 0, 0)
Hubname.BorderSizePixel = 0
Hubname.Position = UDim2.new(0.287219107, 0, 0.390463918, 0)
Hubname.Size = UDim2.new(0, 605, 0, 85)
Hubname.Font = Enum.Font.Michroma
Hubname.Text = "Experience Script"
Hubname.TextColor3 = Color3.fromRGB(170, 255, 255)
Hubname.TextSize = 100.000

HopSecond.Name = "HopSecond"
HopSecond.Parent = Frame
HopSecond.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HopSecond.BackgroundTransparency = 1.000
HopSecond.BorderColor3 = Color3.fromRGB(0, 0, 0)
HopSecond.BorderSizePixel = 0
HopSecond.Position = UDim2.new(0.287219107, 0, 0.461340219, 0)
HopSecond.Size = UDim2.new(0, 605, 0, 85)
HopSecond.Font = Enum.Font.Gotham
HopSecond.Text = "Hopping Server in: ?s"
HopSecond.TextColor3 = Color3.fromRGB(255, 255, 255)
HopSecond.TextSize = 40.000
if not timed then
  timed = 5
end
spawn(function()
	while wait(1) do
		local a = math.random(1,255)
		local b = math.random(1,255)
		local c = math.random(1,255)
		timed -= 1
		HopSecond.Text = "Hopping Server in: "..timed
		if timed <= 0 then
			HopSecond.Text = "HOP!"
			HopSecond.TextColor3 = Color3.fromRGB(a, b, c)
		end
		if timed <= 0 then
			wait(2)
			InstanceFrame.Parent:TweenPosition(UDim2.new(0.5, 0, -1, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.5, false)
			wait(1)
			ScreenGui:Destroy()
		end
	end
end)
Reason.Name = "Reason"
Reason.Parent = Frame
Reason.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Reason.BackgroundTransparency = 1.000
Reason.BorderColor3 = Color3.fromRGB(0, 0, 0)
Reason.BorderSizePixel = 0
Reason.Position = UDim2.new(1, 0, 0.512886584, 0)
Reason.Size = UDim2.new(0, 605, 0, 85)
Reason.Font = Enum.Font.Gotham
Reason.Text = "Reason: Not Found Chest"
Reason.TextColor3 = Color3.fromRGB(255, 255, 127)
Reason.TextSize = 50.000
local script3 = Instance.new("LocalScript", Reason)
local script1 = Instance.new("LocalScript", Hubname)
local script2 = Instance.new("LocalScript", HopSecond)
for i = 1,0,-0.02 do
	script1.Parent.TextTransparency = i
	script2.Parent.TextTransparency = i
	script3.Parent.TextTransparency = i
	task.wait(0.02)
end
script3.Parent:TweenPosition(UDim2.new(0.286516845, 0, 0.512886584, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, 0.5, false)
