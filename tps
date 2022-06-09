
-- Instances:
 
local ily = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local localplrname = game.Players.LocalPlayer.Name 
--Properties:
 
ily.Name = " "
 
 
--coregui needed
 
 
ily.Parent = game:WaitForChild("CoreGui")
 
 
 
Frame.Parent = ily
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.500
Frame.BorderColor3 = Color3.fromRGB(234, 188, 74)
Frame.BorderSizePixel = 2
Frame.Position = UDim2.new(0.393305451, 0, 0.4381271, 0)
Frame.Size = UDim2.new(0, 152, 0, 73)
Frame.Selectable = true
Frame.Active = true
Frame.Draggable = true
 
 
TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
TextBox.BackgroundTransparency = 1.000
TextBox.Position = UDim2.new(0.513157904, 0, 0.616437912, 0)
TextBox.Size = UDim2.new(0, 74, 0, 34)
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 0, 255)
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
local text = TextBox.Text
 
TextLabel.Parent = Frame
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.255202651, 0, -0.0102626849, 0)
TextLabel.Size = UDim2.new(0, 75, 0, 38)
TextLabel.Text = "supremcmds"
TextLabel.TextColor3 = Color3.fromRGB(255, 85, 255)
 
TextLabel_2.Parent = Frame
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(-0.0855263323, 0, 0.68548125, 0)
TextLabel_2.Size = UDim2.new(0, 100, 0, 22)
TextLabel_2.Text = "jaaj >>"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 85, 255)
TextLabel_2.TextSize = 7.000
TextLabel_2.TextWrapped = true
function del()
    TextBox.Text = ""
end
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "test" then
            del()
            print("test")
        end
    end
end)
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "mreach" then
            del()
            --reach click
            local player = game.Players.LocalPlayer
            local mouse = player:GetMouse()
            mouse.Button1Down:Connect(function()
                local args = {
                    [1] = workspace.TPSSystem.TPS,
                    [2] = game:GetService("Players").LocalPlayer.Character["Right Leg"]
                }
                
                workspace.FE.Dribble.Dribble:FireServer(unpack(args))
            end)
        end
    end
end)
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "chestreach" then
            del()
            local USER = game.Players.LocalPlayer.Name
            game:GetService("UserInputService").InputBegan:Connect(function(K,g)
                if g then return end
                if K.KeyCode == Enum.KeyCode.X then
                    local ball = game:GetService("Workspace").TPSSystem.TPS
                    local rleg = game:GetService("Workspace")[USER]["Right Leg"]
                    local Event = game:GetService("Workspace").FE.Dribble.ChestControl
                    Event:FireServer(ball, rleg)
                end
            end)
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "flickreach" then
            del()
            local USER = game.Players.LocalPlayer.Name
            game:GetService("UserInputService").InputBegan:Connect(function(K,g)
                if g then return end
                if K.KeyCode == Enum.KeyCode.Y then
                    local ball = game:GetService("Workspace").TPSSystem.TPS
                    local rleg = game:GetService("Workspace")[USER]["Right Leg"]
                    local Event = game:GetService("Workspace").FE.Dribble.TrickUp
                    Event:FireServer(ball, rleg)
                end
            end)
        end
    end
end)

TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "level100" then
            del()
            while true do
                wait()
                local args = {
                    [1] = 100
                }
                
                workspace.FE.XP.Level:FireServer(unpack(args))
            end
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "level45" then
            del()
            while true do
                wait()
                local args = {
                    [1] = 60
                }
                
                workspace.FE.XP.Level:FireServer(unpack(args))
            end
        end
    end
end)
 
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "brightness" then
            del()
            local s = Instance.new("PointLight", game.Players.LocalPlayer.Character.Head)
            s.Brightness = .3
            s.Range = 100
            
            game.Lighting.Changed:connect(function()
                game.Lighting.TimeOfDay = "14:00:00"
                game.Lighting.FogEnd = 9999
                game.Lighting.Brightness = 2
                game.Lighting.ColorCorrection.Brightness = 0.1
                game.Lighting.ColorCorrection.Saturation = 0.1
                game.Lighting.Bloom.Intensity = 0.1
            end)
        end
    end
end)
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "acf" then
            del()
            local Player = game.Players.LocalPlayer
            local Mouse = Player:GetMouse()
            Mouse.KeyDown:connect(function(catch)
                catch:lower()
                if catch == "f" then
                    for i,balls in pairs(game.Workspace:GetDescendants()) do
                        if balls.Name == "TPS" then
                            balls.Position = Player.Character["HumanoidRootPart"].Position
                        end
                    end
                end
            end)
        end
    end
