----------------------------------------
--
--   tpz.effect.BEWILDERED_DAZE_5
--
----------------------------------------
local effecttbl = {}

function onEffectGain(target, effect)
    target:addMod(tpz.mod.CEVA, -13)
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.CEVA, -13)
end

return effecttbl
