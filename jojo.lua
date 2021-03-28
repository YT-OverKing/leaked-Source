local library = {}

for _,v in pairs(game.CoreGui:GetChildren()) do
    if v:IsA("ScreenGui") then
        if v.Name == "ShuShiUiLib" then
            v:Destroy()
        end
    end
end
local first_window = nil
local first_title = nil
local shushiuilib = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
Instance.new("UICorner", Frame)
local ImageLabel = Instance.new("ImageLabel")
local MenuBar = Instance.new("ScrollingFrame")
local UIPadding_2 = Instance.new("UIPadding")
-- setting ----
Frame.Active = true
Frame.Draggable = true
---------------
shushiuilib.Name = "ShuShiUiLib"
shushiuilib.Parent = game.CoreGui
shushiuilib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = shushiuilib
Frame.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Frame.Position = UDim2.new(0.291666657, 0, 0.278145701, 0)
Frame.Size = UDim2.new(0, 599, 0, 308)
local UIS = game:GetService("UserInputService")
UIS.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.RightAlt then
        shushiuilib.Enabled = not shushiuilib.Enabled
    end
end)


ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0217028391, 0, 0.0422077961, 0)
ImageLabel.Size = UDim2.new(0, 112, 0, 112)
ImageLabel.Image = "http://www.roblox.com/asset/?id=5867403294"

MenuBar.Name = "MenuBar"
MenuBar.Parent = Frame
MenuBar.Active = true
MenuBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MenuBar.BackgroundTransparency = 1.000
MenuBar.BorderSizePixel = 0
MenuBar.Position = UDim2.new(0.0217028391, 0, 0.44155845, 0)
MenuBar.Size = UDim2.new(0, 112, 0, 160)

UIPadding_2.Parent = MenuBar
UIPadding_2.PaddingBottom = UDim.new(0.00499999989, 0)
UIPadding_2.PaddingTop = UDim.new(0.00499999989, 0)