end)
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "inqac" then
            del()
            local USER = game.Players.LocalPlayer.Name
            game:GetService("UserInputService").InputBegan:Connect(function(K,g)
                if g then return end
                if K.KeyCode == Enum.KeyCode.F then
                    local args = {
                        [1] = workspace.TPSSystem.TPS
                    }
                    
                    workspace.FE.Attach.RemoteEvent:FireServer(unpack(args))
                    
                end
            end)
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "stamina" then
            del()
            local RunService = game:GetService("RunService")
            RunService.RenderStepped:connect(function()
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 22
            end)
            local e = game:GetService("\82\117\110\83\101\114\118\105\99\101") e.RenderStepped:connect(function() local c = game:GetService("\80\108\97\121\101\114\115").LocalPlayer.PlayerGui.Start.Points.StaminaBar c.Size = UDim2.new(0,200,0,3) c.Name = "" end)
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "deleteanticheat" then
            del()
            local plr = game.Players.LocalPlayer
            local plrc = plr.Character
            local antic = plrc[" "]
            antic.Name = "inqio"
            local antic2 = plrc.inqio
            antic2:Destroy()
        end
    end
end)

 
 TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "bighead" then
            del()
            game.Players.LocalPlayer.Character["Head"].Size = Vector3.new(2,2,2)
            game.Players.LocalPlayer.Character.Head.Transparency = 0.5

        end
    end
end)
 

TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "b" then
            del()
            game.Players.LocalPlayer.Character["Right Leg"].Size = Vector3.new(3,2,3) 
            game.Players.LocalPlayer.Character["Right Leg"].Transparency = 0.5
                        game.Players.LocalPlayer.Character["Head"].Size = Vector3.new(2,2,2)
                                    game.Players.LocalPlayer.Character.Head.Transparency = 0.5



        end
    end
end)


TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "antirc" then
            del()
            local mt = getrawmetatable(game)
make_writeable(mt)

local namecall = mt.namecall

mt.namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if method == "FireServer" and tostring(self) == "Card2" then
            return;
        end
    return namecall(self, table.unpack(args))
end)

        end
    end
end)


TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "header" then
            del()
            local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(catch)
catch:lower()
if catch == "t" then
    for i,balls in pairs(game.Workspace:GetDescendants()) do
        if balls.Name == "TPS" then
            balls.Position = Player.Character["HumanoidRootPart"].Position
        end
    end
end
end)

        end
    end
end) 


TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "bighand" then
            del()
            game.Players.LocalPlayer.Character["Right Arm"].Size = Vector3.new(4,4,4)
            game.Players.LocalPlayer.Character["Left Arm"].Size = Vector3.new(4,4,4)
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "v1" then
            del()
            local ScreenGui = Instance.new("ScreenGui")
            local Frame = Instance.new("Frame")
            local Frame1 = Instance.new("Frame")
            local Frame2 = Instance.new("Frame")
            local TextButton = Instance.new("TextButton")
            local TextButton2 = Instance.new("TextButton")
            local TextButton3 = Instance.new("TextButton")
            local TextButton4 = Instance.new("TextButton")
            local TextButton5 = Instance.new("TextButton")
            local TextButton6 = Instance.new("TextButton")
            local TextButton1 = Instance.new("TextButton")
            local TextButton0 = Instance.new("TextButton")
            local TextButton7 = Instance.new("TextButton")
            local TextLabel2 = Instance.new("TextLabel")
            Frame.Visible = false
            Frame1.Visible = false
            Frame2.Visible = false
            TextButton.Visible = false
            TextButton.Active = false
            TextButton2.Visible = false
            TextButton2.Active = false
            TextButton3.Visible = false
            TextButton3.Active = false
            TextButton4.Visible = false
            TextButton4.Active = false
            TextButton5.Visible = false
            TextButton5.Active = false
            TextButton6.Visible = false
            TextButton6.Active = false
            TextButton7.Visible = false
            TextButton7.Active = false
            TextLabel2.Visible = false
            TextButton1.MouseButton1Click:connect(function()
                Frame.Visible = true
                Frame1.Visible = true
                Frame2.Visible = true
                TextButton.Visible = true
                TextButton.Active = true
                TextButton2.Visible = true
                TextButton2.Active = true
                TextButton3.Visible = true
                TextButton3.Active = true
                TextButton4.Visible = true
                TextButton4.Active = true
                TextButton5.Visible = true
                TextButton5.Active = true
                TextButton6.Visible = true
                TextButton6.Active = true
                TextButton7.Visible = true
                TextButton7.Active = true
                TextLabel2.Visible = true
            end)
            TextButton0.MouseButton1Click:connect(function()
                Frame.Visible = false
                Frame1.Visible = false
                Frame2.Visible = false
                TextButton.Visible = false
                TextButton.Active = false
                TextButton2.Visible = false
                TextButton2.Active = false
                TextButton3.Visible = false
                TextButton3.Active = false
                TextButton4.Visible = false
                TextButton4.Active = false
                TextButton5.Visible = false
                TextButton5.Active = false
                TextButton6.Visible = false
                TextButton6.Active = false
                TextButton7.Visible = false
                TextButton7.Active = false
                TextLabel2.Visible = false  
            end)
            TextButton.MouseButton1Click:connect(function()
                local USER = game.Players.LocalPlayer.Name
                game:GetService("UserInputService").InputBegan:Connect(function(K,g)
                    if g then return end
                    if K.KeyCode == Enum.KeyCode.X then
                        local ball = game:GetService("Workspace").TPSSystem.TPS
                        local rleg = game:GetService("Workspace")[USER]["Right Leg"]
                        local Event = game:GetService("Workspace").FE.Dribble.Dribble
                        Event:FireServer(ball, rleg)
                    end
                end)
            end)
            TextButton2.MouseButton1Click:connect(function()
                warn("Ball NoClip Loaded")
                while wait(5) do
                    game.Workspace.TPSSystem.TPS.CanCollide = false
                end
            end)
            TextButton3.MouseButton1Click:connect(function()
                warn("Ball NoClip Loaded")
                while wait(5) do
                    game.Workspace.TPSSystem.TPS.CanCollide = true
                end
            end)
            TextButton4.MouseButton1Click:connect(function()
                local TPS = game.Workspace.TPSSystem.TPS
                local Torso = game.Workspace.Name.Torso
                
                while true do 
                    wait()
                    game.Workspace.FE.GK.Save5:FireServer(TPS, Torso)
                end
            end)
            TextButton5.MouseButton1Click:connect(function()
                local RunService = game:GetService("RunService")
                RunService.RenderStepped:connect(function()
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 22
                end)
            end)
            TextButton6.MouseButton1Click:connect(function()
                local e = game:GetService("\82\117\110\83\101\114\118\105\99\101") e.RenderStepped:connect(function() local c = game:GetService("\80\108\97\121\101\114\115").LocalPlayer.PlayerGui.Start.Points.StaminaBar c.Size = UDim2.new(0,200,0,3) c.Name = "" end)
            end)
            TextButton7.MouseButton1Click:connect(function()
                --op reach script raviox credit balaur help
                -- E for pass back
                -- C for Fake touch
                -- X for Chest
                -- Y for Flick
                -- Q for rabona
                -- Mouse Click for reach
                -- (Right Foot)
                local L_1_ = game.Players.LocalPlayer.Name
                game:GetService("UserInputService").InputBegan:Connect(function(L_5_arg1, L_6_arg2)
                    if L_6_arg2 then
                        return
                    end
                    if L_5_arg1.KeyCode == Enum.KeyCode.E then
                        local L_7_ = game:GetService("Workspace").TPSSystem.TPS
                        local L_8_ = game:GetService("Workspace")[L_1_]["Right Leg"]
                        local L_9_ = game:GetService("Workspace").FE.Pass.DragBack
                        L_9_:FireServer(L_7_, L_8_)
                    end
                end)
                local L_2_ = game.Players.LocalPlayer.Name
                game:GetService("UserInputService").InputBegan:Connect(function(L_10_arg1, L_11_arg2)
                    if L_11_arg2 then
                        return
                    end
                    if L_10_arg1.KeyCode == Enum.KeyCode.C then
                        local L_12_ = game:GetService("Workspace").TPSSystem.TPS
                        local L_13_ = game:GetService("Workspace")[L_2_]["Right Leg"]
                        local L_14_ = game:GetService("Workspace").FE.Dribble.FakeTouch
                        L_14_:FireServer(L_12_, L_13_)
                    end
                end)
                game:GetService("UserInputService").InputBegan:Connect(function(L_15_arg1, L_16_arg2)
                    if L_16_arg2 then
                        return
                    end
                    if L_15_arg1.KeyCode == Enum.KeyCode.X then
                        local L_17_ = game:GetService("Workspace").TPSSystem.TPS
                        local L_18_ = game:GetService("Workspace")[L_2_]["Right Leg"]
                        local L_19_ = game:GetService("Workspace").FE.Dribble.ChestControl
                        L_19_:FireServer(L_17_, L_18_)
                    end
                end)
                game:GetService("UserInputService").InputBegan:Connect(function(L_20_arg1, L_21_arg2)
                    if L_21_arg2 then
                        return
                    end
                    if L_20_arg1.KeyCode == Enum.KeyCode.Y then
                        local L_22_ = game:GetService("Workspace").TPSSystem.TPS
                        local L_23_ = game:GetService("Workspace")[L_2_]["Right Leg"]
                        local L_24_ = game:GetService("Workspace").FE.Dribble.TrickUp
                        L_24_:FireServer(L_22_, L_23_)
                    end
                end)
                game:GetService("UserInputService").InputBegan:Connect(function(L_25_arg1, L_26_arg2)
                    if L_26_arg2 then
                        return
                    end
                    if L_25_arg1.KeyCode == Enum.KeyCode.Q then
                        local L_27_ = game:GetService("Workspace").TPSSystem.TPS
                        local L_28_ = game:GetService("Workspace")[L_2_]["Right Leg"]
                        local L_29_ = game:GetService("Workspace").FE.Long.SkillLong
                        L_29_:FireServer(L_27_, L_28_)
                    end
                end)
                local L_3_ = game:GetService("Players").LocalPlayer
                local L_4_ = L_3_:GetMouse()
                L_4_.Button1Down:Connect(function(L_30_arg1)
                    local L_31_ = game:GetService("Workspace").TPSSystem.TPS
                    local L_32_ = game:GetService("Workspace")[L_2_]["Right Leg"]
                    local L_33_ = game:GetService("Workspace").FE.Dribble.Dribble
                    L_33_:FireServer(L_31_, L_32_)
                end)
            end)
            
            ScreenGui.Parent = game:WaitForChild("CoreGui")
            ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            
            Frame.Parent = ScreenGui
            Frame.BackgroundColor3 = Color3.fromRGB(24, 0, 24)
            Frame.Position = UDim2.new(0.184649616, 0, 0.242152482, 0)
            Frame.Size = UDim2.new(0, 586, 0, 344)
            
            Frame1.Name = "Frame1"
            Frame1.Parent = ScreenGui
            Frame1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Frame1.Position = UDim2.new(0.184649616, 0, 0.242152467, 0)
            Frame1.Size = UDim2.new(0, 586, 0, 12)
            
            Frame2.Name = "Frame2"
            Frame2.Parent = ScreenGui
            Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            Frame2.Position = UDim2.new(0.184649616, 0, 0.738415539, 0)
            Frame2.Size = UDim2.new(0, 586, 0, 12)
            
            TextButton.Parent = ScreenGui
            TextButton.Active = false
            TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            TextButton.Position = UDim2.new(0.206896558, 0, 0.294469357, 0)
            TextButton.Size = UDim2.new(0, 115, 0, 50)
            TextButton.Font = Enum.Font.SourceSans
            TextButton.Text = "REACH"
            TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton.TextScaled = true
            TextButton.TextSize = 14.000
            TextButton.TextWrapped = true
            
            TextButton2.Name = "TextButton2"
            TextButton2.Parent = ScreenGui
            TextButton2.Active = false
            TextButton2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            TextButton2.Position = UDim2.new(0.369299233, 0, 0.294469357, 0)
            TextButton2.Size = UDim2.new(0, 115, 0, 50)
            TextButton2.Font = Enum.Font.SourceSans
            TextButton2.Text = "noclip ball"
            TextButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton2.TextScaled = true
            TextButton2.TextSize = 14.000
            TextButton2.TextWrapped = true
            
            TextButton3.Name = "TextButton3"
            TextButton3.Parent = ScreenGui
            TextButton3.Active = false
            TextButton3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            TextButton3.Position = UDim2.new(0.53615129, 0, 0.294469357, 0)
            TextButton3.Size = UDim2.new(0, 115, 0, 50)
            TextButton3.Font = Enum.Font.SourceSans
            TextButton3.Text = "clip ball"
            TextButton3.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton3.TextScaled = true
            TextButton3.TextSize = 14.000
            TextButton3.TextWrapped = true
            
            TextButton4.Name = "TextButton4"
            TextButton4.Parent = ScreenGui
            TextButton4.Active = false
            TextButton4.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            TextButton4.Position = UDim2.new(0.69299221, 0, 0.294469357, 0)
            TextButton4.Size = UDim2.new(0, 115, 0, 50)
            TextButton4.Font = Enum.Font.SourceSans
            TextButton4.Text = "float ball"
            TextButton4.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton4.TextScaled = true
            TextButton4.TextSize = 14.000
            TextButton4.TextWrapped = true
            
            TextButton5.Name = "TextButton5"
            TextButton5.Parent = ScreenGui
            TextButton5.Active = false
            TextButton5.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            TextButton5.Position = UDim2.new(0.206896544, 0, 0.46038866, 0)
            TextButton5.Size = UDim2.new(0, 115, 0, 50)
            TextButton5.Font = Enum.Font.GothamBold
            TextButton5.Text = "RUN SCRIPT"
            TextButton5.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton5.TextScaled = true
            TextButton5.TextSize = 14.000
            TextButton5.TextWrapped = true
            
            TextButton6.Name = "TextButton6"
            TextButton6.Parent = ScreenGui
            TextButton6.Active = false
            TextButton6.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            TextButton6.Position = UDim2.new(0.369299233, 0, 0.46038866, 0)
            TextButton6.Size = UDim2.new(0, 115, 0, 50)
            TextButton6.Font = Enum.Font.GothamBold
            TextButton6.Text = "STAMINA WORKING"
            TextButton6.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton6.TextScaled = true
            TextButton6.TextSize = 14.000
            TextButton6.TextWrapped = true
            
            TextButton1.Name = "TextButton1"
            TextButton1.Parent = ScreenGui
            TextButton1.BackgroundColor3 = Color3.fromRGB(24, 0, 24)
            TextButton1.Position = UDim2.new(0, 0, 0.46038866, 0)
            TextButton1.Size = UDim2.new(0, 95, 0, 50)
            TextButton1.Font = Enum.Font.SourceSans
            TextButton1.Text = "Open"
            TextButton1.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton1.TextScaled = true
            TextButton1.TextSize = 14.000
            TextButton1.TextWrapped = true
            
            TextButton0.Name = "TextButton0"
            TextButton0.Parent = ScreenGui
            TextButton0.BackgroundColor3 = Color3.fromRGB(24, 0, 24)
            TextButton0.Position = UDim2.new(0, 0, 0.385650218, 0)
            TextButton0.Size = UDim2.new(0, 95, 0, 50)
            TextButton0.Font = Enum.Font.SourceSans
            TextButton0.Text = "Close"
            TextButton0.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton0.TextScaled = true
            TextButton0.TextSize = 14.000
            TextButton0.TextWrapped = true
            
            TextButton7.Name = "TextButton7"
            TextButton7.Parent = ScreenGui
            TextButton7.Active = false
            TextButton7.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            TextButton7.Position = UDim2.new(0.53615129, 0, 0.461883426, 0)
            TextButton7.Size = UDim2.new(0, 115, 0, 50)
            TextButton7.Font = Enum.Font.GothamBold
            TextButton7.Text = "OP REACH"
            TextButton7.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton7.TextScaled = true
            TextButton7.TextSize = 14.000
            TextButton7.TextWrapped = true
            
            TextLabel2.Name = "TextLabel2"
            TextLabel2.Parent = ScreenGui
            TextLabel2.BackgroundColor3 = Color3.fromRGB(24, 0, 24)
            TextLabel2.Position = UDim2.new(0.388209134, 0, 0.663677096, 0)
            TextLabel2.Size = UDim2.new(0, 200, 0, 50)
            TextLabel2.Font = Enum.Font.SourceSans
            TextLabel2.Text = "INQ CREDITS / Ravinq#9120 / Baiaur "
            TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel2.TextScaled = true
            TextLabel2.TextSize = 14.000
            TextLabel2.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel2.TextWrapped = true
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "trollgk" then
            del()
            while wait() do
                local args = {
                    [1] = workspace.TPSSystem.TPS
                }
                
                workspace.FE.Attach.RemoteEvent:FireServer(unpack(args))
            end
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "level66" then
            while true do
                wait()
                local args = {
                    [1] = 66
                }
                
                workspace.FE.XP.Level:FireServer(unpack(args))
            end
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "floatball1" then
            del()
            local TPS = game.Workspace.TPSSystem.TPS
            local Torso = game.Workspace.Name.Torso
            
            while true do 
                wait()
                game.Workspace.FE.GK.Save5:FireServer(TPS, Torso)
            end
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "floatball2" then
            del()
            --made by Balaur (inq edition)
            local RunService = game:GetService("RunService")
            local power = 0
            local height = 100000000000
            local name = game.Players.LocalPlayer.Character
            function onKeyPress(powerkick, gameProcessedEvent)
                while wait() do
                    local A_1 = game:GetService("Workspace").TPSSystem.TPS
                    local A_2 = name["Right Leg"]
                    local A_3 = name.Torso
                    local A_4 = power
                    local A_5 = height
                    local A_6 = Vector3.new(1,0,0)
                    local Event = game:GetService("Workspace").FE.Shoot.Shoot
                    Event:FireServer(A_1, A_2, A_3, A_4, A_5, A_6)
                end
            end
            game:GetService("UserInputService").InputBegan:connect(onKeyPress)
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "gravoff" then
            del()
            --made by Balaur (inq edition)
            local RunService = game:GetService("RunService")
            local power = 1000000000
            local height = 0
            local name = game.Players.LocalPlayer.Character
            function onKeyPress(powerkick, gameProcessedEvent)
                RunService.RenderStepped:connect(function()
                    local A_1 = game:GetService("Workspace").TPSSystem.TPS
                    local A_2 = name["Right Leg"]
                    local A_3 = name.Torso
                    local A_4 = power
                    local A_5 = height
                    local A_6 = Vector3.new(1,0,0)
                    local Event = game:GetService("Workspace").FE.Shoot.Shoot
                    Event:FireServer(A_1, A_2, A_3, A_4, A_5, A_6)
                end)
            end
            game:GetService("UserInputService").InputBegan:connect(onKeyPress)
        end
    end
