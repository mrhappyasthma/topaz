-----------------------------------
require("scripts/globals/status")
-----------------------------------
local effecttbl = {}

function onEffectGain(target, effect)
    target:addMod(tpz.mod.HP, 9000)
    target:addMod(tpz.mod.MP, 9000)
    target:addMod(tpz.mod.REGEN, 300)
    target:addMod(tpz.mod.REFRESH, 300)
    target:addMod(tpz.mod.REGAIN, 500)
    target:addMod(tpz.mod.STR, 900)
    target:addMod(tpz.mod.DEX, 900)
    target:addMod(tpz.mod.VIT, 900)
    target:addMod(tpz.mod.AGI, 900)
    target:addMod(tpz.mod.INT, 900)
    target:addMod(tpz.mod.MND, 900)
    target:addMod(tpz.mod.CHR, 900)
    target:addMod(tpz.mod.ATT, 9000)
    target:addMod(tpz.mod.DEF, 9000)
    target:addMod(tpz.mod.ACC, 1000)
    target:addMod(tpz.mod.EVA, 1000)
    target:addMod(tpz.mod.MATT, 900)
    target:addMod(tpz.mod.RACC, 1000)
    target:addMod(tpz.mod.RATT, 9000)
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.HP, 9000)
    target:delMod(tpz.mod.MP, 9000)
    target:delMod(tpz.mod.REGEN, 300)
    target:delMod(tpz.mod.REFRESH, 300)
    target:delMod(tpz.mod.REGAIN, 500)
    target:delMod(tpz.mod.STR, 900)
    target:delMod(tpz.mod.DEX, 900)
    target:delMod(tpz.mod.VIT, 900)
    target:delMod(tpz.mod.AGI, 900)
    target:delMod(tpz.mod.INT, 900)
    target:delMod(tpz.mod.MND, 900)
    target:delMod(tpz.mod.CHR, 900)
    target:delMod(tpz.mod.ATT, 9000)
    target:delMod(tpz.mod.DEF, 9000)
    target:delMod(tpz.mod.ACC, 1000)
    target:delMod(tpz.mod.EVA, 1000)
    target:delMod(tpz.mod.MATT, 900)
    target:delMod(tpz.mod.RACC, 1000)
    target:delMod(tpz.mod.RATT, 9000)
end

return effecttbl
