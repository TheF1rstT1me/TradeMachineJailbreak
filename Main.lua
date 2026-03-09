local UIS = game:GetService("UserInputService")
local UserService = game:GetService("UserService")
local RS = game:FindFirstChild("Localization", true).Parent.Parent

local plr = game:FindFirstChildWhichIsA("Player", true)
local Players = plr.Parent

local GUI = Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Trade")
local APPUI = Players.LocalPlayer:WaitForChild("PlayerGui")
	:WaitForChild("AppUI")
local TRADEINITIATIONS = APPUI:WaitForChild("TradeInitiations")

local Main = GUI:WaitForChild("Frame"):WaitForChild("Main")
local BF = Main:WaitForChild("BoxFrom") :: TextBox
local BT = Main:WaitForChild("BoxTo") :: TextBox
local OK = Main:WaitForChild("OK") :: TextButton

local InnerImage = Main:WaitForChild("Outer")
local PlayerName = Main:WaitForChild("PlayerName")

local StartChange = RS:WaitForChild("_CacheEvents"):WaitForChild("StartChange") :: BindableEvent

local Changed = {
	-- ["Affsd3"] = {0000, "", "n", "d"}
}
local inTrade = false

local function printTable(t, indent)
	indent = indent or 0
	local prefix = string.rep("  ", indent)

	for key, value in pairs(t) do
		if type(value) == "table" then
			print(prefix .. tostring(key) .. ":")
			printTable(value, indent + 1)
		else
			print(prefix .. tostring(key) .. " = " .. tostring(value))
		end
	end
end

local function getPlayerInChanged(parameters: {
		oldUserName: string, oldDisplayName: string
	}): nil | {}
	
	if parameters.oldUserName then
		return (Changed[parameters.oldUserName] and Changed[parameters.oldUserName] or nil)
	elseif parameters.oldDisplayName then
		for key, value in pairs(Changed) do
			if value.OldDisplayName == parameters.oldDisplayName then
				return value
			end
		end
	end
	
	return nil
end

local function matchInText(TextLabel: TextLabel): boolean | {}
	for _, value in Changed do
		if TextLabel.Text:lower():match(value.OldDisplayName:lower()) then
			return value
		end
	end
	
	return false
end

local function updateMainTrade(Frame: Frame)
	Frame.Visible = false

	local offering = Frame.Offerings.Player2Offering.PlayerTitle
	local Title: TextLabel = offering.Title.Text
	local Icon: ImageLabel = offering.Icon

	local playerMatched = matchInText(Title)
	if playerMatched then
		Title.Text = Title.Text:gsub(playerMatched.OldDisplayName, playerMatched.DisplayName)
		Icon.Image = `rbxthumb://type=AvatarHeadShot&id={playerMatched.UserId}&w=150&h=150`
		
		Icon:GetPropertyChangedSignal("Image"):Connect(function() 
			if Icon.Image == "rbxassetid://9474441364" then return end;
			Icon.Image = `rbxthumb://type=AvatarHeadShot&id={playerMatched.UserId}&w=150&h=150`
		end)
	end

	Frame.Visible = true
end

local function updateRequest(Frame: Frame)
	Frame.Visible = false

	local TextLabel: TextLabel = Frame:FindFirstChild("Title"):FindFirstChild("Text")
	local playerMatched = matchInText(TextLabel)
	
	if playerMatched then
		TextLabel.Text = TextLabel.Text:gsub(playerMatched.OldDisplayName, playerMatched.DisplayName)
	end

	Frame.Visible = true
end

local function updateOtherTrade(Frame: Frame)
	Frame.Visible = false
	
	local otherPlayer = Frame.OtherPlayerInventoryContainers
	local header = Frame.Header
	
	for _, button: TextButton in otherPlayer.ScrollingGrid:GetChildren() do
		if button:IsA("TextButton") then
			local playerMatched = matchInText(button.Title.Text)
			if playerMatched then
				button.Title.Text.Text = button.Title.Text.Text:gsub(playerMatched.OldDisplayName, playerMatched.DisplayName)
				header.Title.Text:GetPropertyChangedSignal("Text"):Connect(function() 
					header.Title.Text.Text = header.Title.Text.Text:gsub(playerMatched.OldDisplayName, playerMatched.DisplayName)
				end)
			end
		end
	end
	
	Frame.Visible = true	
end

local function updateChar(Character: Model)
	Character.HumanoidRootPart.Anchored = true
	
	for _, part: BasePart in Character:GetChildren() do
		if not part:IsA("BasePart") then continue end;
		part.CanCollide = false
	end	
