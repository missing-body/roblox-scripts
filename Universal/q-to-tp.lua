local Mouse = game:GetService("Players").LocalPlayer:GetMouse();

Mouse.KeyDown:Connect(function(v)
    if v == "q" and Mouse.Target then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Mouse.Hit.X, Mouse.Hit.Y, Mouse.Hit.Z)
    end;
end);
