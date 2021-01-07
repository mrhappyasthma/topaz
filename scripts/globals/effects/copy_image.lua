----------------------------------------
--
--     tpz.effect.COPY_IMAGE
--
----------------------------------------
require("scripts/globals/status")
----------------------------------------
local effecttbl = {}

function onEffectGain(target, effect)
    target:setMod(tpz.mod.UTSUSEMI, effect:getSubPower())
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:setMod(tpz.mod.UTSUSEMI, 0)
end

return effecttbl