end)
 
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "cmdx" then
            del()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "antiinjure" then
            del()
            while wait() do
                game:GetService("Workspace").FE.CardsPointsInjures.Injured:Destroy()
                game:GetService("Workspace").FE.CardsPointsInjures.InjuredC:Destroy()
                game:GetService("Workspace").FE.CardsPointsInjures.InjuredValue:Destroy()
            end
        end
    end
end)
 
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "noclip" then
            del()
            game:GetService('RunService').Stepped:connect(function()
                game.Players.LocalPlayer.Character.Torso.CanCollide = false
                game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
                game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
            end)
        end
        
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "noclipball" then
            del()
            game.Workspace.TPSSystem.TPS.CanCollide = false
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "clipball" then
            del()
                game.Workspace.TPSSystem.TPS.CanCollide = true
                game.Players.LocalPlayer.Character.Torso.CanCollide = true
                game.Players.LocalPlayer.Character["Left Leg"].CanCollide = true
                game.Players.LocalPlayer.Character["Right Leg"].CanCollide = true
                game.Players.LocalPlayer.Character["Head"].CanCollide = true
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "revizadmin" then
            del()
            loadstring(game:HttpGet("https://pastebin.com/raw/KNUzQPYS", true))()
        end
    end
end)
 
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "tptomiddle" then
            del()
            local Event = game:GetService("Workspace").FE.TakeD.MTake2
            Event:FireServer()
        end
    end
