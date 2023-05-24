local mt = getrawmetatable(game);
setreadonly(mt, false);
local old = mt.__newindex;

mt.__newindex = newcclosure(function(i, v, c)
    if tostring(i) == "Humanoid" and tostring(v) == "WalkSpeed" then
        return old(i, v, 16);
    end;
    return old(i, v, c);
end);

game:GetService("Players").LocalPlayer.Character.Humanoid.Walkspeed = 100;
