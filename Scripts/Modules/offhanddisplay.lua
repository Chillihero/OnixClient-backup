name = "Offhand slot display"
description = "shows the offhand item"

positionX = 520
positionY = 446.5
sizeX = 22
sizeY = 22

path = "textures/ui/hotbar_0"
atlasPath = "textures/gui/gui.png"
opacity = 1

--[[
    Original module made by MCBE Craft
]]--

function update(deltaTime)

end


function render(deltaTime)
    if (gui.mouseGrabbed() == false) then
        gfx.ctexture(0, 0, sizeX / 2, sizeY, atlasPath, 0, 0, 0.04296874999, 0.08593749999)
        gfx.ctexture(sizeX / 2, 0, sizeX / 2, sizeY, atlasPath, 0.66796875, 0, 0.04296874999, 0.08593749999)
        gfx.fimage()
        local inventory = player.inventory()
        local offhandItem = inventory.offhand()
        if (offhandItem ~= nil) then
            gfx.item(3, 3, offhandItem.location, 1)
            if (offhandItem.count ~= 1 and player.gamemode() ~= 1) then
                gfx.color(255,255,255, math.floor(255 * opacity))
                if (offhandItem.count >= 10) then
                    gfx.text(8, 11, offhandItem.count, 1)
                else
                    gfx.text(14, 11, offhandItem.count, 1)
                end
            end
        
        end
        
    end
end