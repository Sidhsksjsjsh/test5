local st = game.Players.LocalPlayer

local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/NMEHkVTb"))()
local Window = OrionLib:MakeWindow({Name = "Testing WHITELIST",HidePremium = false,SaveConfig = false,ConfigFolder = "OrionTest"})

game.Players.LocalPlayer:GetPropertyChangedSignal("Name"):Connect(function()
      if game.Players.LocalPlayer.Name == st then
	       OrionLib:MakeNotification({
                 Name = "Valid",
                 Content = "Your username is in the whitelist",
                 Image = "rbxassetid://",
                 Time = 5
         })
      else
         OrionLib:MakeNotification({
                 Name = "Invalid",
                 Content = "Jit trying to access so bad 😂",
                 Image = "rbxassetid://",
                 Time = 5
         })
      end
end)

local Tab = Window:MakeTab({
Name = "Test Whitelist",
Icon = "rbxassetid://",
PremiumOnly = false
})

Tab:AddTextbox({
   Name = "Insert your username",
   Default = game.Players.LocalPlayer,
   TextDisappear = false,
   Callback = function(Value)
      _G.input = tostring(Value)
   end  
})

Tab:AddButton({
   Name = "Access",
   Callback = function()
      game.Players.LocalPlayer.Name = _G.input
  end    
})
