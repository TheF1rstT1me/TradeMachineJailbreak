local RS = game:FindFirstChild("Localization", true).Parent.Parent

local mainFolder = Instance.new("Folder", RS)
mainFolder.Name = "_CacheEvents"

local instances = {
	{
		Type = "BindableEvent",
		Name = "StartChange",
		Parent = RS:FindFirstChild("_CacheEvents")
	}
}

for _, Info in pairs(instances) do
	task.spawn(function()
		local obj = Instance.new(Info.Type, Info.Parent)
		obj.Name = Info.Name
	end)
end