function library:CreateWindow(window_name)
    window_name = tostring(window_name or "New Window")
	local window = {}
	local twsv = game:GetService("TweenService")
	
    local WindowBar = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local Title = Instance.new("TextLabel")
    local UIGradient_3 = Instance.new("UIGradient")
    local UIPadding = Instance.new("UIPadding")

    WindowBar.Name = window_name
    WindowBar.Parent = Frame
    WindowBar.Active = true
    WindowBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    WindowBar.BackgroundTransparency = 1.000
    WindowBar.BorderSizePixel = 0
    WindowBar.Position = UDim2.new(0.237061769, 0, 0.134153098, 0)
    WindowBar.Size = UDim2.new(0, 444, 0, 257)
    table.insert(window, WindowBar.Name)

    Title.Name = "Title ".. window_name
    Title.Parent = Frame
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.Position = UDim2.new(0, 142, 0, 9)
    Title.Size = UDim2.new(0, 444, 0, 23)
    Title.Font = Enum.Font.GothamBold
    Title.Text = window_name
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.TextSize = 14.000
    Title.TextWrapped = true
    Title.TextXAlignment = Enum.TextXAlignment.Left
    if first_window == nil then
        first_window = WindowBar
    end
    if first_title == nil then
        first_title = Title
    end
    UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 44, 44)), ColorSequenceKeypoint.new(0.23, Color3.fromRGB(255, 215, 53)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 215, 53))}
    UIGradient_3.Parent = Title

    UIListLayout.Parent = WindowBar
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    UIPadding.Parent = WindowBar
    UIPadding.PaddingBottom = UDim.new(0.00499999989, 0)
    UIPadding.PaddingTop = UDim.new(0.00499999989, 0)

    local Menu = Instance.new("Frame")
    local TextButton_3 = Instance.new("TextButton")
    Instance.new("UICorner", TextButton_3)
    local UIGradient_4 = Instance.new("UIGradient")
    local UIListLayout_2 = Instance.new("UIListLayout")
    Menu.Name = "Menu"
    Menu.Parent = MenuBar
    Menu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Menu.BackgroundTransparency = 1.000
    Menu.Size = UDim2.new(1, 0, 0, 25)

    TextButton_3.Name = window_name
    TextButton_3.Parent = Menu
    TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton_3.BorderSizePixel = 0
    TextButton_3.Position = UDim2.new(0.0599999987, 0, 0.100000001, 0)
    TextButton_3.Size = UDim2.new(0.799999774, 0, 0.800000012, 0)
    TextButton_3.Font = Enum.Font.GothamBold
    TextButton_3.Text = window_name
    TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_3.TextSize = 14.000

    function showme(arg1, arg2)
        for _,v in pairs(Frame:GetChildren()) do
            if v.Name ~= "MenuBar" then
                if v.ClassName == "ScrollingFrame" then
                    v.Visible = false
                end
            end
        end
        for _,v in pairs(Frame:GetChildren()) do
            local split = string.split(v.Name, " ")[1]
            if split == "Title" then
                v.Visible = false
            end
        end
        arg1.Visible = true
        arg2.Visible = true 
    end
    showme(first_title, first_window)
    TextButton_3.MouseButton1Click:Connect(function()
        showme(Title, WindowBar)
    end)

    UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 44, 44)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 215, 53))}
    UIGradient_4.Parent = TextButton_3

    UIListLayout_2.Parent = MenuBar
    UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    -- setting ----
    window.Active = true
    window.Draggable = true
    ---------------
    function window:AddDropdown(dropdown_name, array, callback)
        local dropdown_data = {}
        local data = array
        callback = typeof(callback) == "function" and callback or function()end
        local Dropdown = Instance.new("Frame")
        local TextButton_2 = Instance.new("TextButton")
        Instance.new("UICorner", TextButton_2)
        local TextLabel = Instance.new("TextLabel")
        local UIGradient_2 = Instance.new("UIGradient")

        Dropdown.Name = dropdown_name
        Dropdown.Parent = WindowBar
        Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Dropdown.BackgroundTransparency = 1.000
        Dropdown.Size = UDim2.new(1, 0, 0, 25)
        Dropdown.ZIndex = 1000000000

        TextButton_2.Parent = Dropdown
        TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_2.BorderSizePixel = 0
        TextButton_2.Position = UDim2.new(0.0202702694, 0, 0.119999997, 0)
        TextButton_2.Size = UDim2.new(0, 414, 0, 19)
        TextButton_2.Font = Enum.Font.GothamBold
        TextButton_2.Text = dropdown_name
        TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_2.TextSize = 14.000

        TextLabel.Parent = TextButton_2
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.Position = UDim2.new(0.949275374, 0, 0, 0)
        TextLabel.Rotation = -90.000
        TextLabel.Size = UDim2.new(0, 15, 0, 19)
        TextLabel.Font = Enum.Font.GothamBlack
        TextLabel.Text = "<"
        TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel.TextSize = 16.000

        UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 44, 44)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 215, 53))}
        UIGradient_2.Parent = TextButton_2

        local dropdown_open = false
		local Buttons = {}
        TextButton_2.MouseButton1Click:connect(function()
            if dropdown_open then
				dropdown_open = false
				twsv:Create(TextLabel, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
					Rotation = -90
				}):Play()
				
				for i,v in pairs(Buttons) do
					v:Destroy()
				end
				Buttons = {}
			else
				dropdown_open = true
				twsv:Create(TextLabel, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
					Rotation = 90
				}):Play()

				for i,v in pairs(data) do
					local listButton = Instance.new("TextButton")
					Buttons[#Buttons + 1] = listButton
					listButton.BackgroundColor3 = Dropdown.BackgroundColor3
					listButton.Size = UDim2.new(0,Dropdown.AbsoluteSize.x,0,Dropdown.AbsoluteSize.y)
					listButton.TextXAlignment = Enum.TextXAlignment.Left
					listButton.Text = " "..v
					listButton.Font = Enum.Font.GothamBold
					listButton.TextSize = 14
					listButton.MouseButton1Down:connect(function()
						TextButton_2.Text = " "..v
						dropdown_open = false
						twsv:Create(TextLabel, TweenInfo.new(.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
							Rotation = -90
						}):Play()
						for i,v in pairs(Buttons) do
							v:Destroy()
						end
						Buttons = {}
						pcall(callback, v) -- return value
					end)
					listButton.Position = UDim2.new(0,0,0,(Dropdown.AbsoluteSize.y * #Buttons  *1))
					listButton.ZIndex = 10000000000000
					listButton.Parent = Dropdown
					listButton.BorderSizePixel = 0
                    local UIGradient_7 = Instance.new("UIGradient")
			        UIGradient_7.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 44, 44)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 215, 53))}
                    UIGradient_7.Parent = listButton
				end
			end
        end)
        
        function dropdown_data:Set(new_data)
            data = new_data
            TextButton_2.Text = dropdown_name
            pcall(callback, sel_value)
            return data
        end

        return dropdown_data, Dropdown
    end

    function window:AddToggle(toggle_name, callback)
        local toggle_data = {}
        callback = typeof(callback) == "function" and callback or function()end
        local ToggleBar = Instance.new("Frame")
        local TextButton = Instance.new("TextButton")
        Instance.new("UICorner", TextButton)
        local ShowStatus = Instance.new("Frame")
        Instance.new("UICorner", ShowStatus)
        local UIGradient = Instance.new("UIGradient")
		local UIGradient999 = Instance.new("UIGradient")
        ToggleBar.Name = "ToggleBar"
        ToggleBar.Parent = WindowBar
        ToggleBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ToggleBar.BackgroundTransparency = 1.000
        ToggleBar.Size = UDim2.new(1, 0, 0, 25)

        TextButton.Parent = ToggleBar
        TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.BorderSizePixel = 0
        TextButton.Position = UDim2.new(0.0202702694, 0, 0.119999997, 0)
        TextButton.Size = UDim2.new(0, 414, 0, 19)
        TextButton.Font = Enum.Font.GothamBold
        TextButton.Text = toggle_name
        TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton.TextSize = 14.000

        ShowStatus.Name = "ShowStatus"
        ShowStatus.Parent = TextButton
        ShowStatus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ShowStatus.Position = UDim2.new(0, 396, 0, 5)
        ShowStatus.Size = UDim2.new(0, 9, 0, 9)

        UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 44, 44)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 215, 53))}
        UIGradient.Parent = TextButton

        UIGradient999.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 44, 44)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 215, 53))}
        UIGradient999.Parent = ShowStatus
        
        TextButton.MouseButton1Click:Connect(function()
			if open then
				open = false
				ShowStatus.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			else
				open = true
				ShowStatus.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
			end
			pcall(callback, open) -- return value
        end)
        
        function toggle_data:Set(new_data)
            if new_data then
				open = false
				ShowStatus.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			else
				open = true
				ShowStatus.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
            end
            pcall(callback, new_data)
        end

        toggle_data:Set(false)
        
        return toggle_data, ToggleBar
    end

    function window:AddButton(button_name, callback)
        callback = typeof(callback) == "function" and callback or function()end
        local Button = Instance.new("Frame")
        local TextButton = Instance.new("TextButton")
        Instance.new("UICorner", TextButton)
        local UIGradient = Instance.new("UIGradient")

        Button.Name = "Button"
        Button.Parent = WindowBar
        Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Button.BackgroundTransparency = 1.000
        Button.Size = UDim2.new(1, 0, 0, 25)

        TextButton.Parent = Button
        TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.BorderSizePixel = 0
        TextButton.Position = UDim2.new(0.0202702694, 0, 0.119999997, 0)
        TextButton.Size = UDim2.new(0, 414, 0, 19)
        TextButton.Font = Enum.Font.GothamBold
        TextButton.Text = button_name
        TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton.TextSize = 14.000

        UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 44, 44)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 215, 53))}
        UIGradient.Parent = TextButton

        TextButton.MouseButton1Click:Connect(function()
			pcall(callback) -- return value
		end)
        
        return ToggleBar
    end

    function window:AddLabel(label_name)
        local label_data = {}
        local Label = Instance.new("Frame")
        local TextLabel = Instance.new("TextLabel")
        local UIGradient = Instance.new("UIGradient")

        Label.Name = label_name
        Label.Parent = WindowBar
        Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Label.BackgroundTransparency = 1.000
        Label.Size = UDim2.new(1, 0, 0, 25)

        TextLabel.Parent = Label
        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.Position = UDim2.new(0.177657664, 0, 0.119999997, 0)
        TextLabel.Size = UDim2.new(0, 274, 0, 19)
        TextLabel.Font = Enum.Font.GothamBold
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextScaled = true
        TextLabel.TextSize = 14.000
        TextLabel.TextWrapped = true
        TextLabel.Text = label_name

        UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 44, 44)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 215, 53))}
        UIGradient.Parent = TextLabel

        function label_data:Set(new_data)
            TextLabel.Text = new_data
        end

        return label_data, Label
    end

    function window:AddBox(box_name, box_holder, callback)
        local Box = Instance.new("Frame")
        local TextBox = Instance.new("TextBox")
        local UIGradient = Instance.new("UIGradient")

        Box.Name = box_name
        Box.Parent = WindowBar
        Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Box.BackgroundTransparency = 1.000
        Box.Size = UDim2.new(1, 0, 0, 25)

        TextBox.Parent = Box
        TextBox.BackgroundColor3 = Color3.fromRGB(255, 130, 46)
        TextBox.Position = UDim2.new(0.0199999996, 0, 0.119999997, 0)
        TextBox.Size = UDim2.new(0, 414, 0, 19)
        TextBox.Font = Enum.Font.GothamBold
        TextBox.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
        TextBox.PlaceholderText = box_holder or "Enter"
        TextBox.Text = ""
        TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextBox.TextSize = 14.000
        TextBox.TextWrapped = true
        Instance.new("UICorner", TextBox)

        UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 44, 44)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 215, 53))}
        UIGradient.Parent = TextBox
        TextBox.FocusLost:Connect(function(ep)
            if ep then
                if #TextBox.Text > 0 then
                    pcall(callback, TextBox.Text)
                end
            end
        end)
        return Box
    end
    return window, WindowBar