end)
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "greenteam" then
            del()
            local Event = game:GetService("Workspace").FE.CTeamColor.RemoteEventG
            Event:FireServer()
            local Event2 = game:GetService("Workspace").FE.Jerseys.ShirtUpdate
            Event2:FireServer()
            local Event3 = game:GetService("Workspace").FE.Jerseys.PantsUpdate
            Event3:FireServer()
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "greenteamgk" then
            del()
            local Event = game:GetService("Workspace").FE.CTeamColor.RemoteEventGGK
            Event:FireServer()
            local Event2 = game:GetService("Workspace").FE.Jerseys.ShirtUpdate
            Event2:FireServer()
            local Event3 = game:GetService("Workspace").FE.Jerseys.PantsUpdate
            Event3:FireServer()
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "blueteam" then
            del()
            local Event = game:GetService("Workspace").FE.CTeamColor.RemoteEventB
            Event:FireServer()
            local Event2 = game:GetService("Workspace").FE.Jerseys.ShirtUpdate
            Event2:FireServer()
            local Event3 = game:GetService("Workspace").FE.Jerseys.PantsUpdate
            Event3:FireServer()
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "blueteamgk" then
            del()
            local Event = game:GetService("Workspace").FE.CTeamColor.RemoteEventBGK
            Event:FireServer()
            local Event2 = game:GetService("Workspace").FE.Jerseys.ShirtUpdate
            Event2:FireServer()
            local Event3 = game:GetService("Workspace").FE.Jerseys.PantsUpdate
            Event3:FireServer()
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "opreach" then
            del()
            --op reach script raviox credit balaur help
            -- E for pass back
            -- C for Fake touch
            -- X for Chest
            -- Y for Flick
            -- Q for rabona
            -- Mouse Click for reach
            -- (Right Foot)
            local L_1_ = game.Players.LocalPlayer.Name
            game:GetService("UserInputService").InputBegan:Connect(function(L_5_arg1, L_6_arg2)
                if L_6_arg2 then
                    return
                end
                if L_5_arg1.KeyCode == Enum.KeyCode.E then
                    local L_7_ = game:GetService("Workspace").TPSSystem.TPS
                    local L_8_ = game:GetService("Workspace")[L_1_]["Right Leg"]
                    local L_9_ = game:GetService("Workspace").FE.Pass.DragBack
                    L_9_:FireServer(L_7_, L_8_)
                end
            end)
            local L_2_ = game.Players.LocalPlayer.Name
            game:GetService("UserInputService").InputBegan:Connect(function(L_10_arg1, L_11_arg2)
                if L_11_arg2 then
                    return
                end
                if L_10_arg1.KeyCode == Enum.KeyCode.C then
                    local L_12_ = game:GetService("Workspace").TPSSystem.TPS
                    local L_13_ = game:GetService("Workspace")[L_2_]["Right Leg"]
                    local L_14_ = game:GetService("Workspace").FE.Dribble.FakeTouch
                    L_14_:FireServer(L_12_, L_13_)
                end
            end)
            game:GetService("UserInputService").InputBegan:Connect(function(L_15_arg1, L_16_arg2)
                if L_16_arg2 then
                    return
                end
                if L_15_arg1.KeyCode == Enum.KeyCode.X then
                    local L_17_ = game:GetService("Workspace").TPSSystem.TPS
                    local L_18_ = game:GetService("Workspace")[L_2_]["Right Leg"]
                    local L_19_ = game:GetService("Workspace").FE.Dribble.ChestControl
                    L_19_:FireServer(L_17_, L_18_)
                end
            end)
            game:GetService("UserInputService").InputBegan:Connect(function(L_20_arg1, L_21_arg2)
                if L_21_arg2 then
                    return
                end
                if L_20_arg1.KeyCode == Enum.KeyCode.Y then
                    local L_22_ = game:GetService("Workspace").TPSSystem.TPS
                    local L_23_ = game:GetService("Workspace")[L_2_]["Right Leg"]
                    local L_24_ = game:GetService("Workspace").FE.Dribble.TrickUp
                    L_24_:FireServer(L_22_, L_23_)
                end
            end)
            game:GetService("UserInputService").InputBegan:Connect(function(L_25_arg1, L_26_arg2)
                if L_26_arg2 then
                    return
                end
                if L_25_arg1.KeyCode == Enum.KeyCode.Q then
                    local L_27_ = game:GetService("Workspace").TPSSystem.TPS
                    local L_28_ = game:GetService("Workspace")[L_2_]["Right Leg"]
                    local L_29_ = game:GetService("Workspace").FE.Long.SkillLong
                    L_29_:FireServer(L_27_, L_28_)
                end
            end)
            local L_3_ = game:GetService("Players").LocalPlayer
            local L_4_ = L_3_:GetMouse()
            L_4_.Button1Down:Connect(function(L_30_arg1)
                local L_31_ = game:GetService("Workspace").TPSSystem.TPS
                local L_32_ = game:GetService("Workspace")[L_2_]["Right Leg"]
                local L_33_ = game:GetService("Workspace").FE.Dribble.Dribble
                L_33_:FireServer(L_31_, L_32_)
            end)
        end
    end
