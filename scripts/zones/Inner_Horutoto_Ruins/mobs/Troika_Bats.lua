-----------------------------------
-- Area: Inner Horutoto Ruins
--  Mob: Troika Bats
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 651, 1, tpz.regime.type.GROUNDS)
end

return entity
