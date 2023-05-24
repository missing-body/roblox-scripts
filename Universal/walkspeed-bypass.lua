local old_hookmetamethod;
old_hookmetamethod = hookmetamethod(game, "__index", function(Self, Key)
    if Key == "Walkspeed" and Self == game:GetService("Players").LocalPlayer.Character.Humanoid or Key == "JumpPower" and Self == game:GetService("Players").LocalPlayer.Character.Humanoid then
        return nil;
    end;
    return old_hookmetamethod(Self, Key);
end)

game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 100;
game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 100;
