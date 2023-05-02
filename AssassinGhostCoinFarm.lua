--[[
   __           _                     _                        _       _  _    ___   ___   ___ ____  
  / _|         | |                   | |                      | |    _| || |_ / _ \ / _ \ / _ \___ \ 
 | |_ ___  _ __| |_ _   _ _ __   __ _| |_ ___  ___  ___  _   _| |___|_  __  _| (_) | (_) | | | |__) |
 |  _/ _ \| '__| __| | | | '_ \ / _` | __/ _ \/ __|/ _ \| | | | / __|_| || |_ > _ < > _ <| | | |__ < 
 | || (_) | |  | |_| |_| | | | | (_| | ||  __/\__ \ (_) | |_| | \__ \_  __  _| (_) | (_) | |_| |__) |
 |_| \___/|_|   \__|\__,_|_| |_|\__,_|\__\___||___/\___/ \__,_|_|___/ |_||_|  \___/ \___/ \___/____/                                                                                                                                                                                                         
 
]]

if game.PlaceId == 379614936 then
    local fuccccc = game.Players.LocalPlayer.Character.HumanoidRootPart
    local wwwwwwww = game:GetService("Workspace")
    
    getgenv().Loaded = true
    if getgenv().Loaded == true then
        print("Loaded Successfully")
    elseif getgenv().Loaded == false then
        print("Failed Load, Rejoin")
    end

    -- Main Part
    if getgenv().Loaded == true then
        game:GetService("RunService"):BindToRenderStep("GhostCoinFarm", 0, function()
            game:GetService("ReplicatedStorage").Remotes.RequestGhostSpawn:InvokeServer()
            for i,v in next, (wwwwwwww.GhostCoins:GetDescendants()) do
                if wwwwwwww.GhostCoins ~= nil then
                    if v.Name == "TouchInterest" and v.Parent then
                        firetouchinterest(fuccccc, v.Parent, 0)
                    else
                        print("Returned Nothing, Wait For Folder To Fill With Coins!!!")
                    end
                end
            end
        end)
    end
end
