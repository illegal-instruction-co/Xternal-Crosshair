local xuiWidth, xuiHeight = GetActiveScreenResolution()
local xuiHandle = FiveX.CreateXui("https://raw.githubusercontent.com/illegal-instruction-co/Xternal-Crosshair/main/index.html", xuiWidth, xuiHeight)

--[[
  Destroy XESP Thread
--]]
Citizen.CreateThread(function()
  while true do
    if activeXui then
      if FiveX.IsKeyPressed(0x73) then -- F4
          FiveX.DestroyXui(xuiHandle)
          activeXui = false
      end
    end
    Citizen.Wait(0)
  end
end)
