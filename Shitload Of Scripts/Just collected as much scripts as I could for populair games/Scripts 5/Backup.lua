gui1=Instance.new("ScreenGui")
gui1.Parent=game.CoreGui
gui1.Name = "backup"
text1=Instance.new("Frame")
text1.BackgroundTransparency=1
text1.Size=UDim2.new(0,300,0,100)
text1.Position=UDim2.new(0,0,50,250)
text1.Parent=gui1
text2=Instance.new("TextButton")
text2.Size=UDim2.new(0,0,0,50)
text2.Position=UDim2.new(0,50,0,0)
text2.Text="backup"
text2.BackgroundColor3=Color3.new(0,0,0)
text2.BackgroundTransparency=0.3
text2.BorderColor3=Color3.new(255,0,0)
text2.TextColor3=Color3.new(255,0,0)
text2.Parent=text1
text2.MouseButton1Down:connect(function() 
local model = Instance.new("Model")
model.Parent = game.Lighting
model.Name = "BackUpMap"
local players = game.Workspace:GetChildren()
for _, v in pairs(players) do
if v.ClassName == "Terrain" then
print("Terrain skipped")
elseif wait() then
v.Archivable = true
v:Clone().Parent = game.Lighting.BackUpMap
end
end
end)
text3=Instance.new("TextButton")
text3.Size=UDim2.new(0,70,0,50)
text3.Position=UDim2.new(0,50,0,0)
text3.Text="restore"
text3.BackgroundColor3=Color3.new(0,0,0)
text3.BackgroundTransparency=0.3
text3.BorderColor3=Color3.new(255,0,0)
text3.TextColor3=Color3.new(255,0,0)
text3.Parent=text1
text3.MouseButton1Down:connect(function() 
local restoremap = game.Lighting.BackUpMap
restoremap.Archivable = true
restoremap:Clone().Parent = game.Workspace
end)