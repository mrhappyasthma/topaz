-----------------------------------
-- ID: 6567
-- Item: Tropical Crepe
-- Food Effect: 30 minutes, all Races
-----------------------------------
-- INT +2
-- MND +2
-- Magic Accuracy +20% (Max. 90)
-- "Magic Def. Bonus" +1
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    local result = 0
    if target:hasStatusEffect(tpz.effect.FOOD) or target:hasStatusEffect(tpz.effect.FIELD_SUPPORT_FOOD) then
        result = tpz.msg.basic.IS_FULL
    end
    return result
end

item_object.onItemUse = function(target)
    target:addStatusEffect(tpz.effect.FOOD, 0, 0, 1800, 6567)
end
item_object.onEffectGain = function(target, effect)
    target:addMod(tpz.mod.INT, 2)
    target:addMod(tpz.mod.MND, 2)
    target:addMod(tpz.mod.FOOD_MACCP, 20)
    target:addMod(tpz.mod.FOOD_MACC_CAP, 90)
    target:addMod(tpz.mod.MDEF, 1)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(tpz.mod.INT, 2)
    target:delMod(tpz.mod.MND, 2)
    target:delMod(tpz.mod.FOOD_MACCP, 20)
    target:delMod(tpz.mod.FOOD_MACC_CAP, 90)
    target:delMod(tpz.mod.MDEF, 1)
end

return item_object
