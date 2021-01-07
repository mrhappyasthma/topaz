-----------------------------------
--
--
--
-----------------------------------
local effecttbl = {}

require("scripts/globals/status")

function onEffectGain(target, effect)
    target:addMod(tpz.mod.REGAIN, effect:getPower())
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.REGAIN, effect:getPower())
end

return effecttbl
