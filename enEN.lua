CraftSimLOC_EN = {}

function CraftSimLOC_EN:GetData()
    return {
        -- Profit Breakdown Tooltips
        [CraftSimCONST.TEXT.RESOURCEFULNESS_EXPLANATION_TOOLTIP] = "Resourcefulness proccs for every material individually and then saves about 30% of its quantity.\n\nThe average value it saves is the average saved value of EVERY combination and their chances.\n(All materials proccing at once is very unlikely but saves a lot)\n\nThe average total saved material costs is the sum of the saved material costs of all combinations weighted against their chance.",
        [CraftSimCONST.TEXT.MULTICRAFT_ADDITIONAL_ITEMS_EXPLANATION_TOOLTIP] = "This number shows the average amount of items that are additionally created by multicraft.\n\nThis considers your chance and assumes for multicraft that\n(1-2.5y)*any_spec_bonus additional items are created where y is base average of items created for 1 craft",
        [CraftSimCONST.TEXT.MULTICRAFT_ADDITIONAL_ITEMS_VALUE_EXPLANATION_TOOLTIP] = "This is the average number of additional items created by multicraft times the sell price of the result item on this quality",
        [CraftSimCONST.TEXT.MULTICRAFT_ADDITIONAL_ITEMS_HIGHER_VALUE_EXPLANATION_TOOLTIP] = "This is the average number of additional items created by multicraft and inspiration times the sell price of the result item on the quality reached by inspiration",
        [CraftSimCONST.TEXT.MULTICRAFT_ADDITIONAL_ITEMS_HIGHER_QUALITY_EXPLANATION_TOOLTIP] = "This number shows the average amount of items that are additionally created by multicraft proccing with inspiration.\n\nThis considers your multicraft and inspiration chance and reflects the additional items created when both procc at once",
        [CraftSimCONST.TEXT.INSPIRATION_ADDITIONAL_ITEMS_EXPLANATION_TOOLTIP] = "This number shows the average amount of items that are created on your current guaranteed quality, when inspiration does not procc",
        [CraftSimCONST.TEXT.INSPIRATION_ADDITIONAL_ITEMS_HIGHER_QUALITY_EXPLANATION_TOOLTIP] = "This number shows the average amount of items that are created on the next reachable quality with inspiration",
        [CraftSimCONST.TEXT.INSPIRATION_ADDITIONAL_ITEMS_VALUE_EXPLANATION_TOOLTIP] = "This is the average number of items created on the guaranteed quality times the sell price of the result item on this quality",
        [CraftSimCONST.TEXT.INSPIRATION_ADDITIONAL_ITEMS_HIGHER_VALUE_EXPLANATION_TOOLTIP] = "This is the average number of items created on the quality reached with inspiration times the sell price of the result item on the quality reached by inspiration",

        [CraftSimCONST.TEXT.RECIPE_DIFFICULTY_EXPLANATION_TOOLTIP] = "Recipe difficulty determines where the breakpoints of the different qualities are.\n\nFor recipes with five qualities they are at 20%, 50%, 80% and 100% recipe difficulty as skill.\nFor recipes with three qualities they are at 50% and 100%",
        [CraftSimCONST.TEXT.INSPIRATION_EXPLANATION_TOOLTIP] = "Inspiration gives you a chance to add skill to your craft.\n\nThis may lead to higher quality crafts if the added skill puts your skill over the threshold for the next quality.\nFor recipes with 5 qualities the base bonus skill is a sixth (16.67%) of the base recipe difficulty.\nFor recipes with 3 qualities its a third (33.33%)",
        [CraftSimCONST.TEXT.MULTICRAFT_EXPLANATION_TOOLTIP] = "Multicraft gives you a chance of crafting more items than you would usually produce with a recipe.\n\nThe additional amount is usually between 1 and 2.5y\nwhere y = the usual amount 1 craft yields.",
        [CraftSimCONST.TEXT.RESOURCEFULNESS_EXPLANATION_TOOLTIP] = "Resourcefulness gives you a chance PER MATERIAL that you save about 30% of its quantity on average.\n\nAs it can procc for each material individually there are many possible combinations that have to be considered\nsuch as everything proccing at once (the chance for this is very very low)",
        [CraftSimCONST.TEXT.REAGENTSKILL_EXPLANATION_TOOLTIP] = "The quality of your materials can give you a maximum of 25% of the base recipe difficulty as bonus skill.\n\nAll Q1 Materials: 0% Bonus\nAll Q2 Materials: 12.5% Bonus\nAll Q3 Materials: 25% Bonus\n\nThe skill is calculated by the amount of materials of each quality weighted against their quality\nand a specific weight value that is unique to each individual dragon flight crafting material item",
    
        -- Details Frame
        [CraftSimCONST.TEXT.RECIPE_DIFFICULTY_LABEL] = "Recipe Difficulty: ",
        [CraftSimCONST.TEXT.INSPIRATION_LABEL] = "Inspiration: ",
        [CraftSimCONST.TEXT.MULTICRAFT_LABEL] = "Multicraft: ",
        [CraftSimCONST.TEXT.RESOURCEFULNESS_LABEL] = "Resourcefulness: ",
    }
end