end





local Tab = library:CreateWindow("Auto Farm")
local Q = library:CreateWindow("Auto Quest")
local S = library:CreateWindow("Stats")
-- anti report
game.Players.LocalPlayer.Character.ChildRemoved:Connect(function(child)
end)
game.Players.LocalPlayer:ClearCharacterAppearance()
--------------

getgenv().Selection = nil 
getgenv().Start = false
getgenv().Quest = nil
local NPC = {
'Thug',
'HamonUser',
'Gryphon',
'Vampire',
'SnowThug',
'Snowmen',
'Wamuu',
'Desert Bandit',
'Desert Monster',
'Dio Royal Guard',
'City Criminal',
'Master Criminal',
'School Bully'}

local M = {}
for i,v in pairs(game:GetService("Workspace").NPCS:GetChildren()) do 
    if not table.find(M, v.Name) then 
        table.insert(M, v.Name)
    end 
end 

local MSelection;
local ATF = Tab:AddDropdown("Mob", M, function(EZ)
    MSelection = EZ
    M = string.split(MSelection)
end)

local To;
local ToName = Tab:AddBox("Tool","Tool Name",function(Toblox)
	To = Toblox
end)
local autotoggle = false
local ATF2 = Tab:AddToggle('Auto Farm', function(bool)
autotoggle = bool
end)


