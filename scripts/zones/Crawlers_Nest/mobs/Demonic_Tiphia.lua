-----------------------------------
-- Area: Crawlers' Nest (197)
--  Mob: Demonic Tiphia
-----------------------------------
require("scripts/globals/hunts")
-----------------------------------
local entity = {}

function onMobDeath(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 236)
end

return entity
