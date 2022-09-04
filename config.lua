Config = Config or {}

Config.ItemTiers = 1

--33% on each to get money/an item or nothing
Config.RewardTypes = {
    [1] = {
        type = "item"
    },
    [2] = {
        type = "money",
    },
    [3] = {
        type = "nothing",
    }
}

--rewards for small trashcans
Config.RewardsSmall = {
        [1] = {item = "beer", minAmount = 1, maxAmount = 3},
        [2] = {item = "lockpick", minAmount = 1, maxAmount = 2},
        [3] = {item = "recycable_material", minAmount = 1, maxAmount = 1},
        [4] = {item = "rolex", minAmount = 1, maxAmount = 4},
        [5] = {item = "strawberry", minAmount = 1, maxAmount = 7},
        [6] = {item = "beef", minAmount = 1, maxAmount = 1},
        [7] = {item = "iphone", minAmount = 1, maxAmount = 2},
}