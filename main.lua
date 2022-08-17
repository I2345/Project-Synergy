local client = game:GetService("Players").LocalPlayer;

--// pre-warn system \\--

--[[
local game_version = client.PlayerGui.MainMenu.mainarea.version.Text
local script_supported = "v1.2.1-d"

local wf = writefile
local rf = readfile
local ifi = isfile

if isfile("EULA.synergy") then
    if readfile("EULA.synergy") == "true" then
        print("Accepeted")
    else
        if game_version ~= script_supported then
            client:Kick("Project Synergy's early warning system has kicked in, The script is out of date compared to the game so you may get banned\n Wait for it too update!\n If you wish to still use the script please accept our EULA at the following destonation\n(Workspace/EULA.synergy)")
        end
    end
else
    writefile("EULA.synergy", "false")
    if game_version ~= script_supported then
        client:Kick("Project Synergy's early warning system has kicked in, The script is out of date compared to the game so you may get banned\n Wait for it too update!\n If you wish to still use the script please accept our EULA at the following destonation\n(Workspace/EULA.synergy)")
    end
end

]]--

local lib = loadstring(game:HttpGet("https://pastebin.com/raw/9m51VUEE", true))()

lib.SetName("Project Synergy")

lib:CreateButton("FULLY WORKING!!!!", function()
end)

lib:CreateButton("Full Bright", function()
    local Lighting = game:GetService("Lighting")
    for _,v in pairs(Lighting:GetChildren()) do
        v:Destroy()
    end
end)

lib:CreateButton("Teleport to Hatch", function()
    local _w = game:GetService("Workspace")
    client.Character.HumanoidRootPart.Position = _w:FindFirstChild("Hatch").LowPart.Position
end)

lib:CreateButton("Teleport to safe space", function()
    local _w = game:GetService("Workspace")
    client.Character.HumanoidRootPart.Position = _w:FindFirstChild("ExitGate1").Wall.Position
end)

lib:CreateButton("Teleport to Random spawn location", function()
    local rs = game:GetService("ReplicatedStorage")
    client.Character.HumanoidRootPart.Position = rs.Game_Spawns.SurvivorSpawns.Location.Position
end)


lib:CreateToggle("Change Modes", function(state)
    client.Backpack.Scripts.Killer.Value = state
end)

lib:CreateToggle("Speed hacks (Killer mode only)", function(state)
   if state == true then
    client.Character.Humanoid.WalkSpeed = 50
   else
    client.Character.Humanoid.WalkSpeed = 16.9
   end
end)
