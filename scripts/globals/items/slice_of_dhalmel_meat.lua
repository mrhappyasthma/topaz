-----------------------------------
-- ID: 4359
-- Item: slice_of_dhalmel_meat
-- Food Effect: 5Min, Galka only
-----------------------------------
-- Strength 3
-- Intelligence -5
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    local result = 0
    if (target:getRace() ~= tpz.race.GALKA) then
        result = tpz.msg.basic.CANNOT_EAT
    end
    if (target:getMod(tpz.mod.EAT_RAW_MEAT) == 1) then
        result = 0
    end
    if target:hasStatusEffect(tpz.effect.FOOD) or target:hasStatusEffect(tpz.effect.FIELD_SUPPORT_FOOD) then
        result = tpz.msg.basic.IS_FULL
    end
    return result
end

item_object.onItemUse = function(target)
    target:addStatusEffect(tpz.effect.FOOD, 0, 0, 300, 4359)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(tpz.mod.STR, 3)
    target:addMod(tpz.mod.INT, -5)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(tpz.mod.STR, 3)
    target:delMod(tpz.mod.INT, -5)
end

return item_object
