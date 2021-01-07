-----------------------------------
--
-- tpz.effect.MAX_HP_DOWN
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local effecttbl = {}

function onEffectGain(target, effect)
    target:addMod(tpz.mod.HPP, -effect:getPower())
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.HPP, -effect:getPower())
end

return effecttbl
