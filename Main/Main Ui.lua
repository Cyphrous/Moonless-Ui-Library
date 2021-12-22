local Players = game:GetService("Players")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local TweenService = game:GetService("TweenService")
 
local player = Players.LocalPlayer 
local playerGui = player:WaitForChild("PlayerGui")
 
local screenGui = Instance.new("ScreenGui")
screenGui.IgnoreGuiInset = true
screenGui.Parent = playerGui
local loadingRing = Instance.new("ImageLabel")
loadingRing.Size = UDim2.new(0, 256, 0, 256)
loadingRing.BackgroundTransparency = 1
loadingRing.Image = "rbxassetid://8306039034"
loadingRing.AnchorPoint = Vector2.new(0.5, 0.5)
loadingRing.Position = UDim2.new(0.5, 0, 0.5, 0)
loadingRing.Parent = screenGui
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 100
textLabel.BackgroundColor3 = Color3.fromRGB(0, 20, 40)
textLabel.Font = Enum.Font.GothamSemibold
textLabel.TextColor3 = Color3.new(0, 0, 0)
textLabel.Text = ""
textLabel.TextSize = 28
textLabel.Parent = screenGui

wait(0.5)
-- Remove the default loading screen
ReplicatedFirst:RemoveDefaultLoadingScreen()
 
local tweenInfo = TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
local tween = TweenService:Create(loadingRing, tweenInfo, {Rotation = 360})
tween:Play()
 wait(.5)
 wait(.5)
 wait(.5)
wait(.5)
 wait(.5)
 wait(.5)
wait(.5)
 wait(.5)
 wait(.5)
wait(.5)


wait(3)  -- Force screen to appear for a minimum number of seconds
if not game:IsLoaded() then
    game.Loaded:Wait()
end
screenGui:Destroy()
wait(1)
----------------DONOTTOUCHUNLESSYOUKNOWWHATYOURDOING-----------------
local DiscordLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/Cyphrous/Moonless-Ui-Library/main/Main/Source.lua'))(' ')
local win = DiscordLib:Window("Moonless Hub | Game Name")
----------------DONOTTOUCHUNLESSYOUKNOWWHATYOURDOING-----------------

--[[local serv = win:Server("Preview", "http://www.roblox.com/asset/?id=54479722")

local btns = serv:Channel("Buttons")

btns:Button("Kill all", function()
DiscordLib:Notification("Notification", "Killed everyone!", "Okay!")
end)

btns:Seperator()

btns:Button("Get max level", function()
DiscordLib:Notification("Notification", "Max level!", "Okay!")
end)

local tgls = serv:Channel("Toggles")

tgls:Toggle("Auto-Farm",false, function(bool)
print(bool)
end)

local sldrs = serv:Channel("Sliders")

local sldr = sldrs:Slider("Slide me!", 0, 1000, 400, function(t)
print(t)
end)

sldrs:Button("Change to 50", function()
sldr:Change(50)
end)

local drops = serv:Channel("Dropdowns")


local drop = drops:Dropdown("Pick me!",{"Option 1","Option 2","Option 3","Option 4","Option 5"}, function(bool)
print(bool)
end)

drops:Button("Clear", function()
drop:Clear()
end)

drops:Button("Add option", function()
drop:Add("Option")
end)

local clrs = serv:Channel("Colorpickers")

clrs:Colorpicker("ESP Color", Color3.fromRGB(255,1,1), function(t)
print(t)
end)

local textbs = serv:Channel("Textboxes")

textbs:Textbox("Gun power", "Type here!", true, function(t)
print(t)
end)

local lbls = serv:Channel("Labels")

lbls:Label("This is just a label.")

local bnds = serv:Channel("Binds")

bnds:Bind("Kill bind", Enum.KeyCode.RightShift, function()
print("Killed everyone!")
end)

serv:Channel("by dawid#7205")--]]
--_________________________________________________
--___________________SCRIPT_UPDATE___________________________--
win:Server("Change Logs", "http://www.roblox.com/asset/?id=8306117050")


--___________________Script tab___________________________--
win:Server("Scripts", "http://www.roblox.com/asset/?id=8306097924")



--___________________PLAYER_TAB___________________________--
local plt = win:Server("Player", "http://www.roblox.com/asset/?id=8306055606")
local tab1 = plt:Channel("Player Tab")
    tab1:Label("Speed And Jump")
    tab1:Seperator()
    tab1:Slider("Speed", 0, 500, 16, function(value)
        speed = value
        end)
    tab1:Slider("Jump", 0, 500, 55, function(value)
        jump = value
        end)
    tab1:Toggle("Enable Speed & Jump",false, function(value)
        Boosts = value
    while Boosts do
        if Boosts == true then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
        wait()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = jump
        wait()
        else
            speed = 16
            wait()
            jump = 55
            wait()
        end
    end
        end)
        tab1:Seperator()
        tab1:Label("Anti AFK")
        tab1:Toggle("Toggle Anti AFK :",false, function(value)
            if value == false then
                DiscordLib:Notification("ANTI AFK:", "DeActivated", "Okay!")
            else
                DiscordLib:Notification("ANTI AFK:", "Activated", "Okay!")
            end
            AntiAFK = value
            while AntiAFK do wait()
                local vu = game:GetService("VirtualUser")
               game:GetService("Players").LocalPlayer.Idled:connect(function()
                  vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                  wait(1)
                  vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
               end)
            end
         end)
         tab1:Seperator()
--___________________ABOUTUS___________________________--
local abt = win:Server("About Us", "http://www.roblox.com/asset/?id=8306039034")
local chn = abt:Channel("Credits")
local Scls = abt:Channel("Socials")
----Credits
chn:Label("Made by")
chn:Seperator()
chn:Button("Viale", function()
    DiscordLib:Notification("Contact:", "Discord ID:\n Viale#2712", "Copy ID!")
    setclipboard("Viale#2712")
end)
chn:Seperator()

----Socials
Scls:Label("Discord Server")
Scls:Seperator()
Scls:Button("Discord Invite", function()
    DiscordLib:Notification("Would You like to Join Our Discord ?", "Discord Invite:\n https://discord.gg/E3uvKKRNdN", "Hell Yeah \n Copy ID!")
    setclipboard("https://discord.gg/HpPBpgJVyb")
end)
Scls:Seperator()
Scls:Label("Website")
Scls:Seperator()
Scls:Button("Check Our Website !", function()
    DiscordLib:Notification("Would You like to See More Script ?", "Website Link:\n http://moonless.site", "Hell Yeah \n Copy ID!")
    setclipboard("https://www.youtube.com/channel/UCM3WvefUMUeiM-inCBcFlIA")
end)
Scls:Seperator()

----UI CONTROL
