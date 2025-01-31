---@description UPDATE-RENAME CHECKER
--- This part of the script is used to track script updates through ox_lib and has a built-in function that
--- detects if the script has the right name to make exports (if any) work as described in the documentation.
--- [WARNING]: Remove only if you are sure of what you are doing

---@diagnostic disable

local ExpectedName = GetResourceMetadata(GetCurrentResourceName(), "name")

lib.versionCheck(("IlMelons/%s"):format(ExpectedName))

AddEventHandler("onResourceStart", function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end

    if GetCurrentResourceName() ~= ExpectedName then
        print(("^1[WARNING]: The resource name is incorrect. Please set it to %s.^0"):format(ExpectedName))
    end
end)
