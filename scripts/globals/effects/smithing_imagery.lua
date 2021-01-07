-----------------------------------
--
-- SMITHING_IMAGERY
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local effecttbl = {}

function onEffectGain(target, effect)
    target:addMod(tpz.mod.SMITH, effect:getPower())
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.SMITH, effect:getPower())
end

return effecttbl
