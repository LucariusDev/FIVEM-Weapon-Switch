local lastweapon = ""

CreateThread(function()
    while true do
        Wait(20)
        local weapon = GetSelectedPedWeapon(PlayerPedId())
        if weapon ~= lastweapon then
            lastweapon = weapon
            RefillAmmoInstantly(PlayerPedId())
        end
    end
end)