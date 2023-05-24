-- please do not use this as ur whitelist, this is a terrible method of whitelisting, just use it as a learning tool (if ur a complete beginner lol)
local WhitelistedHWIDs = {};

function Whitelisted(HWID)
    for i, v in next, WhitelistedHWIDs do
        if HWID ~= v then
            return false;
        end;
    end;
    return true;
end;

if Whitelisted(game:GetService("RbxAnalyticsService"):GetClientId()) then
    print("Whitelisted");
end;