function autofarm()
    pcall(function()
            for i = 1,#game.Workspace.NPCS:GetChildren() do local v = game.Workspace.NPCS:GetChildren()[i]
                if v.Name == M[1] and v:FindFirstChild('Humanoid') and v:FindFirstChild('HumanoidRootPart') and v.Humanoid.Health > 0 then 
                    repeat wait()
                        pcall(function()
                        game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = v.PrimaryPart.CFrame + (v.PrimaryPart.CFrame.lookVector * (-2))
                        end) 
						-- Attack
wait()--change time if you want
   
game.Players.LocalPlayer.Backpack:FindFirstChild(To).Parent = game.Players.LocalPlayer.Character
                    until not v:FindFirstChild('Humanoid') or v.Humanoid.Health <=0 or not v:FindFirstChild('HumanoidRootPart')
                end 
    end 
    end)
end

function autoatk()
    pcall(function()
	local VU = game:GetService("VirtualUser")
    VU:CaptureController()
    VU:ClickButton1(Vector2.new())
    end)
end
spawn(function()
    while wait() do
        if autotoggle then
            autofarm()
            autoatk()
        end
    end
end)

local AQ;
local ATF = Q:AddDropdown("Mob", NPC, function(EZ)
    AQ = EZ
    NPC = string.split(MSelection)
end)
local ATQ2 = Q:AddToggle("Auto Quest", function(bool)
_G.ATQ = bool
while _G.ATQ do
wait()
local plr = game.Players.LocalPlayer
if game:GetService("Workspace").STATS[plr.Name].Quest.Count.value == 0 then
game.ReplicatedStorage.RS.Quest:FireServer(AQ)
end
end
end)



local Statssss;
S:AddDropdown("Stat", {
'HealtLevel',
'StaminaLevel',
'AttackLevel',
'GenreLevel',
}, function(Stats)
Statssss = Stats
end)


local ATS = S:AddToggle("Auto Stats", function(bool)
_G.ATS = bool
while _G.ATS do 
wait()
game:GetService("ReplicatedStorage").RS.OnLevel:FireServer(Statssss, 1)
end
end)



		local TabM = library:CreateWindow("Misc")
TabM:AddBox("WalkSpeed","WalkSpeed", function(p)
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = p
		end)

TabM:AddBox("JumpPower","JumpPower", function(p)
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = p
		end)

				local nc = TabM:AddToggle("No clip",function(bool)
		noclip = bool
		game:GetService('RunService').Stepped:connect(function()
			if noclip then
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		         end
		      end)
        end)
		nc:Set(false)
TabM:AddButton("Rejoin", function(a)
local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
ts:Teleport(game.PlaceId, p)
end)
		

		local Cr = library:CreateWindow("Credits") -- This can contain exactly the same as a Tab. You can have as many folders as you'd like to.
		Cr:AddLabel("Creator Discord Tag : ! X x ShuShi x X !#0059")
		Cr:AddLabel("Creator DiscordServer : https://discord.gg/dYcawME")
		Cr:AddLabel("Ui Lib Creator Discord Tag : Da_aK#2727")
		Cr:AddButton("Copy Creator Discord Tag", function()
			setclipboard(("! X x ShuShi x X !#0059"))
		end)
		Cr:AddButton("Copy Creator DiscordServer Link", function()
			setclipboard(("https://discord.gg/dYcawME"))
		end)
		Cr:AddButton("Copy Ui Lib Creator Discord Tag", function()
			setclipboard(("Da_aK#2727"))
		end)
		
return library