end)
 
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "dribblef" then
            del()
            local USER = game.Players.LocalPlayer.Name
            game:GetService("UserInputService").InputBegan:Connect(function(K,g)
                if g then return end
                if K.KeyCode == Enum.KeyCode.F then
                    local ball = game:GetService("Workspace").TPSSystem.TPS
                    local rleg = game:GetService("Workspace")[USER]["Right Leg"]
                    local Event = game:GetService("Workspace").FE.Dribble.Stop
                    Event:FireServer(ball, rleg)
                end
            end)
        end
    end
end)
 
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "dribblen" then
            del()
            local USER = game.Players.LocalPlayer.Name
            game:GetService("UserInputService").InputBegan:Connect(function(K,g)
                if g then return end
                if K.KeyCode == Enum.KeyCode.N then
                    local ball = game:GetService("Workspace").TPSSystem.TPS
                    local rleg = game:GetService("Workspace")[USER]["Right Leg"]
                    local Event = game:GetService("Workspace").FE.Dribble.Rainbow
                    Event:FireServer(ball, rleg)
                end
            end)
        end
    end
end)
 
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "betayfun" then
            del()
            game.Players.LocalPlayer.UserId = "1571620"
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "deletereply" then
            del()
            while true do
                wait()
                local reply = game.Players.LocalPlayer.PlayerScripts.Reply
                reply:Destroy()
                game:GetService("Workspace").TeleAll:Destroy()
                game:GetService("Workspace").VAR:Destroy()
                game:GetService("Workspace").VARReview:Destroy()
                game:GetService("ReplicatedStorage").FE.ReplayHit:Destroy()
            end
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "shootreachk" then
            del()
            local USER = game.Players.LocalPlayer.Name
            game:GetService("UserInputService").InputBegan:Connect(function(K,g)
                if g then return end
                if K.KeyCode == Enum.KeyCode.K then
                    local args = {
                        [1] = workspace.TPSSystem.TPS,
                        [2] = game:GetService("Players").LocalPlayer.Character["Right Leg"],
                        [3] = game:GetService("Players").LocalPlayer.Character.Torso,
                        [4] = "90",
                        [5] = "75",
                        [6] = Vector3.new(4000000, 1250, 4000000),
                        [7] = false,
                        [8] = false
                    }
                    
                    workspace.FE.Shoot.Shoot:FireServer(unpack(args))
                end
            end)
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "defxp" then
            del()
            while true do
                wait()
                workspace.FE.XP.Defence:FireServer()
            end
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "unb" then
            del()
            game.Players.LocalPlayer.Character["Right Leg"].Size = Vector3.new(1,2,1)
            game.Players.LocalPlayer.Character["Right Arm"].Size = Vector3.new(1,2,1)
            game.Players.LocalPlayer.Character["Left Arm"].Size = Vector3.new(1,2,1)
            game.Players.LocalPlayer.Character["Head"].Size = Vector3. new(1,1,1)
            game.Players.LocalPlayer.Character["Left Leg"].Size = Vector3.new(1,2,1)
            game.Players.LocalPlayer.Character["Chest"].Size = Vector3.new(1,2,1)
            game.Players.LocalPlayer.Character["Right Leg"].Transparency = 1.0
            game.Players.LocalPlayer.Character.Head.Transparency = 1.0



        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "fly" then
            del()
            repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and (game.Players.LocalPlayer.Character:findFirstChild("Torso") or game.Players.LocalPlayer.Character:findFirstChild("UpperTorso")) and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
            local mouse = game.Players.LocalPlayer:GetMouse() 
            repeat wait() until mouse
            local plr = game.Players.LocalPlayer 
            local torso = game.Players.LocalPlayer.Character:findFirstChild("Torso") or game.Players.LocalPlayer.Character:findFirstChild("UpperTorso")
            local flying = true
            local deb = true 
            local ctrl = {f = 0, b = 0, l = 0, r = 0} 
            local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
            local maxspeed = 50 
            local speed = 0 
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
                speed = 0 
                bg:Destroy() 
                bv:Destroy() 
                plr.Character.Humanoid.PlatformStand = false 
            end 
            mouse.KeyDown:connect(function(key) 
                if key:lower() == "e" then 
                    if flying then flying = false 
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
            
            _G.unfly = function()
                flying = false
            end
            
            Fly()
            ---------------------------------------------------------------------------------fly
        end
    end
end)
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "rejoin" then
            del()
            local ts = game:GetService("TeleportService")
            local p = game:GetService("Players").LocalPlayer
            ts:Teleport(game.PlaceId, p)
        end
    end
end)
 
 
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if TextBox.Text == "bigandstam" then
            del()
            game.Players.LocalPlayer.Character["Right Leg"].Size = Vector3.new(3,2,3) 
            game.Players.LocalPlayer.Character["Right Leg"].Transparency = 0.5
        end
    end
end)
 
game:GetService("UserInputService").InputBegan:Connect(function(K,g)
    if g then return end
    if K.KeyCode == Enum.KeyCode.Comma then
        if Frame.Visible == true then
            Frame.Visible = false
        else
            Frame.Visible = true
        end
        
    end
end)
 
if Frame.Visible == true then
    while wait() do
        ily.Name = math.random(1,99999)
    end
end
