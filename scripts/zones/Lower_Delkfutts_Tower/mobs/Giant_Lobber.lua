-----------------------------------
-- Area: Lower Delkfutt's Tower
--  Mob: Giant Lobber
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 778, 2, tpz.regime.type.GROUNDS)
end

return entity
