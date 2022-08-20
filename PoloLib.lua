local library = {}

function library:CreateWindow(wname, wfont = Enum.Font.SourceSansLight) 
    local ScreenGui = Instance.new("ScreenGui")
    local MainGui = Instance.new("TextLabel")
    local Frame = Instance.new("Frame")

    --Properties:

    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

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
    Frame.Parent = MainGui
    Frame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    Frame.BorderColor3 = Color3.fromRGB(27, 27, 27)
    Frame.Position = UDim2.new(-0.000362274703, 0, 0.995461464, 0)
    Frame.Size = UDim2.new(0, 410, 0, 263)
    local function MKHDTR_fake_script() -- MainGui.LocalScript 
        local script = Instance.new('LocalScript', MainGui)
    
        script.Parent.Active = true
        script.Parent.Selectable = true
        script.Parent.Draggable = true
    end
    coroutine.wrap(MKHDTR_fake_script)()
    
    local PoloLib = {}

    function PoloLib:CreateButton(bname)
        TextButton.Parent = Frame
        TextButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        TextButton.BorderColor3 = Color3.fromRGB(40, 40, 40)
        TextButton.Position = UDim2.new(0.0268292688, 0, 0.0304182507, 0)
        TextButton.Size = UDim2.new(0, 123, 0, 21)
        TextButton.Font = wfont
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 14.000
        TextButton.Text = bname
    end
    return PoloLib
end

return library
-- Scripts:

