-----------------------------------
-- Area: Den of Rancor
--  Mob: Million Eyes
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 800, 1, tpz.regime.type.GROUNDS)
end

return entity
