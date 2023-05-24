-- this no longer works seeming da hood patched crashing
getgenv().SprayCans = 0;
getgenv().SelectedGroup = nil;

local Groups = game:GetService("GroupService"):GetGroupsAsync(game:GetService("Players").LocalPlayer.UserId);

for i, v in next, Groups do
    if v == 1 then
        SelectedGroup = v;
    end;
end;

task.spawn(function()
    while task.wait() do
        for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
            if v.Name == "[SprayCan]" then
                v.Parent = game:GetService("Players").LocalPlayer.Character;
            end;
        end;
    end;
end);

task.spawn(function()
    while task.wait() do
        game:GetService("ReplicatedStorage").MainEvent:FireServer("JoinCrew", SelectedGroup);
        game:GetService("ReplicatedStorage").MainEvent:FireServer("LeaveCrew");
        SprayCans = SprayCans + 1;
        if SprayCans >= 3000 then
            for i, v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
                if v:IsA("BasePart") then
                    v:Destroy();
                end;
            end;
        end;
    end;
end);
