---@class CraftSim
local CraftSim = select(2, ...)

CraftSim.LOCAL_FR = {}

function CraftSim.LOCAL_FR:GetData()
	local f = CraftSim.GUTIL:GetFormatter()
    local cm = function(i, s) return CraftSim.MEDIA:GetAsTextIcon(i, s) end
	return {
		-- REQUIRED:
		[CraftSim.CONST.TEXT.STAT_INSPIRATION] = "Inspiration",
		[CraftSim.CONST.TEXT.STAT_MULTICRAFT] = "Fabrication multiple",
		[CraftSim.CONST.TEXT.STAT_RESOURCEFULNESS] = "Ingéniosité",
		[CraftSim.CONST.TEXT.STAT_CRAFTINGSPEED] = "Vitesse de fabrication",
		[CraftSim.CONST.TEXT.EQUIP_MATCH_STRING] = "Équipé",
		[CraftSim.CONST.TEXT.ENCHANTED_MATCH_STRING] = "Enchanté:",

		-- OPTIONAL (Defaulting to EN if not available):

        -- shared prof cds
        [CraftSim.CONST.TEXT.DF_ALCHEMY_TRANSMUTATIONS] = "DF - Transmutations",

        -- expansions

        [CraftSim.CONST.TEXT.EXPANSION_VANILLA] = "Classic",
        [CraftSim.CONST.TEXT.EXPANSION_THE_BURNING_CRUSADE] = "The Burning Crusade",
        [CraftSim.CONST.TEXT.EXPANSION_WRATH_OF_THE_LICH_KING] = "Wrath of the Lich King",
        [CraftSim.CONST.TEXT.EXPANSION_CATACLYSM] = "Cataclysm",
        [CraftSim.CONST.TEXT.EXPANSION_MISTS_OF_PANDARIA] = "Mists of Pandaria",
        [CraftSim.CONST.TEXT.EXPANSION_WARLORDS_OF_DRAENOR] = "Warlords of Draenor",
        [CraftSim.CONST.TEXT.EXPANSION_LEGION] = "Legion",
        [CraftSim.CONST.TEXT.EXPANSION_BATTLE_FOR_AZEROTH] = "Battle of Azeroth",
        [CraftSim.CONST.TEXT.EXPANSION_SHADOWLANDS] = "Shadowlands",
        [CraftSim.CONST.TEXT.EXPANSION_DRAGONFLIGHT] = "Dragonflight",

        -- professions

        [CraftSim.CONST.TEXT.PROFESSIONS_BLACKSMITHING] = "Forge",
        [CraftSim.CONST.TEXT.PROFESSIONS_LEATHERWORKING] = "Travail du cuir",
        [CraftSim.CONST.TEXT.PROFESSIONS_ALCHEMY] = "Alchimie",
        [CraftSim.CONST.TEXT.PROFESSIONS_HERBALISM] = "Herboristerie",
        [CraftSim.CONST.TEXT.PROFESSIONS_COOKING] = "Cuisine",
        [CraftSim.CONST.TEXT.PROFESSIONS_MINING] = "Minage",
        [CraftSim.CONST.TEXT.PROFESSIONS_TAILORING] = "Couture",
        [CraftSim.CONST.TEXT.PROFESSIONS_ENGINEERING] = "Ingénierie",
        [CraftSim.CONST.TEXT.PROFESSIONS_ENCHANTING] = "Enchantement",
        [CraftSim.CONST.TEXT.PROFESSIONS_FISHING] = "Pêche",
        [CraftSim.CONST.TEXT.PROFESSIONS_SKINNING] = "Dépeçage",
        [CraftSim.CONST.TEXT.PROFESSIONS_JEWELCRAFTING] = "Joaillerie",
        [CraftSim.CONST.TEXT.PROFESSIONS_INSCRIPTION] = "Calligraphie",

        -- Other Statnames

        [CraftSim.CONST.TEXT.STAT_SKILL] = "Compétence",
        [CraftSim.CONST.TEXT.STAT_MULTICRAFT_BONUS] = "Objets bonus multicraft",
        [CraftSim.CONST.TEXT.STAT_RESOURCEFULNESS_BONUS] = "Objets bonus de l'ingéniosité",
        [CraftSim.CONST.TEXT.STAT_INSPIRATION_BONUS] = "Bonus de compétence d'inspiration",
        [CraftSim.CONST.TEXT.STAT_CRAFTINGSPEED_BONUS] = "Vitesse d'artisanat'",
        [CraftSim.CONST.TEXT.STAT_PHIAL_EXPERIMENTATION] = "Expérimentation des flacons",
        [CraftSim.CONST.TEXT.STAT_POTION_EXPERIMENTATION] = "Expérimentation des potions",

        -- Profit Breakdown Tooltips
        [CraftSim.CONST.TEXT.RESOURCEFULNESS_EXPLANATION_TOOLTIP] =
        "Resourcefulness procs for every material individually and then saves about 30% of its quantity.\n\nThe average value it saves is the average saved value of EVERY combination and their chances.\n(All materials proccing at once is very unlikely but saves a lot)\n\nThe average total saved material costs is the sum of the saved material costs of all combinations weighted against their chance.",
        [CraftSim.CONST.TEXT.MULTICRAFT_ADDITIONAL_ITEMS_EXPLANATION_TOOLTIP] =
        "This number shows the average amount of items that are additionally created by multicraft.\n\nThis considers your chance and assumes for multicraft that\n(1-2.5y)*any_spec_bonus additional items are created where y is base average of items created for 1 craft",
        [CraftSim.CONST.TEXT.MULTICRAFT_ADDITIONAL_ITEMS_VALUE_EXPLANATION_TOOLTIP] =
        "This is the average number of additional items created by multicraft times the sell price of the result item on this quality",
        [CraftSim.CONST.TEXT.MULTICRAFT_ADDITIONAL_ITEMS_HIGHER_VALUE_EXPLANATION_TOOLTIP] =
        "This is the average number of additional items created by multicraft and inspiration times the sell price of the result item on the quality reached by inspiration",
        [CraftSim.CONST.TEXT.MULTICRAFT_ADDITIONAL_ITEMS_HIGHER_QUALITY_EXPLANATION_TOOLTIP] =
        "This number shows the average amount of items that are additionally created by multicraft proccing with inspiration.\n\nThis considers your multicraft and inspiration chance and reflects the additional items created when both procc at once",
        [CraftSim.CONST.TEXT.INSPIRATION_ADDITIONAL_ITEMS_EXPLANATION_TOOLTIP] =
        "This number shows the average amount of items that are created on your current guaranteed quality, when inspiration does not procc",
        [CraftSim.CONST.TEXT.INSPIRATION_ADDITIONAL_ITEMS_HIGHER_QUALITY_EXPLANATION_TOOLTIP] =
        "This number shows the average amount of items that are created on the next reachable quality with inspiration",
        [CraftSim.CONST.TEXT.INSPIRATION_ADDITIONAL_ITEMS_VALUE_EXPLANATION_TOOLTIP] =
        "This is the average number of items created on the guaranteed quality times the sell price of the result item on this quality",
        [CraftSim.CONST.TEXT.INSPIRATION_ADDITIONAL_ITEMS_HIGHER_VALUE_EXPLANATION_TOOLTIP] =
        "This is the average number of items created on the quality reached with inspiration times the sell price of the result item on the quality reached by inspiration",

        [CraftSim.CONST.TEXT.RECIPE_DIFFICULTY_EXPLANATION_TOOLTIP] =
        "Recipe difficulty determines where the breakpoints of the different qualities are.\n\nFor recipes with five qualities they are at 20%, 50%, 80% and 100% recipe difficulty as skill.\nFor recipes with three qualities they are at 50% and 100%",
        [CraftSim.CONST.TEXT.INSPIRATION_EXPLANATION_TOOLTIP] =
        "Inspiration gives you a chance to add skill to your craft.\n\nThis may lead to higher quality crafts if the added skill puts your skill over the threshold for the next quality.\nFor recipes with 5 qualities the base bonus skill is a sixth (16.67%) of the base recipe difficulty.\nFor recipes with 3 qualities its a third (33.33%)",
        [CraftSim.CONST.TEXT.INSPIRATION_SKILL_EXPLANATION_TOOLTIP] =
        "This is the skill that is added on top of your current skill if inspiration procs.\n\nIf your current skill plus this bonus skill reaches the threshold\nof the next quality, you craft the item in this higher quality.",
        [CraftSim.CONST.TEXT.MULTICRAFT_EXPLANATION_TOOLTIP] =
        "Multicraft gives you a chance of crafting more items than you would usually produce with a recipe.\n\nThe additional amount is usually between 1 and 2.5y\nwhere y = the usual amount 1 craft yields.",
        [CraftSim.CONST.TEXT.REAGENTSKILL_EXPLANATION_TOOLTIP] =
        "The quality of your materials can give you a maximum of 25% of the base recipe difficulty as bonus skill.\n\nAll Q1 Materials: 0% Bonus\nAll Q2 Materials: 12.5% Bonus\nAll Q3 Materials: 25% Bonus\n\nThe skill is calculated by the amount of materials of each quality weighted against their quality\nand a specific weight value that is unique to each individual dragon flight crafting material item\n\nThis is however different for recrafts. There the maximum the reagents can increase the quality\nis dependent on the quality of materials the item was originally crafted with.\nThe exact workings are not known.\nHowever, CraftSim internally compares the achieved skill with all q3 and calculates\nthe max skill increase based on that.",
        [CraftSim.CONST.TEXT.REAGENTFACTOR_EXPLANATION_TOOLTIP] =
        "The maximum the materials can contribute to a recipe is most of the time 25% of the base recipe difficulty.\n\nHowever in the case of recrafting, this value can vary based on previous crafts\nand the quality of materials that were used.",

        -- Simulation Mode
        [CraftSim.CONST.TEXT.SIMULATION_MODE_NONE] = "None",
        [CraftSim.CONST.TEXT.SIMULATION_MODE_LABEL] = "Mode Simulation",
        [CraftSim.CONST.TEXT.SIMULATION_MODE_TITLE] = "CraftSim Mode Simulation",
        [CraftSim.CONST.TEXT.SIMULATION_MODE_TOOLTIP] =
        "Le Mode Simulation de Craftsim permet de jouer avec toutes les options sans aucune réstrictions",
        [CraftSim.CONST.TEXT.SIMULATION_MODE_OPTIONAL] = "Optionnel #",
        [CraftSim.CONST.TEXT.SIMULATION_MODE_FINISHING] = "Finition #",

        -- Details Frame
        [CraftSim.CONST.TEXT.RECIPE_DIFFICULTY_LABEL] = "Difficulté: ",
        [CraftSim.CONST.TEXT.INSPIRATION_LABEL] = "Inspiration: ",
        [CraftSim.CONST.TEXT.INSPIRATION_SKILL_LABEL] = "Comp. Inspiration: ",
        [CraftSim.CONST.TEXT.MULTICRAFT_LABEL] = "Multicraft: ",
        [CraftSim.CONST.TEXT.RESOURCEFULNESS_LABEL] = "Ingéniosité: ",
        [CraftSim.CONST.TEXT.RESOURCEFULNESS_BONUS_LABEL] = "Item Bonus Ingéniosité: ",
        [CraftSim.CONST.TEXT.MATERIAL_QUALITY_BONUS_LABEL] = "Bonus Qualité Matériaux: ",
        [CraftSim.CONST.TEXT.MATERIAL_QUALITY_MAXIMUM_LABEL] = "Maximum Qualité Matériaux %: ",
        [CraftSim.CONST.TEXT.EXPECTED_QUALITY_LABEL] = "Qualité attendue: ",
        [CraftSim.CONST.TEXT.NEXT_QUALITY_LABEL] = "Qualité suivante: ",
        [CraftSim.CONST.TEXT.MISSING_SKILL_LABEL] = "Comp. Manquante: ",
        [CraftSim.CONST.TEXT.MISSING_SKILL_INSPIRATION_LABEL] = "Comp. Manquante (Inspiration)",
        [CraftSim.CONST.TEXT.SKILL_LABEL] = "Compétence: ",
        [CraftSim.CONST.TEXT.MULTICRAFT_BONUS_LABEL] = "Item Bonus Multicraft : ",

        -- Customer Service Module
        [CraftSim.CONST.TEXT.HSV_EXPLANATION] =
        "HSV stands for 'Hidden Skill Value' and is a hidden skill increase between 0 to 5% of your recipe difficulty whenever you craft something.\n\nThis hidden skill value can bring you to the next quality similar to inspiration.\n\nHowever, the closer you are to the next quality the higher is the chance!",

        -- Statistics
        [CraftSim.CONST.TEXT.STATISTICS_CDF_EXPLANATION] =
        "This is calculated by using the 'abramowitz and stegun' approximation (1985) of the CDF (Cumulative Distribution Function)\n\nYou will notice that its always around 50% for 1 craft.\nThis is because 0 is most of the time close to the average profit.\nAnd the chance of getting the mean of the CDF is always 50%.\n\nHowever, the rate of change can be very different between recipes.\nIf it is more likely to have a positive profit than a negative one, it will steadly increase.\nThis is of course also true for the other direction.",
        [CraftSim.CONST.TEXT.EXPLANATIONS_PROFIT_CALCULATION_EXPLANATION] =
            f.r("Warning: ") .. " Math ahead!\n\n" ..
            "When you craft something you have different chances for different outcomes based on your crafting stats.\n" ..
            "And in statistics this is called a " .. f.l("Probability Distribution.\n") ..
            "However, you will notice that the different chances of your procs do not sum up to one\n" ..
            "(Which is required for such a distribution as it means you got a 100% chance that anything can happen)\n\n" ..
            "This is because procs like " ..
            f.bb("Inspiration ") .. "and" .. f.bb(" Multicraft") .. " can happen " .. f.g("at the same time.\n") ..
            "So we first need to convert our proc chances to a " ..
            f.l("Probability Distribution ") .. " with chances\n" ..
            "summing to 100% (Which would mean that every case is covered)\n" ..
            "And for this we would need to calculate " .. f.l("every") .. " possible outcome of a craft\n\n" ..
            "Like: \n" ..
            f.p .. "What if " .. f.bb("nothing") .. " procs?\n" ..
            f.p .. "What if " .. f.bb("everything") .. " procs?\n" ..
            f.p .. "What if only " .. f.bb("Inspiration") .. " and " .. f.bb("Multicraft") .. " procs?\n" ..
            f.p .. "And so on..\n\n" ..
            "For a recipe that considers all three procs, that would be 2 to the power of 3 outcome possibilities, which is a neat 8.\n" ..
            "To get the chance of only " .. f.bb("Inspiration") .. " occuring, we have to consider all other procs!\n" ..
            "The chance to proc " ..
            f.l("only") .. f.bb(" Inspiration ") .. "is actually the chance to proc " .. f.bb("Inspiration\n") ..
            "But to " .. f.l("not ") .. "proc " .. f.bb("Multicraft") .. " or " .. f.bb("Resourcefulness.\n") ..
            "And Math tells us that the chance of something not occuring is 1 minus the chance of it occuring.\n" ..
            "So the chance to proc only " ..
            f.bb("Inspiration ") ..
            "is actually " .. f.g("inspirationChance * (1-multicraftChance) * (1-resourcefulnessChance)\n\n") ..
            "After calculating each possibility in that way the individual chances indeed sum up to one!\n" ..
            "Which means we can now apply statistical formulas. The most interesting one in our case is the " ..
            f.bb("Expected Value") .. "\n" ..
            "Which is, as the name suggests, the value we can expect to get on average, or in our case, the " ..
            f.bb(" expected profit for a craft!\n") ..
            "\n" .. cm(CraftSim.MEDIA.IMAGES.EXPECTED_VALUE) .. "\n\n" ..
            "This tells us that the expected value " ..
            f.l("E") ..
            " of a probability distribution " ..
            f.l("X") .. " is the sum of all its values multiplied by their chance.\n" ..
            "So if we have one " ..
            f.bb("case A with chance 30%") ..
            " and profit " ..
            f.m(-100 * 10000) ..
            " and a " ..
            f.bb("case B with chance 70%") ..
            " and profit " .. f.m(300 * 10000) .. " then the expected profit of that is\n" ..
            f.bb("\nE(X) = -100*0.3 + 300*0.7  ") .. "which is " .. f.m((-100 * 0.3 + 300 * 0.7) * 10000) .. "\n" ..
            "You can view all cases for your current recipe in the " .. f.bb("Statistics") .. " window!"
        ,
        [CraftSim.CONST.TEXT.EXPLANATIONS_HSV_EXPLANATION] =
            "The " ..
            f.l("Hidden Skill Value (HSV)") ..
            " is an additional random factor that occurs everytime you craft something. It is not mentioned anywhere in the game.\n" ..
            "However you can observe a visualization of the proc: When you craft something the " ..
            f.bb("Quality Meter") ..
            "\nfills up to a certain point. And this can 'shoot' quite a bit over your current shown skill.\n" ..
            "\n" .. cm(CraftSim.MEDIA.IMAGES.HSV_EXAMPLE) .. "\n\n" ..
            "This extra skill is always between 0% and 5% of your " ..
            f.bb("Base Recipe Difficulty") ..
            ".\nMeaning if you have a recipe with 400 difficulty. You can get up to 20 Skill.\n" ..
            "And tests tell us that this is " ..
            f.bb("uniformly distributed") .. ". Meaning every percent value has the same chance.\n" ..
            f.l("HSV") ..
            " can influence profits heavily when close to a quality! In CraftSim it is treated as an additional proc, like " ..
            f.bb("Inspiration") .. " or " .. f.bb("Multicraft.\n") ..
            "However, its effect is depending on your current skill, the recipe difficulty, and the skill you need to reach the next quality.\n" ..
            "So CraftSim calculates the " ..
            f.bb("missing skill") ..
            " to reach the next quality and converts it to " .. f.bb("percent relative to the recipe difficulty\n\n") ..
            "So for a recipe with 400 difficulty:if you have 190 Skill, and need 200 to reach the next quality, the missing skill would be 10\n" ..
            "To get this value in percent relative to the difficulty you can calculate it like this: " ..
            f.bb("10 / (400 / 100)") .. " which is " .. f.bb("2.5%\n\n") ..
            "Then we need to remember that the " .. f.l("HSV") .. " can give us anywhere between 0 and 5 percent.\n" ..
            "So we need to calculate the " ..
            f.bb("chance of getting 2.5 or more") .. " when getting a random number between 0 and 5\n" ..
            "to know the chance of " .. f.l("HSV") .. " giving us a higher quality.\n\n" ..
            "Statistics tell us that such a uniform chance to receive something between two boundaries is called a " ..
            f.l("Continuous Uniform Probability Distribution\n") ..
            "And thus there is a formula which yields exactly what we need:\n\n" ..
            f.bb("(upperBound - X) / (upperBound - lowerBound)") .. "\nwhere\n" ..
            f.bb("upperBound") .. " is 5\n" ..
            f.bb("lowerBound") .. " is 0\n" ..
            "and " .. f.bb("X") .. " is the desired value where we want equal or more from. In this case 2.5\n" ..
            "In this case we are right in the middle of the " ..
            f.l("HSV 'Area'") .. " so that we have a chance of\n\n" ..
            f.bb("(5 - 2.5) / (5 - 0) = 0.5") .. " aka 50% to get to next quality by " .. f.l("HSV") .. " alone.\n" ..
            "If we would have more missing skill we would have less chance and the other way round!\n" ..
            "Also, if you are missing skill of 5% or more the chance is 0 or negative, meaning it is not possible that " ..
            f.l("HSV") .. " alone triggers an upgrade.\n\n" ..
            "However, it is possible that you also reach the next quality when " ..
            f.bb("Inspiration") .. " and " .. f.l("HSV") .. " occur together and\n" ..
            "the skill from " ..
            f.bb("Inspiration") ..
            " plus the skill from " ..
            f.l("HSV") .. " give you enough skill to reach the next quality! This is also considered by CraftSim."
        ,

        -- Popups
        [CraftSim.CONST.TEXT.POPUP_NO_PRICE_SOURCE_SYSTEM] = "Aucune source de prix supporté disponible!",
        [CraftSim.CONST.TEXT.POPUP_NO_PRICE_SOURCE_TITLE] = "Avertissement de source de prix Craftsim",
        [CraftSim.CONST.TEXT.POPUP_NO_PRICE_SOURCE_WARNING] =
        "Aucune source de prix trouvée !\n\nVous devez installer au moins un\nde ces addons de sources de prix\npour utiliser le calcul de profit de CraftSim:\n\n\n",
        [CraftSim.CONST.TEXT.POPUP_NO_PRICE_SOURCE_WARNING_SUPPRESS] = "Ne plus montrer l'avertissement",

        -- Materials Frame
        [CraftSim.CONST.TEXT.MATERIALS_TITLE] = "Optimisation des matériaux CraftSim",
        [CraftSim.CONST.TEXT.MATERIALS_INSPIRATION_BREAKPOINT] = "Atteindre le point d'inspiration",
        [CraftSim.CONST.TEXT.MATERIALS_INSPIRATION_BREAKPOINT_TOOLTIP] =
        "Essaie d'atteindre le prochain palier de compétence qui apporterais un proc au niveau de qualité suivant en utilisant la combinaison de qualité minimale des matériaux possible",
        [CraftSim.CONST.TEXT.MATERIALS_REACHABLE_QUALITY] = "Qualité atteignable: ",
        [CraftSim.CONST.TEXT.MATERIALS_MISSING] = "Matériaux manquants",
        [CraftSim.CONST.TEXT.MATERIALS_AVAILABLE] = "Matériaux disponibles",
        [CraftSim.CONST.TEXT.MATERIALS_CHEAPER] = "Matériaux moins cher",
        [CraftSim.CONST.TEXT.MATERIALS_BEST_COMBINATION] = "Meilleur combinaison assigné",
        [CraftSim.CONST.TEXT.MATERIALS_NO_COMBINATION] = "Aucune combinaison trouvée \npour augmenter la qualité",
        [CraftSim.CONST.TEXT.MATERIALS_ASSIGN] = "Assigner",

        -- Specialization Info Frame
        [CraftSim.CONST.TEXT.SPEC_INFO_TITLE] = "Info de spécialisation CraftSim",
        [CraftSim.CONST.TEXT.SPEC_INFO_SIMULATE_KNOWLEDGE_DISTRIBUTION] = "Simuler la distribution de connaissances",
        [CraftSim.CONST.TEXT.SPEC_INFO_NODE_TOOLTIP] = "Ces noeuds vous apportent ces stats pour cette recette:",
        [CraftSim.CONST.TEXT.SPEC_INFO_WORK_IN_PROGRESS] = "SpecInfo Work in Progress",

        -- Crafting Results Frame
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_TITLE] = "Résultats de fabrication CraftSim",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_LOG] = "Craft Log",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_LOG_1] = "Profit: ",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_LOG_2] = "Inspiré!",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_LOG_3] = "Multicraft: ",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_LOG_4] = "Ressources économisées!: ",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_LOG_5] = "Chance: ",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_CRAFTED_ITEMS] = "Items fabriqués",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_SESSION_PROFIT] = "Profit Session",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_RESET_DATA] = "Reset Données",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_EXPORT_JSON] = "Export JSON",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_RECIPE_STATISTICS] = "Stats recette",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_NOTHING] = "Aucune fabrication!",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_STATISTICS_1] = "Crafts: ",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_STATISTICS_2] = "Profit Ø estimé: ",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_STATISTICS_3] = "Profit Ø réel: ",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_STATISTICS_4] = "Profit réel: ",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_STATISTICS_5] = "Procs - Réel / Attendu: ",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_STATISTICS_6] = "Inspiration: ",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_STATISTICS_7] = "Multicraft: ",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_STATISTICS_8] = "- Ø Extra Items: ",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_STATISTICS_9] = "Procs Ingéniosité: ",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_STATISTICS_10] = "- Ø coûts économisés: ",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_STATISTICS_11] = "Profit: ",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_SAVED_REAGENTS] = "Mat. économisés",
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_DISABLE_CHECKBOX] = f.l("Désactiver l'enregistrement des résultats de craft"),
        [CraftSim.CONST.TEXT.CRAFT_RESULTS_DISABLE_CHECKBOX_TOOLTIP] =
            "Activer cette option désactive l'enregistrement du résultats des fabrication et peu " ..
            f.g("améliorer les performances"),

        -- Stats Weight Frame
        [CraftSim.CONST.TEXT.STAT_WEIGHTS_TITLE] = "Profit Moyen CraftSim",
        [CraftSim.CONST.TEXT.EXPLANATIONS_TITLE] = "Explication du Profit Moyen CraftSim",
        [CraftSim.CONST.TEXT.STAT_WEIGHTS_SHOW_EXPLANATION_BUTTON] = "Afficher explications",
        [CraftSim.CONST.TEXT.STAT_WEIGHTS_HIDE_EXPLANATION_BUTTON] = "Cacher explications",
        [CraftSim.CONST.TEXT.STAT_WEIGHTS_SHOW_STATISTICS_BUTTON] = "Afficher Statistiques",
        [CraftSim.CONST.TEXT.STAT_WEIGHTS_HIDE_STATISTICS_BUTTON] = "Cacher Statistiques",
        [CraftSim.CONST.TEXT.STAT_WEIGHTS_PROFIT_CRAFT] = "Profit Ø / Craft: ",
        [CraftSim.CONST.TEXT.EXPLANATIONS_BASIC_PROFIT_TAB] = "Calcul du profit basique",
        [CraftSim.CONST.TEXT.EXPLANATIONS_HSV_TAB] = "HSV Consideration",

        -- Cost Details Frame
        [CraftSim.CONST.TEXT.COST_OPTIMIZATION_TITLE] = "Optimisation des coûts CraftSim",
        [CraftSim.CONST.TEXT.COST_OPTIMIZATION_EXPLANATION] =
            "Here you can see an overview of all possible prices of the used materials.\nThe " ..
            f.bb("'Used Source'") ..
            " column indicates which one of the prices is used.\n\n" ..
            f.g("AH") ..
            " .. Auction House Price\n" ..
            f.l("OR") ..
            " .. Price Override\n" ..
            f.bb("Any Name") ..
            " .. Expected Costs from crafting it yourself\n" ..
            f.l("OR") ..
            " will always be used if set. " .. f.bb("Crafting Costs") .. " will only be used if lower than " .. f.g("AH"),
        [CraftSim.CONST.TEXT.COST_OPTIMIZATION_CRAFTING_COSTS] = "Coût de craft: ",
        [CraftSim.CONST.TEXT.COST_OPTIMIZATION_ITEM_HEADER] = "Item",
        [CraftSim.CONST.TEXT.COST_OPTIMIZATION_AH_PRICE_HEADER] = "Prix HV",
        [CraftSim.CONST.TEXT.COST_OPTIMIZATION_OVERRIDE_HEADER] = "Remplacer",
        [CraftSim.CONST.TEXT.COST_OPTIMIZATION_CRAFTING_HEADER] = "Fabrication",
        [CraftSim.CONST.TEXT.COST_OPTIMIZATION_USED_SOURCE] = "Source utilisée",

        -- Statistics Frame
        [CraftSim.CONST.TEXT.STATISTICS_TITLE] = "Statistiques CraftSim",
        [CraftSim.CONST.TEXT.STATISTICS_EXPECTED_PROFIT] = "Profit estimé (μ)",
        [CraftSim.CONST.TEXT.STATISTICS_CHANCE_OF] = "Chance de ",
        [CraftSim.CONST.TEXT.STATISTICS_PROFIT] = "Profit",
        [CraftSim.CONST.TEXT.STATISTICS_AFTER] = " après",
        [CraftSim.CONST.TEXT.STATISTICS_CRAFTS] = "Crafts: ",
        [CraftSim.CONST.TEXT.STATISTICS_QUALITY_HEADER] = "Qualité",
        [CraftSim.CONST.TEXT.STATISTICS_CHANCE_HEADER] = "Chance",
        [CraftSim.CONST.TEXT.STATISTICS_CHANCE_MIN_HEADER] = "Chance (Min)",
        [CraftSim.CONST.TEXT.STATISTICS_EXPECTED_CRAFTS_HEADER] = "Ø Crafts estimés",
        [CraftSim.CONST.TEXT.STATISTICS_EXPECTED_CRAFTS_MIN_HEADER] = "Ø Crafts estimés (Min)",
        [CraftSim.CONST.TEXT.STATISTICS_INSPIRATION_HEADER] = "Inspiration",
        [CraftSim.CONST.TEXT.STATISTICS_MULTICRAFT_HEADER] = "Multicraft",
        [CraftSim.CONST.TEXT.STATISTICS_RESOURCEFULNESS_HEADER] = "Ingéniosité",
        [CraftSim.CONST.TEXT.STATISTICS_HSV_NEXT] = "HSV Next",
        [CraftSim.CONST.TEXT.STATISTICS_HSV_SKIP] = "HSV Skip",
        [CraftSim.CONST.TEXT.STATISTICS_EXPECTED_PROFIT_HEADER] = "Profit estimé",
        [CraftSim.CONST.TEXT.PROBABILITY_TABLE_TITLE] = "Table de probabilité de recette",
        [CraftSim.CONST.TEXT.PROBABILITY_TABLE_EXPLANATION] =
            "This table shows all possible proc combinations of the current recipe.\n\n" ..
            f.l("HSV Next") ..
            " .. HSV chance for next quality\n\n" ..
            f.l("HSV Skip") .. " .. HSV chance to skip a quality with inspiration",
        [CraftSim.CONST.TEXT.STATISTICS_EXPECTED_COSTS_HEADER] = "Coût estimé Ø",
        [CraftSim.CONST.TEXT.STATISTICS_EXPECTED_COSTS_MIN_HEADER] = "Ø Coût estimé (Min)",
        [CraftSim.CONST.TEXT.STATISTICS_EXPECTED_COSTS_WITH_RETURN_HEADER] = "Avec une vente Ø de",
        [CraftSim.CONST.TEXT.STATISTICS_EXPECTED_COSTS_MIN_WITH_RETURN_HEADER] = "Avec une vente Ø (Min) de",
        [CraftSim.CONST.TEXT.STATISTICS_EXPLANATION_ICON] =
            "This table gives you the average (Ø) expected crafts and costs per quality.\n\n" ..
            f.g("Chance") ..
            " is the chance of crafting this item considering your " ..
            f.bb("Inspiration") ..
            " and " ..
            f.l("HSV") ..
            "\n\n" ..
            f.g("Expected Crafts") ..
            " tells you how often, on average, you have to craft this recipe to craft this quality\n\n" ..
            f.g("Expected Costs per Item") ..
            " tells you, on average, what the costs for 1 resulting item in this quality are (this can be below the crafting costs since it is per item and considers stats like " ..
            f.bb("Multicraft") ..
            "\n\n" ..
            f.g("With Sell Return") ..
            " subtracts the sell value (considering AH Cut) of the (average number) of crafted items of lower quality until the desired quality is crafted",


        -- Customer Service Frame
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_TITLE] = "Service Client CraftSim",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_RECIPE_WHISPER] = "Recipe Whisper",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_LIVE_PREVIEW] = "Live Preview",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_WHISPER] = "Whisper",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_MESSAGE_FORMAT] = "Message Format",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_RESET_TO_DEFAULT] = "Reset to Defaults",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_ALLOW_CONNECTIONS] = "Allow Connections",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_SEND_INVITE] = "Send Invite",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_AUTO_REPLY_EXPLANATION] =
        "Enable the automatic answering with the highest possible results and material costs when someone whispers you the command and an item link for an item you can craft!",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_AUTO_REPLY_FORMAT_EXPLANATION] =
        "Each line is a seperate chat message in the whisper.\n\nYou can use following labels to insert information about the recipe:\n%gc .. link of the guaranteed result quality\n%ic .. link of the result quality reachable with inspiration\n%insp .. your inspiration chance e.g. 18%\n%mc .. your multicraft chance\n%res .. your resourcefulness chance\n%cc .. the crafting costs\n%ccd .. the detailed costs per reagent used (preferably in its own line)\n%orl .. a simple list of all used optional reagents\n%rl .. a simple list of all required reagents",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_LIVE_PREVIEW_EXPLANATION] =
        "Enable live crafting preview connections to you via CraftSim Preview Links.\nAnyone who has CraftSim and clicks the shared link can live connect to your crafting information to check out your crafting abilities",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_HIGHEST_GUARANTEED_CHECKBOX] = "Highest Guaranteed",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_HIGHEST_GUARANTEED_CHECKBOX_EXPLANATION] =
        "Check for the highest guaranteed quality the crafter can craft this recipe. And optimize for lowest crafting costs.\n\nIf toggled off. The highest reachable quality with inspiration will be optimized for crafting costs.",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_LIVE_PREVIEW_TITLE] = "CraftSim Live Preview",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_CRAFTER_PROFESSION] = "Crafter's Profession",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_LEARNED_RECIPES] = "Learned Recipes",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_LEARNED_RECIPES_INITIAL] = "Select Recipe",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_REQUESTING_UPDATE] = "Requesting Update",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_TIMEOUT] = "Timeout (Player Offline?)",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_REAGENT_OPTIONAL] = "Optionnel",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_REAGENT_FINISHING] = "Finition",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_CRAFTING_COSTS] = "Crafting Costs",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_EXPECTED_RESULTS] = "Expected Result",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_EXPECTED_INSPIRATION] = "Chance for",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_REQUIRED_MATERIALS] = "Required Matériaux",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_REAGENTS_NONE] = "None",
        [CraftSim.CONST.TEXT.CUSTOMER_SERVICE_REAGENTS_LOCKED] = "Locked",

        -- Price Details Frame
        [CraftSim.CONST.TEXT.PRICE_DETAILS_TITLE] = "Details des prix CraftSim",
        [CraftSim.CONST.TEXT.PRICE_DETAILS_INV_AH] = "Sac/HV",
        [CraftSim.CONST.TEXT.PRICE_DETAILS_ITEM] = "Item",
        [CraftSim.CONST.TEXT.PRICE_DETAILS_PRICE_ITEM] = "Prix/Item",
        [CraftSim.CONST.TEXT.PRICE_DETAILS_PROFIT_ITEM] = "Profit/Item",

        -- Price Override Frame
        [CraftSim.CONST.TEXT.PRICE_OVERRIDE_TITLE] = "Remplacement des prix CraftSim",
        [CraftSim.CONST.TEXT.PRICE_OVERRIDE_REQUIRED_REAGENTS] = "Composants Requis",
        [CraftSim.CONST.TEXT.PRICE_OVERRIDE_OPTIONAL_REAGENTS] = "Composants Optionnels",
        [CraftSim.CONST.TEXT.PRICE_OVERRIDE_FINISHING_REAGENTS] = "Composants de finitions",
        [CraftSim.CONST.TEXT.PRICE_OVERRIDE_RESULT_ITEMS] = "Résultat",
        [CraftSim.CONST.TEXT.PRICE_OVERRIDE_ACTIVE_OVERRIDES] = "Remplacement actifs",
        [CraftSim.CONST.TEXT.PRICE_OVERRIDE_ACTIVE_OVERRIDES_TOOLTIP] =
        "'(as result)' -> price override only considered when item is a result of a recipe",
        [CraftSim.CONST.TEXT.PRICE_OVERRIDE_CLEAR_ALL] = "Supprimer tout",
        [CraftSim.CONST.TEXT.PRICE_OVERRIDE_SAVE] = "Enregistrer",
        [CraftSim.CONST.TEXT.PRICE_OVERRIDE_SAVED] = "Enregistré",
        [CraftSim.CONST.TEXT.PRICE_OVERRIDE_REMOVE] = "Supprimer",

        -- Recipe Scan Frame
        [CraftSim.CONST.TEXT.RECIPE_SCAN_TITLE] = "Scan Recettes CraftSim",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_MODE] = "Mode de scan",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_SCAN_RECIPIES] = "Scanner recettes",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_SCAN_CANCEL] = "Annuler",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_SCANNING] = "Scan...",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_INCLUDE_NOT_LEARNED] = "Inclure non apprises",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_INCLUDE_NOT_LEARNED_TOOLTIP] =
        "Inclu les recettes non connues dans le scan",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_INCLUDE_SOULBOUND] = "Inclure liés",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_INCLUDE_SOULBOUND_TOOLTIP] =
        "Include soulbound recipes in the recipe scan.\n\nIt is recommended to set a price override (e.g. to simulate a target comission)\nin the Price Override Module for that recipe's crafted items",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_INCLUDE_GEAR] = "Inclure l'équipement",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_INCLUDE_GEAR_TOOLTIP] = "Inclu toutes les formes d'équipements dans le scan",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_OPTIMIZE_TOOLS] = "Optimiser l'équipement de métier",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_OPTIMIZE_TOOLS_TOOLTIP] =
        "Optimise votre équipement de métier pour chaque recette\n\n",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_OPTIMIZE_TOOLS_WARNING] =
        "Ceci peut affecter les performances\nsi vous avez beaucoup d'équipements dans votre sac",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_CRAFTER_HEADER] = "Fabricant",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_RECIPE_HEADER] = "Recette",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_LEARNED_HEADER] = "Apprise",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_GUARANTEED_HEADER] = "Garantie",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_HIGHEST_RESULT_HEADER] = "Résultat max",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_AVERAGE_PROFIT_HEADER] = "Profit moyen",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_TOP_GEAR_HEADER] = "Meilleur équipement",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_INV_AH_HEADER] = "Sac/HV",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_SORT_BY_MARGIN] = "Tri %Profit",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_SORT_BY_MARGIN_TOOLTIP] =
        "Tri la liste en fonction du profit relatif\nau coût de fabrication(Nouv. Scan requis)",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_USE_INSIGHT_CHECKBOX] = "Utiliser " .. f.bb("Clairvoyance") .. " si possible",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_USE_INSIGHT_CHECKBOX_TOOLTIP] = "Utiliser " ..
            f.bb("Clairvoyance illustre") ..
            " ou\n" .. f.bb("Clairvoyance illustre inférieure") .. " en composants optionnels si possible",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_ONLY_FAVORITES_CHECKBOX] = "Favoris uniquements",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_ONLY_FAVORITES_CHECKBOX_TOOLTIP] = "Scan uniquement les recettes favorites",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_EQUIPPED] = "Equipé",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_MODE_Q1] = "Matériaux Qualité 1",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_MODE_Q2] = "Matériaux Qualité 2",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_MODE_Q3] = "Matériaux Qualité 3",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_MODE_OPTIMIZE] = "Optimiser Matériaux",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_EXPANSION_FILTER_BUTTON] = "Extensions",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_ALTPROFESSIONS_FILTER_BUTTON] = "Alt Professions",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_SCAN_ALL_BUTTON_READY] = "Scan Professions",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_SCAN_ALL_BUTTON_SCANNING] = "Scan...",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_TAB_LABEL_SCAN] = "Scan Recettes",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_TAB_LABEL_OPTIONS] = "Options de Scan",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_IMPORT_ALL_PROFESSIONS_CHECKBOX_LABEL] = "Toutes professions scannées",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_IMPORT_ALL_PROFESSIONS_CHECKBOX_TOOLTIP] = f.g("Coché: ") ..
            "Importe le résultat du scan de toutes les professions séléctionnées\n\n" ..
            f.r("Décoché: ") .. "Importe le résultat du scan de la profession actuellement séléctionnée",
        [CraftSim.CONST.TEXT.RECIPE_SCAN_CACHED_RECIPES_TOOLTIP] =
            "Chaque fois que vous ouvrez ou scannez une recette sur un personnage, " ..
            f.l("CraftSim") ..
            " la retient.\n\nUniquement les recettes alts que " ..
            f.l("CraftSim") .. " connaît peuvent être scannée avec le" .. f.bb("Scan Recettes\n\n") ..
            "Le montant actuel des recettes scannées est basé sur vos " .. f.e("Options de Scan"),

        -- Recipe Top Gear
        [CraftSim.CONST.TEXT.TOP_GEAR_TITLE] = "Meilleur Equipement CraftSim",
        [CraftSim.CONST.TEXT.TOP_GEAR_AUTOMATIC] = "Automatique",
        [CraftSim.CONST.TEXT.TOP_GEAR_AUTOMATIC_TOOLTIP] =
        "Simule automatiquement votre équipement pour le mode choisi a chaque fois que vous selectionnez une recette.\n\nDésactiver cette option améliore les performances.",
        [CraftSim.CONST.TEXT.TOP_GEAR_SIMULATE] = "Simuler meilleur équipement",
        [CraftSim.CONST.TEXT.TOP_GEAR_EQUIP] = "Equiper",
        [CraftSim.CONST.TEXT.TOP_GEAR_SIMULATE_QUALITY] = "Qualité: ",
        [CraftSim.CONST.TEXT.TOP_GEAR_SIMULATE_EQUIPPED] = "Meilleur stuff equipé",
        [CraftSim.CONST.TEXT.TOP_GEAR_SIMULATE_PROFIT_DIFFERENCE] = "Difference de Profit Ø \n",
        [CraftSim.CONST.TEXT.TOP_GEAR_SIMULATE_NEW_MUTLICRAFT] = "Nouv. Multicraft\n",
        [CraftSim.CONST.TEXT.TOP_GEAR_SIMULATE_NEW_CRAFTING_SPEED] = "Nouv. Vitesse Fabrication\n",
        [CraftSim.CONST.TEXT.TOP_GEAR_SIMULATE_NEW_RESOURCEFULNESS] = "Nouv. Ingéniosité\n",
        [CraftSim.CONST.TEXT.TOP_GEAR_SIMULATE_NEW_INSPIRATION] = "Nouv. Inspiration\n",
        [CraftSim.CONST.TEXT.TOP_GEAR_SIMULATE_NEW_SKILL] = "Nouv. Compétence\n",
        [CraftSim.CONST.TEXT.TOP_GEAR_SIMULATE_UNHANDLED] = "Mode Sim. non géré",

        [CraftSim.CONST.TEXT.TOP_GEAR_SIM_MODES_PROFIT] = "Top Profit",
        [CraftSim.CONST.TEXT.TOP_GEAR_SIM_MODES_SKILL] = "Top Compétence",
        [CraftSim.CONST.TEXT.TOP_GEAR_SIM_MODES_INSPIRATION] = "Top Inspiration",
        [CraftSim.CONST.TEXT.TOP_GEAR_SIM_MODES_MULTICRAFT] = "Top Multicraft",
        [CraftSim.CONST.TEXT.TOP_GEAR_SIM_MODES_RESOURCEFULNESS] = "Top Ingéniosité",
        [CraftSim.CONST.TEXT.TOP_GEAR_SIM_MODES_CRAFTING_SPEED] = "Top Vitesse Fabrication",

        -- Options
        [CraftSim.CONST.TEXT.OPTIONS_TITLE] = "Options CraftSim",
        [CraftSim.CONST.TEXT.OPTIONS_GENERAL_TAB] = "General",
        [CraftSim.CONST.TEXT.OPTIONS_GENERAL_PRICE_SOURCE] = "Source de Prix",
        [CraftSim.CONST.TEXT.OPTIONS_GENERAL_CURRENT_PRICE_SOURCE] = "Source de prix actuelle: ",
        [CraftSim.CONST.TEXT.OPTIONS_GENERAL_NO_PRICE_SOURCE] = "Pas d'addon de source de prix chargé!",
        [CraftSim.CONST.TEXT.OPTIONS_GENERAL_SHOW_PROFIT] = "Afficher le % Profit",
        [CraftSim.CONST.TEXT.OPTIONS_GENERAL_SHOW_PROFIT_TOOLTIP] =
        "Afficher le pourcentage de profit par rapport aux coûts d'artisanat en plus de la valeur de l'or",
        [CraftSim.CONST.TEXT.OPTIONS_GENERAL_REMEMBER_LAST_RECIPE] = "Retenir dernière recette",
        [CraftSim.CONST.TEXT.OPTIONS_GENERAL_REMEMBER_LAST_RECIPE_TOOLTIP] =
        "Réouverture de la dernière recette sélectionnée lors de l'ouverture de la fenêtre d'artisanat",
        [CraftSim.CONST.TEXT.OPTIONS_GENERAL_DETAILED_TOOLTIP] = "Informations détaillées sur le dernier craft",
        [CraftSim.CONST.TEXT.OPTIONS_GENERAL_DETAILED_TOOLTIP_TOOLTIP] =
        "Afficher la décomposition complète de la dernière combinaison de matériaux utilisée dans l'infobulle",
        [CraftSim.CONST.TEXT.OPTIONS_GENERAL_SUPPORTED_PRICE_SOURCES] = "Source de prix supportées:",
        [CraftSim.CONST.TEXT.OPTIONS_PERFORMANCE_RAM] = "Activer le nettoyage de la RAM pendant la fabrication",
        [CraftSim.CONST.TEXT.OPTIONS_PERFORMANCE_RAM_TOOLTIP] =
        "Lorsque cette option est activée, CraftSim nettoie votre RAM après un certain nombres de crafts spécifiés afin d'empêcher l'accumulation de mémoire.\nL'accumulation de mémoire peut également se produire à cause d'autres addons et n'est pas spécifique à CraftSim.",
        [CraftSim.CONST.TEXT.OPTIONS_MODULES_TAB] = "Modules",
        [CraftSim.CONST.TEXT.OPTIONS_PROFIT_CALCULATION_TAB] = "Calcul du profit",
        [CraftSim.CONST.TEXT.OPTIONS_CRAFTING_TAB] = "Artisanat",
        [CraftSim.CONST.TEXT.OPTIONS_TSM_RESET] = "Paramètres par défaut",
        [CraftSim.CONST.TEXT.OPTIONS_TSM_INVALID_EXPRESSION] = "Expression Invalide",
        [CraftSim.CONST.TEXT.OPTIONS_TSM_VALID_EXPRESSION] = "Expression Valide",
        [CraftSim.CONST.TEXT.OPTIONS_MODULES_TRANSPARENCY] = "Transparence",
        [CraftSim.CONST.TEXT.OPTIONS_MODULES_MATERIALS] = "Module Optimisation Matériaux",
        [CraftSim.CONST.TEXT.OPTIONS_MODULES_AVERAGE_PROFIT] = "Module Profit Moyen",
        [CraftSim.CONST.TEXT.OPTIONS_MODULES_TOP_GEAR] = "Module Top Equipement",
        [CraftSim.CONST.TEXT.OPTIONS_MODULES_COST_OVERVIEW] = "Module Vue Coût détaillé",
        [CraftSim.CONST.TEXT.OPTIONS_MODULES_SPECIALIZATION_INFO] = "Module Info. Spécialisation",
        [CraftSim.CONST.TEXT.OPTIONS_MODULES_CUSTOMER_HISTORY_SIZE] = "Max message en historique par client",
        [CraftSim.CONST.TEXT.OPTIONS_PROFIT_CALCULATION_OFFSET] = "Décalage de 1 point de compétence",
        [CraftSim.CONST.TEXT.OPTIONS_PROFIT_CALCULATION_OFFSET_TOOLTIP] =
        "La proposition de combinaison de matériaux tentera d'atteindre +1 au lieu de correspondre à la compétence exacte requise.",
        [CraftSim.CONST.TEXT.OPTIONS_PROFIT_CALCULATION_MULTICRAFT_CONSTANT] = "Constante Multicraft",
        [CraftSim.CONST.TEXT.OPTIONS_PROFIT_CALCULATION_MULTICRAFT_CONSTANT_EXPLANATION] =
        "Default: 2.5\n\nCrafting Data from different data collecting players in beta and early Dragonflight suggest that\nthe maximum extra items one can receive from a multicraft proc is 1+C*y.\nWhere y is the base item amount for one craft and C is 2.5.\nHowever if you wish you can modify this value here.",
        [CraftSim.CONST.TEXT.OPTIONS_PROFIT_CALCULATION_RESOURCEFULNESS_CONSTANT] = "Constante Ingéniosité",
        [CraftSim.CONST.TEXT.OPTIONS_PROFIT_CALCULATION_RESOURCEFULNESS_CONSTANT_EXPLANATION] =
        "Default: 0.3\n\nCrafting Data from different data collecting players in beta and early Dragonflight suggest that\nthe average amount of items saved is 30% of the required quantity.\nHowever if you wish you can modify this value here.",
        [CraftSim.CONST.TEXT.OPTIONS_GENERAL_SHOW_NEWS_CHECKBOX] = "Afficher la popup des " .. f.bb("News"),
        [CraftSim.CONST.TEXT.OPTIONS_GENERAL_SHOW_NEWS_CHECKBOX_TOOLTIP] = "Show the " ..
            f.bb("News") .. " Popup for new " .. f.l("CraftSim") .. " Update Information when logging into the game",
        [CraftSim.CONST.TEXT.OPTIONS_GENERAL_HIDE_MINIMAP_BUTTON_CHECKBOX] = "Cacher bouton minimap",
        [CraftSim.CONST.TEXT.OPTIONS_GENERAL_HIDE_MINIMAP_BUTTON_TOOLTIP] = "Enable to hide the " ..
            f.l("CraftSim") .. " Minimap Button",

        -- Control Panel
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_CRAFT_QUEUE_LABEL] = "File d'attente",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_CRAFT_QUEUE_TOOLTIP] =
        "Queue your recipes and craft them all on one place!",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_TOP_GEAR_LABEL] = "Meilleur Equipement",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_TOP_GEAR_TOOLTIP] =
        "Shows the best available profession gear combination based on the selected mode",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_PRICE_DETAILS_LABEL] = "Details Prix",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_PRICE_DETAILS_TOOLTIP] =
        "Shows a sell price and profit overview by resulting item quality",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_AVERAGE_PROFIT_LABEL] = "Profit Moyen",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_AVERAGE_PROFIT_TOOLTIP] =
        "Shows the average profit based on your profession stats and the profit stat weights as gold per point.",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_MATERIAL_OPTIMIZATION_LABEL] = "Optimisation Matériaux",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_MATERIAL_OPTIMIZATION_TOOLTIP] =
        "Suggests the cheapest materials to reach the highest quality/inspiration threshold.",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_PRICE_OVERRIDES_LABEL] = "Remplacement Prix",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_PRICE_OVERRIDES_TOOLTIP] =
        "Override prices of any materials, optional materials and craft results for all recipes or for one recipe specifically.",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_SPECIALIZATION_INFO_LABEL] = "Info Specialisation",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_SPECIALIZATION_INFO_TOOLTIP] =
        "Shows how your profession specializations affect this recipe and makes it possible to simulate any configuration!",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_CRAFT_RESULTS_LABEL] = "Résultats Fabrication",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_CRAFT_RESULTS_TOOLTIP] =
        "Show a crafting log and statistics about your crafts!",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_COST_OPTIMIZATION_LABEL] = "Optimisation Coûts",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_COST_OPTIMIZATION_TOOLTIP] =
        "Module that shows detailed information about and helps with optimizing crafting costs",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_STATISTICS_LABEL] = "Stats",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_STATISTICS_TOOLTIP] =
        "Module that shows detailed outcome statistics for the currently open recipe",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_RECIPE_SCAN_LABEL] = "Scan Recette",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_RECIPE_SCAN_TOOLTIP] =
        "Module that scans your recipe list based on various options",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_CUSTOMER_SERVICE_LABEL] = "Service Client",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_CUSTOMER_SERVICE_TOOLTIP] =
        "Module that offers various options to interact with potential customers",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_CUSTOMER_HISTORY_LABEL] = "Historique Client",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_CUSTOMER_HISTORY_TOOLTIP] =
        "Module that provides a history of conversations with customers, crafted items and commissions",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_CRAFT_BUFFS_LABEL] = "Buffs Crafts",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_CRAFT_BUFFS_TOOLTIP] =
        "Module that shows you your active and missing Craft Buffs",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_EXPLANATIONS_LABEL] = "Explications",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_EXPLANATIONS_TOOLTIP] =
            "Module that shows you various explanations of how" .. f.l(" CraftSim") .. " calculates things",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_RESET_FRAMES] = "Réinit. Position fenêtres",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_OPTIONS] = "Options",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_NEWS] = "News",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_FORGEFINDER_EXPORT] = f.l("ForgeFinder") .. " Export",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_FORGEFINDER_EXPORTING] = "Exporting",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_FORGEFINDER_EXPLANATION] = f.l("www.wowforgefinder.com") ..
            "\nis a website to search and offer " .. f.bb("WoW Crafting Orders"),
        [CraftSim.CONST.TEXT.CONTROL_PANEL_DEBUG] = "Debug",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_TITLE] = "Control Panel",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_SUPPORTERS_BUTTON] = f.patreon("Supporters"),

        -- Supporters
        [CraftSim.CONST.TEXT.SUPPORTERS_DESCRIPTION] = f.l("Thank you to all those awesome people!"),
        [CraftSim.CONST.TEXT.SUPPORTERS_DESCRIPTION_2] = f.l(
            "Do you want to support CraftSim and also be listed here with your message?\nConsider donating <3"),
        [CraftSim.CONST.TEXT.SUPPORTERS_DATE] = "Date",
        [CraftSim.CONST.TEXT.SUPPORTERS_SUPPORTER] = "Supporter",
        [CraftSim.CONST.TEXT.SUPPORTERS_TYPE] = "Type",
        [CraftSim.CONST.TEXT.SUPPORTERS_MESSAGE] = "Messaggio",

        -- Customer History
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_TITLE] = "CraftSim Customer History",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_DROPDOWN_LABEL] = "Choose a customer",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_TOTAL_TIP] = "Total tip: ",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_FROM] = "From",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_TO] = "To",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_FOR] = "For",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_CRAFT_FORMAT] = "Crafted %s for %s",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_DELETE_BUTTON] = "Remove customer",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_WHISPER_BUTTON_LABEL] = "Whisper..",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_PURGE_NO_TIP_LABEL] = "Remove 0 Tip Customers",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_PURGE_ZERO_TIPS_CONFIRMATION_POPUP] =
        "Are you sure you want to delete all data\nfrom customers with 0 total tip?",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_DELETE_CUSTOMER_CONFIRMATION_POPUP] =
        "Are you sure you want to delete\nall data for %s?",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_DELETE_CUSTOMER_POPUP_TITLE] = "Delete Customer History",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_PURGE_ZERO_TIPS_CONFIRMATION_POPUP_TITLE] = "Delete 0 Tip Customer History",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_PURGE_DAYS_INPUT_LABEL] = "Auto Remove Interval (Days)",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_PURGE_DAYS_INPUT_TOOLTIP] =
        "CraftSim will automatically delete all 0 tip customers when you login after X days of the last deletion.\nIf set to 0, CraftSim will never delete automatically.",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_CUSTOMER_HEADER] = "Customer",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_TOTAL_TIP_HEADER] = "Total Tip",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_CRAFT_HISTORY_DATE_HEADER] = "Date",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_CRAFT_HISTORY_RESULT_HEADER] = "Result",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_CRAFT_HISTORY_TIP_HEADER] = "Tip",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_CRAFT_HISTORY_CUSTOMER_REAGENTS_HEADER] = "Customer Reagents",
        [CraftSim.CONST.TEXT.CUSTOMER_HISTORY_CRAFT_HISTORY_CUSTOMER_NOTE_HEADER] = "Note",


        -- Craft Queue
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_TITLE] = "CraftSim Craft Queue",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_CRAFT_AMOUNT_LEFT_HEADER] = "Queued",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_CRAFT_PROFESSION_GEAR_HEADER] = "Profession Gear",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_CRAFTING_COSTS_HEADER] = "Crafting Costs",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_CRAFT_BUTTON_ROW_LABEL] = "Craft",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_CRAFT_BUTTON_ROW_LABEL_WRONG_GEAR] = "Wrong Tools",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_CRAFT_BUTTON_ROW_LABEL_NO_MATS] = "No Matériaux",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_ADD_OPEN_RECIPE_BUTTON_LABEL] = "Add Open Recipe",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_CLEAR_ALL_BUTTON_LABEL] = "Clear All",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_IMPORT_RECIPE_SCAN_BUTTON_LABEL] = "Restock from Recipe Scan",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_CRAFT_BUTTON_ROW_LABEL_WRONG_PROFESSION] = "Wrong Profession",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_CRAFT_BUTTON_ROW_LABEL_ON_COOLDOWN] = "On Cooldown",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_CRAFT_BUTTON_ROW_LABEL_WRONG_CRAFTER] = "Wrong Crafter",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_RECIPE_REQUIREMENTS_HEADER] = "Requirements",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_CRAFT_NEXT_BUTTON_LABEL] = "Craft Next",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_CRAFT_AVAILABLE_AMOUNT] = "Craftable",
        [CraftSim.CONST.TEXT.CRAFTQUEUE_AUCTIONATOR_SHOPPING_LIST_BUTTON_LABEL] = "Create Auctionator Shopping List",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_QUEUE_TAB_LABEL] = "Craft Queue",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_FLASH_TASKBAR_OPTION_LABEL] = "Flash Taskbar on " ..
            f.bb("CraftQueue") .. " craft finished",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_FLASH_TASKBAR_OPTION_TOOLTIP] =
            "When your WoW Game is minimized and a recipe has finished crafting in the " .. f.bb("CraftQueue") ..
            "," .. f.l(" CraftSim") .. " will flash your Taskbar WoW Icon",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_RESTOCK_OPTIONS_TAB_LABEL] = "Restock Options",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_RESTOCK_OPTIONS_GENERAL_PROFIT_THRESHOLD_LABEL] = "Profit Threshold:",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_RESTOCK_OPTIONS_SALE_RATE_INPUT_LABEL] = "Sale Rate Threshold:",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_RESTOCK_OPTIONS_TSM_SALE_RATE_TOOLTIP] = string.format(
            [[
Only available when %s is loaded!

It will be checked wether %s of an item's chosen qualities has a sale rate
greater or equal the configured sale rate threshold.
]], f.bb("TSM"), f.bb("any")),
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_RESTOCK_OPTIONS_TSM_SALE_RATE_TOOLTIP_GENERAL] = string.format(
            [[
Only available when %s is loaded!

It will be checked wether %s of an item's qualities has a sale rate
greater or equal the configured sale rate threshold.
]], f.bb("TSM"), f.bb("any")),
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_RESTOCK_OPTIONS_AMOUNT_LABEL] = "Restock Amount:",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_RESTOCK_OPTIONS_RESTOCK_TOOLTIP] = "This is the " ..
            f.bb("amount of crafts") ..
            " that will be queued for that recipe.\n\nThe amount of items you have in your inventory and bank of the checked qualities will be subtracted from the restock amount upon restocking",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_RESTOCK_OPTIONS_ENABLE_RECIPE_LABEL] = "Enable:",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_RESTOCK_OPTIONS_GENERAL_OPTIONS_LABEL] = "General Options (All Recipes)",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_RESTOCK_OPTIONS_ENABLE_RECIPE_TOOLTIP] =
        "If this is toggled off, the recipe will be restocked based on the general options above",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_TOTAL_PROFIT_LABEL] = "Total Ø Profit:",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_TOTAL_CRAFTING_COSTS_LABEL] = "Total Crafting Costs:",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_EDIT_RECIPE_TITLE] = "Edit Recipe",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_EDIT_RECIPE_NAME_LABEL] = "Recipe Name",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_EDIT_RECIPE_REAGENTS_SELECT_LABEL] = "Select",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_EDIT_RECIPE_OPTIONAL_REAGENTS_LABEL] = "Optional Reagents",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_EDIT_RECIPE_FINISHING_REAGENTS_LABEL] = "Finishing Reagents",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_EDIT_RECIPE_PROFESSION_GEAR_LABEL] = "Profession Gear",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_EDIT_RECIPE_OPTIMIZE_PROFIT_BUTTON] = "Optimize Profit",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_EDIT_RECIPE_CRAFTING_COSTS_LABEL] = "Crafting Costs: ",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_EDIT_RECIPE_AVERAGE_PROFIT_LABEL] = "Average Profit: ",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_EDIT_RECIPE_RESULTS_LABEL] = "Results",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_AUCTIONATOR_SHOPPING_LIST_PER_CHARACTER_CHECKBOX] = "Per Character",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_AUCTIONATOR_SHOPPING_LIST_PER_CHARACTER_CHECKBOX_TOOLTIP] = "Create an " ..
            f.bb("Auctionator Shopping List") .. " for each crafter character\ninstead of one shopping list for all",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_AUCTIONATOR_SHOPPING_LIST_TARGET_MODE_CHECKBOX] = "Target Mode Only",
        [CraftSim.CONST.TEXT.CRAFT_QUEUE_AUCTIONATOR_SHOPPING_LIST_TARGET_MODE_CHECKBOX_TOOLTIP] = "Create an " ..
            f.bb("Auctionator Shopping List") .. " for target mode recipes only",

        -- craft buffs

        [CraftSim.CONST.TEXT.CRAFT_BUFFS_TITLE] = "CraftSim Craft Buffs",
        [CraftSim.CONST.TEXT.CRAFT_BUFFS_SIMULATE_BUTTON] = "Simulate Buffs",
        [CraftSim.CONST.TEXT.CRAFT_BUFF_CHEFS_HAT_TOOLTIP] = f.bb("Wrath of the Lich King Toy.") ..
            "\nRequires Northrend Cooking\nSets Crafting Speed to " .. f.g("0.5 seconds"),

        -- cooldowns module

        [CraftSim.CONST.TEXT.COOLDOWNS_TITLE] = "CraftSim Cooldowns",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_COOLDOWNS_LABEL] = "Cooldowns",
        [CraftSim.CONST.TEXT.CONTROL_PANEL_MODULES_COOLDOWNS_TOOLTIP] = "Overview for your account's " ..
            f.bb("Profession Cooldowns"),
        [CraftSim.CONST.TEXT.COOLDOWNS_CRAFTER_HEADER] = "Crafter",
        [CraftSim.CONST.TEXT.COOLDOWNS_RECIPE_HEADER] = "Recipe",
        [CraftSim.CONST.TEXT.COOLDOWNS_CHARGES_HEADER] = "Charges",
        [CraftSim.CONST.TEXT.COOLDOWNS_NEXT_HEADER] = "Next Charge",
        [CraftSim.CONST.TEXT.COOLDOWNS_ALL_HEADER] = "Charges Full",

        -- static popups
        [CraftSim.CONST.TEXT.STATIC_POPUPS_YES] = "Yes",
        [CraftSim.CONST.TEXT.STATIC_POPUPS_NO] = "No",
	}
end
