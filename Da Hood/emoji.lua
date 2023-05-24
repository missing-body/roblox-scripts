for i, v in next, game:GetService("Players"):GetChildren() do
    if v.Name == game:GetService('Players'):GetNameFromUserIdAsync(tonumber(1)) then
        if v.Character then
            v.Character:FindFirstChild("Humanoid").DisplayName = "[😎] " .. v.DisplayName;
        end;
    end;
end;
