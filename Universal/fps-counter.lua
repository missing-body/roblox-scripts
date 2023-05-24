local FPS = 0;

game:GetService("RunService").RenderStepped:Connect(function()
    FPS = FPS + 1;
end);

while task.wait(1) do
    print("Current FPS ".. FPS)
end;
