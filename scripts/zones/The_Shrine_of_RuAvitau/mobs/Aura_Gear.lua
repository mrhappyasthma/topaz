-----------------------------------
-- Area: The Shrine of Ru'Avitau
--  Mob: Aura Gear
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 749, 1, tpz.regime.type.GROUNDS)
    tpz.regime.checkRegime(player, mob, 752, 1, tpz.regime.type.GROUNDS)
end

return entity
