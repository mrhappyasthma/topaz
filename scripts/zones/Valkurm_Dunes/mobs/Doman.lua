-----------------------------------
-- Area: Valkurm Dunes
--  Mob: Doman
-- Involved in Quest: Yomi Okuri
-----------------------------------
require("scripts/globals/keyitems")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)

    if (player:hasKeyItem(tpz.ki.YOMOTSU_HIRASAKA)) then
        player:addCharVar("OkuriNMKilled", 1)
    end

end

return entity
