-----------------------------------
-- Area: Apollyon SW
--  Mob: Light Elemental
-----------------------------------
require("scripts/globals/limbus")
local ID = require("scripts/zones/Apollyon/IDs")
-----------------------------------
local entity = {}

entity.onMobEngaged = function(mob, target)
    GetMobByID(ID.mob.APOLLYON_SW_MOB[4]+5):updateEnmity(target)
    GetMobByID(ID.mob.APOLLYON_SW_MOB[4]+13):updateEnmity(target)
    GetMobByID(ID.mob.APOLLYON_SW_MOB[4]+21):updateEnmity(target)
end

entity.onMobDeath = function(mob, player, isKiller, noKiller)
    if isKiller or noKiller then
        if tpz.limbus.elementalsDead() then
            GetNPCByID(ID.npc.APOLLYON_SW_CRATE[4]):setStatus(tpz.status.NORMAL)
        end
    end
end

return entity
