-----------------------------------
-- Area: King Ranperres Tomb
--  Mob: Stone Eater
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 632, 1, tpz.regime.type.GROUNDS)
end

return entity
