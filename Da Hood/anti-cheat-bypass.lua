local flagged_remotes = {
    "TeleportDetect";
    "CHECKER_1";
    "CHECKER_2";
    "OneMoreTime";
    "VirusCough";
    "BreathingHAMON";
    "TimerMoney";
};

local old;
old = hookmetamethod(game, "__namecall", function(...)
    local args = {...};
    local namecallmethod = getnamecallmethod();
    if (namecallmethod == "FireServer" and args[1] == "MainEvent" and table.find(flagged_remotes, args[2])) then
        return;
    end;
    return old(table.unpack(args));
end);
