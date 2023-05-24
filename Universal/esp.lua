getgenv().boolen = true;

local ESP_Folder = game:GetService("CoreGui"):FindFirstChild("ESPFolder") or Instance.new("Folder");
if ESP_Folder.Name == "Folder" then
    ESP_Folder.Name = "ESP_Folder";
    ESP_Folder.Parent = game:GetService("CoreGui");
end;

task.spawn(function()
    while boolen do
        task.wait();
        if boolen then
            for i, v in next, game:GetService("Players"):GetChildren() do
                if v.Character ~= nil then
                    local ESP = ESPFolder:FindFirstChild(v.Name) or Instance.new("Highlight");
                    pcall(function()
                        ESP.Name = v.Name;
                    end);
                    if ESP.Name ~= game:GetService("Players").LocalPlayer.Name then
                        ESP.Parent = ESP_Folder;
                        ESP.Adornee = v.Character;
                        ESP.DepthMode = "AlwaysOnTop";
                        ESP.FillColor = Color3.fromRGB(0, 0, 0);
                        ESP.OutlineColor = Color3.fromRGB(255, 255, 255);
                        ESP.FillTransparency = 0.5;
                        ESP.OutlineTransparency = 0;
                    end;
                end;
            end;
        else
            game:GetService("CoreGui")["ESP_Folder"]:Destroy();
        end;
    end;
end);
