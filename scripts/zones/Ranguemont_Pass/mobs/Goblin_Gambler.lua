-----------------------------------
-- Area: Ranguemont Pass
--  Mob: Goblin Gambler
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 604, 2, tpz.regime.type.GROUNDS)
    tpz.regime.checkRegime(player, mob, 605, 2, tpz.regime.type.GROUNDS)
end

return entity
