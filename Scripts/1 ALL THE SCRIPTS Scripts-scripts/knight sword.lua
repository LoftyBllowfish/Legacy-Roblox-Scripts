local Me = game.Players.LocalPlayer
char = Me.Character
Torso = char.Torso
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
local Attkin = true 

function prop(part, color, Parent, x, y, z) 
local pp = part 
pp.CanCollide = false 
pp.formFactor = "Symmetric" 
pp.Size = Vector3.new(x, y, z)
pp:BreakJoints() 
pp.BrickColor = BrickColor.new(color) 
pp.Parent = Parent 
end 

function weld(weld, parent, a, b, c) 
local ww = weld 
ww.Parent = parent 
ww.Part0 = a 
ww.Part1 = b 
ww.C1 = c 
end 

function meshp(mes, part, x, y, z) 
local mesh = mes 
mesh.Parent = part  
mesh.Scale = Vector3.new(x, y, z) 
if mesh.className == "BlockMesh" then 
mesh.Bevel = 0.1 
end 
end 

function mesh(mes, part, type, x, y, z) 
local mesh = mes 
mesh.MeshType = type 
mesh.Parent = part  
mesh.Scale = Vector3.new(x, y, z)
end 

pcall(function() char[":P"]:remove() end)
pcall(function() char["Sword"]:remove() end)

local Model = Instance.new("Model",char)
Model.Name = ":P"
local Model2 = Instance.new("Model",char)
Model2.Name = "Sword"

local RAB = Instance.new("Part") -- Right Arm Brick
RAB.formFactor = "Custom"
RAB.Size = Vector3.new(0.2, 0.2, 0.2)
RAB.Transparency = 1
RAB.Parent = Model
RAB:BreakJoints()

local RABW = Instance.new("Weld",RAB) -- Right Arm Brick Weld
RABW.Part0 = Torso
RABW.Part1 = RAB
RABW.C1 = CFrame.new(-1.5, -0.5, 0)

local LAB = Instance.new("Part") -- Right Arm Brick
LAB.formFactor = "Custom"
LAB.Size = Vector3.new(0.2, 0.2, 0.2)
LAB.Transparency = 1
LAB.Parent = Model
LAB:BreakJoints()

local LABW = Instance.new("Weld",LAB) -- Left Arm Brick Weld
LABW.Part0 = Torso
LABW.Part1 = LAB
LABW.C1 = CFrame.new(1.5, -0.5, 0)

local RAW = Instance.new("Weld",RAB) -- Right Arm Weld
RAW.Part0 = RAB
RAW.Part1 = Rarm
RAW.C1 = CFrame.new(0, 0.5, 0)

local LAW = Instance.new("Weld",LAB) -- Left Arm Weld
LAW.Part0 = LAB
LAW.Part1 = Larm
LAW.C1 = CFrame.new(0, 0.5, 0)

RAW.Part1 = nil
LAW.Part1 = nil

local handle = Instance.new("Part") 
prop(handle, "Really black", Model2, 1, 1, 1) 
local handlem = Instance.new("SpecialMesh") 
mesh(handlem, handle, "Sphere", 0.25, 1.1, 0.25) 
local handlew = Instance.new("Weld") 
weld(handlew, handle, handle, char.Torso, CFrame.new(0.75, 1, 0.5) * CFrame.Angles(0, 0, -7)) 
local handle2 = Instance.new("Part") 
prop(handle2, "New Yeller", Model2, 1, 1, 1) 
local handle2m = Instance.new("CylinderMesh") 
meshp(handle2m, handle2, 0.5, 0.15, 0.5) 
local handle2w = Instance.new("Weld") 
weld(handle2w, handle2, handle2, handle, CFrame.new(0, 0.5, 0) * CFrame.Angles(7.8, 0, 0)) 
local handle3 = Instance.new("Part") 
prop(handle3, "New Yeller", Model2, 1, 1, 1) 
local handle3m = Instance.new("BlockMesh") 
meshp(handle3m, handle3, 1, 0.15, 0.25) 
local handle3w = Instance.new("Weld") 
weld(handle3w, handle3, handle3, handle, CFrame.new(0, -0.5, 0) * CFrame.Angles(0, 0, 0)) 
local handle4 = Instance.new("Part") 
prop(handle4, "Mid stone grey", Model2, 1, 4, 1) 
local handle4m = Instance.new("BlockMesh") 
meshp(handle4m, handle4, 0.5, 1, 0.15) 
local handle4w = Instance.new("Weld") 
weld(handle4w, handle4, handle4, handle, CFrame.new(0, -2.5, 0) * CFrame.Angles(0, 0, 0)) 



if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Sword" 
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
RAW.Part1 = Rarm 
LAW.Part1 = Larm 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(225*i), 0, math.rad(-25*i)) 
wait() 
end 
handlew.Part1 = Rarm 
handlew.C1 = CFrame.new(0, -1, 0) * CFrame.Angles(7.9, 8, 0) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(225-135*i), 0, math.rad(-25+25*i)) 
wait() 
end 
Attkin = false 
    mouse.Button1Down:connect(function() 
if Attkin == false then 
Attkin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+25*i), 0, math.rad(0*i)) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(115-90*i), 0, math.rad(0*i)) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(25+65*i), 0, math.rad(0*i)) 
wait() 
end 
Attkin = false 
end 
    end)
end

function onDesel(mouse)
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+135*i), 0, math.rad(-25*i)) 
wait() 
end 
handlew.Part1 = Torso 
handlew.C1 = CFrame.new(0.75, 1, 0.5) * CFrame.Angles(0, 0, -7) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(225-225*i), 0, math.rad(-25+25*i)) 
wait() 
end 
RAW.Part1 = nil 
LAW.Part1 = nil 
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
