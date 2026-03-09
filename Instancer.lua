--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 23 | Scripts: 0 | Modules: 0 | Tags: 0

local plr = game:FindFirstChildWhichIsA("Player", true)
local Players = plr.Parent

local G2L = {};

-- StarterGui.Trade
G2L["1"] = Instance.new("ScreenGui", Players.LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Enabled"] = false;
G2L["1"]["Name"] = [[Trade]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.Trade.Frame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(222, 21, 98);
G2L["2"]["Size"] = UDim2.new(0.42539, 0, 0.31684, 0);
G2L["2"]["Position"] = UDim2.new(0.56103, 0, 0.0265, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["BackgroundTransparency"] = 1;


-- StarterGui.Trade.Frame.Frame
G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(233, 0, 241);
G2L["3"]["Size"] = UDim2.new(0.96255, 0, 0.91434, 0);
G2L["3"]["Position"] = UDim2.new(0.01837, 0, 0.04568, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["BackgroundTransparency"] = 1;


-- StarterGui.Trade.Frame.Frame.UICorner
G2L["4"] = Instance.new("UICorner", G2L["3"]);



-- StarterGui.Trade.Frame.Main
G2L["5"] = Instance.new("Frame", G2L["2"]);
G2L["5"]["ZIndex"] = 2;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(149, 0, 0);
G2L["5"]["Size"] = UDim2.new(0.9389, 0, 0.82302, 0);
G2L["5"]["Position"] = UDim2.new(0.03045, 0, 0.09134, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Name"] = [[Main]];
G2L["5"]["BackgroundTransparency"] = 1;


-- StarterGui.Trade.Frame.Main.UICorner
G2L["6"] = Instance.new("UICorner", G2L["5"]);



-- StarterGui.Trade.Frame.Main.BoxFrom
G2L["7"] = Instance.new("TextBox", G2L["5"]);
G2L["7"]["CursorPosition"] = -1;
G2L["7"]["Name"] = [[BoxFrom]];
G2L["7"]["PlaceholderColor3"] = Color3.fromRGB(212, 212, 212);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextWrapped"] = true;
G2L["7"]["TextSize"] = 14;
G2L["7"]["TextColor3"] = Color3.fromRGB(215, 215, 215);
G2L["7"]["TextScaled"] = true;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(21, 20, 29);
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoCondensed.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7"]["PlaceholderText"] = [[...]];
G2L["7"]["Size"] = UDim2.new(0.55, 0, 0.2, 0);
G2L["7"]["Position"] = UDim2.new(0.41667, 0, 0.12087, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[]];
G2L["7"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Trade.Frame.Main.BoxFrom.UICorner
G2L["8"] = Instance.new("UICorner", G2L["7"]);
G2L["8"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.Trade.Frame.Main.BoxTo
G2L["9"] = Instance.new("TextBox", G2L["5"]);
G2L["9"]["CursorPosition"] = -1;
G2L["9"]["Name"] = [[BoxTo]];
G2L["9"]["PlaceholderColor3"] = Color3.fromRGB(212, 212, 212);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["TextWrapped"] = true;
G2L["9"]["TextSize"] = 14;
G2L["9"]["TextColor3"] = Color3.fromRGB(215, 215, 215);
G2L["9"]["TextScaled"] = true;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(21, 20, 29);
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoCondensed.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9"]["PlaceholderText"] = [[...]];
G2L["9"]["Size"] = UDim2.new(0.55, 0, 0.2, 0);
G2L["9"]["Position"] = UDim2.new(0.417, 0, 0.5537, 0);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Text"] = [[]];
G2L["9"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Trade.Frame.Main.BoxTo.UICorner
G2L["a"] = Instance.new("UICorner", G2L["9"]);
G2L["a"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.Trade.Frame.Main.OK
G2L["b"] = Instance.new("ImageButton", G2L["5"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["Image"] = [[rbxassetid://112477187173581]];
G2L["b"]["Size"] = UDim2.new(0.25846, 0, 0.20609, 0);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Name"] = [[OK]];
G2L["b"]["Position"] = UDim2.new(0.75005, 0, 0.83176, 0);


-- StarterGui.Trade.Frame.Main.OK.TextLabel
G2L["c"] = Instance.new("TextLabel", G2L["b"]);
G2L["c"]["TextWrapped"] = true;
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["TextSize"] = 14;
G2L["c"]["TextScaled"] = true;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["BackgroundTransparency"] = 1;
G2L["c"]["Size"] = UDim2.new(0.95385, 0, 0.80723, 0);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Text"] = [[Enter]];
G2L["c"]["Position"] = UDim2.new(0.0218, 0, 0.07229, 0);


-- StarterGui.Trade.Frame.Main.T1
G2L["d"] = Instance.new("TextLabel", G2L["5"]);
G2L["d"]["TextWrapped"] = true;
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["TextSize"] = 14;
G2L["d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["d"]["TextScaled"] = true;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["BackgroundTransparency"] = 1;
G2L["d"]["Size"] = UDim2.new(0.63351, 0, 0.14004, 0);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Text"] = [[Enter player to change]];
G2L["d"]["Name"] = [[T1]];
G2L["d"]["Position"] = UDim2.new(0.36961, 0, -0.06242, 0);


-- StarterGui.Trade.Frame.Main.T2
G2L["e"] = Instance.new("TextLabel", G2L["5"]);
G2L["e"]["TextWrapped"] = true;
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["TextSize"] = 14;
G2L["e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["e"]["TextScaled"] = true;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["BackgroundTransparency"] = 1;
G2L["e"]["Size"] = UDim2.new(0.634, 0, 0.14, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Text"] = [[Enter player to change to]];
G2L["e"]["Name"] = [[T2]];
G2L["e"]["Position"] = UDim2.new(0.37497, 0, 0.37798, 0);


-- StarterGui.Trade.Frame.Main.BG
G2L["f"] = Instance.new("ImageLabel", G2L["5"]);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["Image"] = [[rbxassetid://77779092761941]];
G2L["f"]["Size"] = UDim2.new(0.09884, 0, 0.23778, 0);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["BackgroundTransparency"] = 1;
G2L["f"]["Name"] = [[BG]];
G2L["f"]["Position"] = UDim2.new(-0.034, 0, -0.02258, 0);


-- StarterGui.Trade.Frame.Main.T2
G2L["10"] = Instance.new("TextLabel", G2L["5"]);
G2L["10"]["TextWrapped"] = true;
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["TextSize"] = 14;
G2L["10"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["10"]["TextScaled"] = true;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["BackgroundTransparency"] = 1;
G2L["10"]["Size"] = UDim2.new(0.25161, 0, 0.14, 0);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Text"] = [[Trade Machine]];
G2L["10"]["Name"] = [[T2]];
G2L["10"]["Position"] = UDim2.new(0.06484, 0, -0.01725, 0);


-- StarterGui.Trade.Frame.Main.T2
G2L["11"] = Instance.new("TextLabel", G2L["5"]);
G2L["11"]["TextWrapped"] = true;
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["TextSize"] = 14;
G2L["11"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["11"]["TextScaled"] = true;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(168, 168, 168);
G2L["11"]["TextColor3"] = Color3.fromRGB(168, 168, 168);
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Size"] = UDim2.new(0.25161, 0, 0.08919, 0);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Text"] = [[For trade changes]];
G2L["11"]["Name"] = [[T2]];
G2L["11"]["Position"] = UDim2.new(0.07189, 0, 0.1239, 0);


-- StarterGui.Trade.Frame.Main.Outer
G2L["12"] = Instance.new("ImageLabel", G2L["5"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["Image"] = [[rbxassetid://18579810685]];
G2L["12"]["Size"] = UDim2.new(0.09337, 0, 0.29777, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["BackgroundTransparency"] = 1;
G2L["12"]["Name"] = [[Outer]];
G2L["12"]["Position"] = UDim2.new(-0.00895, 0, 0.71353, 0);


-- StarterGui.Trade.Frame.Main.Outer.UICorner
G2L["13"] = Instance.new("UICorner", G2L["12"]);
G2L["13"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Trade.Frame.Main.PlayerName
G2L["14"] = Instance.new("TextLabel", G2L["5"]);
G2L["14"]["TextWrapped"] = true;
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["TextSize"] = 14;
G2L["14"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["14"]["TextScaled"] = true;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["BackgroundTransparency"] = 1;
G2L["14"]["Size"] = UDim2.new(0.2599, 0, 0.14, 0);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[PlayerName]];
G2L["14"]["Name"] = [[PlayerName]];
G2L["14"]["Position"] = UDim2.new(0.09582, 0, 0.86354, 0);


-- StarterGui.Trade.Frame.BG
G2L["15"] = Instance.new("ImageLabel", G2L["2"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["Image"] = [[rbxassetid://105335454436145]];
G2L["15"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["BackgroundTransparency"] = 1;
G2L["15"]["Name"] = [[BG]];


-- StarterGui.Trade.Frame.BG
G2L["16"] = Instance.new("ImageLabel", G2L["2"]);
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(0, 210, 186);
G2L["16"]["Image"] = [[rbxassetid://105335454436145]];
G2L["16"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["BackgroundTransparency"] = 0.85;
G2L["16"]["Name"] = [[BG]];


-- StarterGui.Trade.Frame.UIAspectRatioConstraint
G2L["17"] = Instance.new("UIAspectRatioConstraint", G2L["2"]);
G2L["17"]["AspectRatio"] = 2.7;



return G2L["1"], require;