end

UIS.InputBegan:Connect(function(input: InputObject, gameProcessedEvent: boolean) 
	if gameProcessedEvent then return end;

	if input.KeyCode == Enum.KeyCode.Insert then
		GUI.Enabled = not GUI.Enabled
	end
end)

-- ONA STRADAET NO YSHE NE SO MnOY (Author: s1mpai (discord), call me pls, pls, im wait to ur call)
-- return `rbxthumb://type=AvatarHeadShot&id={userId}&w=150&h=150`

OK.Activated:Connect(function() 
	if BF.Text == "" or BT.Name == "" then return end;
	if not Players:FindFirstChild(BF.Text) then return end;
	
	local oldPlayer: Player = Players:FindFirstChild(BF.Text)
	local UserName, UserDispName

	local UserId, e = pcall(function()
		return Players:GetUserIdFromNameAsync(BT.Text)
	end)

	if not UserId then return end;

	local success, result = pcall(function()
		return UserService:GetUserInfosByUserIdsAsync({e})
	end)

	if not success then return end;

	local success, Description = pcall(function()
		return Players:GetHumanoidDescriptionFromUserIdAsync(e)
	end)

	if not success then return end;

	for _, userInfo in ipairs(result) do
		UserDispName = userInfo.DisplayName
		UserName = userInfo.Username	
	end

	Changed[BF.Text] = {
		OldUserName = oldPlayer.Name,
		OldDisplayName = oldPlayer.DisplayName,
		
		UserId = e, 
		Avatar = `rbxthumb://type=AvatarHeadShot&id={e}&w=150&h=150`,
		UserName = UserName, 
		DisplayName = UserDispName,
		HumanoidDescription = Description
	}

	print("CHANGED ADDED", printTable(Changed[BF.Text], 4))
	StartChange:Fire(e, oldPlayer)
end)

TRADEINITIATIONS.ChildAdded:Connect(function(child: Instance)
	if child:IsA("Frame") then
		updateRequest(child)
	end
end)

APPUI.ChildAdded:Connect(function(child: Instance)
	if child:IsA("Frame") then
		if child.Name == "Trade" then
			if child:FindFirstChild("ItemTypesContainer") then
				updateOtherTrade(child)
			else
				updateMainTrade(child)
			end
		end
	end
end)

APPUI.ChildRemoved:Connect(function(child: Instance)
	print("REMOVED", child.Name)
end)

StartChange.Event:Connect(function(newUserId: number, oldPlayer: Player) 
	task.spawn(function()
		local oldCharacter = oldPlayer.Character
		oldCharacter.Archivable = true
		
		task.delay(1, function()
			local newCharacter = oldCharacter:Clone()
			newCharacter.Parent = workspace
			
			local animation = Instance.new("Animation")
			animation.AnimationId = "http://www.roblox.com/asset/?id=507766388"
			
			local humanoid = newCharacter:FindFirstChildOfClass("Humanoid")
			humanoid:ApplyDescriptionResetAsync(Changed[oldPlayer.Name].HumanoidDescription)
			humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
			
			local animTrack = humanoid.Animator:LoadAnimation(animation)
			animTrack.Looped = true
			animTrack:Play()
			
			updateChar(newCharacter)
			
			newCharacter.Name = oldPlayer.Name
			oldCharacter.Parent = RS
		end)
	end)
	
	for _, v in TRADEINITIATIONS:GetChildren() do
		if v:IsA("Frame") then
			updateRequest(v)
		end
	end
	
	local currentTrade = APPUI:FindFirstChild("Trade")
	if currentTrade then
		if currentTrade:FindFirstChild("ItemTypesContainer") then
			updateOtherTrade(currentTrade)
		else
			updateMainTrade(currentTrade)
		end
	end
end)

--Players.PlayerAdded:Connect(function(player: Player) 
--	if not Changed[player.Name] then return end;
	
--	local character = player.Character or player.CharacterAdded:Wait()
	
--	task.spawn(function()
--		local humanoid = character:WaitForChild("Humanoid")
--		humanoid:ApplyDescriptionResetAsync(Changed[player.Name].HumanoidDescription)
--		character.Name = player.Name
--	end)
--end)

PlayerName.Text = Players.LocalPlayer.Name
InnerImage.Image = `rbxthumb://type=AvatarHeadShot&id={Players.LocalPlayer.UserId}&w=150&h=150`
