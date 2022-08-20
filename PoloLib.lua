local library = {}
wfont = Enum.Font.Arcade
function library:CreateWindow(wname, placeholdertext, wfont) 
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "SCRIPT_HUB_MOSS"
    local MainGui = Instance.new("TextLabel")
    local Frame = Instance.new("Frame")

    --Properties:
	local X = Instance.new("TextButton")

	--Properties:
	
	X.Parent = Frame
	X.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	X.BorderColor3 = Color3.fromRGB(0, 0, 0)
	X.BorderSizePixel = 0
	X.Position = UDim2.new(0.902438939, 0, -0.102661595, 0)
	X.Size = UDim2.new(0, 40, 0, 26)
	X.Font = wfont
	X.Text = "X"
	X.TextColor3 = Color3.fromRGB(255, 0, 0)
	X.TextScaled = true
	X.TextSize = 14.000
	X.TextWrapped = true
	X.ZIndex = 3

	X.MouseButton1Down:Connect(function()
	ScreenGui:Destroy()
	end)
    ScreenGui.Parent = game.CoreGui

    MainGui.Name = "MainGui"
    MainGui.Parent = ScreenGui
    MainGui.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    MainGui.BorderColor3 = Color3.fromRGB(40, 40, 40)
    MainGui.Position = UDim2.new(0.115805946, 0, 0.0810473785, 0)
    MainGui.Size = UDim2.new(0, 410, 0, 27)
    MainGui.Font = wfont
    MainGui.TextColor3 = Color3.fromRGB(255, 255, 255)
    MainGui.TextScaled = true
    MainGui.TextSize = 14.000
    MainGui.TextWrapped = true
    MainGui.Text = wname
    MainGui.ZIndex = 2
    Frame.Parent = MainGui
    Frame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    Frame.BorderColor3 = Color3.fromRGB(27, 27, 27)
    Frame.Position = UDim2.new(-0.000362274703, 0, 0.995461464, 0)
    Frame.Size = UDim2.new(0, 410, 0, 263)
	local Placeholder = Instance.new("TextLabel")
	Placeholder.Parent = Frame
	Placeholder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Placeholder.BackgroundTransparency = 1.000
	Placeholder.BorderSizePixel = 0
	Placeholder.Position = UDim2.new(0.279611647, 0, 0.177681327, 0)
	Placeholder.Size = UDim2.new(0, 299, 0, 199)
	Placeholder.Font = wfont
	Placeholder.Text = placeholdertext
	Placeholder.TextColor3 = Color3.fromRGB(255, 255, 255)
	Placeholder.TextScaled = true
	Placeholder.TextSize = 14.000
	Placeholder.TextWrapped = true
    local function MKHDTR_fake_script() -- MainGui.LocalScript 
        local script = Instance.new('LocalScript', MainGui)
    
        script.Parent.Active = true
        script.Parent.Selectable = true
        script.Parent.Draggable = true
    end
    coroutine.wrap(MKHDTR_fake_script)()
    inum = -0.05
    local PoloLib = {}
	local sections = {}
    function PoloLib:CreateButton(bname, sec, func)
    	inum += 0.05
        local TextButton = Instance.new("TextButton")
        TextButton.Parent = sec
        TextButton.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
        TextButton.BorderColor3 = Color3.fromRGB(40, 40, 40)
        TextButton.Position = UDim2.new(0.03, 0, 0.0304182507+inum, 0)
        TextButton.Size = UDim2.new(0, 280, 0, 22)
        TextButton.Font = wfont
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 14.000
        TextButton.Text = bname
        TextButton.MouseButton1Down:Connect(func)
    end
    function ClearB()
    inum = -0.05
    end
    local inum2 = -0.09
    function PoloLib:CreateSection(SectionName)
    	ClearB()
        local TextButton = Instance.new("TextButton")
        local ScrollingFrame = Instance.new("ScrollingFrame")
		inum2 += 0.09
		table.insert(sections, ScrollingFrame)
        TextButton.Parent = Frame
        TextButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        TextButton.BorderColor3 = Color3.fromRGB(40, 40, 40)
        TextButton.Position = UDim2.new(0.000362265971/2, 0, -0.00186580757+inum2, 0)
        TextButton.Size = UDim2.new(0, 98, 0, 22)
        TextButton.Font = wfont
        TextButton.Text = SectionName
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 14.000
		TextButton.MouseButton1Down:Connect(function()
		for i,v in pairs(sections) do
		v.Visible = false
		end
		ScrollingFrame.Visible = true

		end)
        ScrollingFrame.Parent = Frame
        ScrollingFrame.Active = true
        ScrollingFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        ScrollingFrame.BorderColor3 = Color3.fromRGB(40, 40, 40)
        ScrollingFrame.Position = UDim2.new(0.243902445, 0, -0.0261500254, 0)
        ScrollingFrame.Size = UDim2.new(0, 309, 0, 269)
        ScrollingFrame.ZIndex = 1
		for i,v in pairs(sections) do
		v.Visible = false
		end
        return ScrollingFrame
    end
    
    return PoloLib
end

return library
