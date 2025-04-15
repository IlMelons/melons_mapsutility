---@description UPDATE-RENAME CHECKER
--- This part of the script is used to detect script updates and the correct
--- rename of the script to avoid problems with exports (if any).

---@diagnostic disable

local ExpectedName = GetResourceMetadata(GetCurrentResourceName(), "name")

lib.versionCheck(("IlMelons/%s"):format(ExpectedName))

AddEventHandler("onResourceStart", function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end

    if GetCurrentResourceName() ~= ExpectedName then
        print(("^1[WARNING]: The resource name is incorrect. Please set it to %s.^0"):format(ExpectedName))
    end
end)