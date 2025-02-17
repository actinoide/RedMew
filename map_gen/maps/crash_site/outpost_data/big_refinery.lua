local ob = require 'map_gen.maps.crash_site.outpost_builder'

local level2 =
    ob.make_1_way {
    force = 'neutral',
    [1] = {tile = 'refined-concrete'},
    [2] = {tile = 'refined-concrete'},
    [3] = {tile = 'refined-concrete'},
    [4] = {tile = 'refined-concrete'},
    [5] = {tile = 'refined-concrete'},
    [6] = {tile = 'refined-concrete'},
    [7] = {tile = 'refined-concrete'},
    [8] = {entity = {name = 'steel-chest', callback = 'loot'}, tile = 'refined-concrete'},
    [9] = {entity = {name = 'steel-chest', callback = 'loot'}, tile = 'refined-concrete'},
    [10] = {entity = {name = 'steel-chest', callback = 'loot'}, tile = 'refined-concrete'},
    [11] = {entity = {name = 'steel-chest', callback = 'loot'}, tile = 'refined-concrete'},
    [12] = {tile = 'refined-concrete'},
    [13] = {tile = 'refined-concrete'},
    [14] = {entity = {name = 'steel-chest', callback = 'loot'}, tile = 'refined-concrete'},
    [15] = {entity = {name = 'steel-chest', callback = 'loot'}, tile = 'refined-concrete'},
    [16] = {entity = {name = 'steel-chest', callback = 'loot'}, tile = 'refined-concrete'},
    [17] = {entity = {name = 'steel-chest', callback = 'loot'}, tile = 'refined-concrete'},
    [18] = {tile = 'refined-concrete'},
    [19] = {tile = 'refined-concrete'},
    [20] = {entity = {name = 'steel-chest', callback = 'loot'}, tile = 'refined-concrete'},
    [21] = {entity = {name = 'steel-chest', callback = 'loot'}, tile = 'refined-concrete'},
    [22] = {entity = {name = 'steel-chest', callback = 'loot'}, tile = 'refined-concrete'},
    [23] = {entity = {name = 'steel-chest', callback = 'loot'}, tile = 'refined-concrete'},
    [24] = {tile = 'refined-concrete'},
    [25] = {tile = 'refined-concrete'},
    [26] = {entity = {name = 'steel-chest', callback = 'loot'}, tile = 'refined-concrete'},
    [27] = {entity = {name = 'steel-chest', callback = 'loot'}, tile = 'refined-concrete'},
    [28] = {entity = {name = 'steel-chest', callback = 'loot'}, tile = 'refined-concrete'},
    [29] = {entity = {name = 'steel-chest', callback = 'loot'}, tile = 'refined-concrete'},
    [30] = {tile = 'refined-concrete'},
    [31] = {tile = 'refined-concrete'},
    [32] = {tile = 'refined-concrete'},
    [33] = {tile = 'refined-concrete'},
    [34] = {tile = 'refined-concrete'},
    [35] = {tile = 'refined-concrete'},
    [36] = {tile = 'refined-concrete'}
}

local level3 =
    ob.make_1_way {
    force = 'neutral',
    max_count = 8,
    [1] = {tile = 'refined-concrete'},
    [2] = {tile = 'refined-concrete'},
    [3] = {tile = 'refined-concrete'},
    [4] = {tile = 'refined-concrete'},
    [5] = {tile = 'refined-concrete'},
    [6] = {tile = 'refined-concrete'},
    [7] = {tile = 'refined-concrete'},
    [8] = {tile = 'refined-concrete'},
    [9] = {tile = 'refined-concrete'},
    [10] = {tile = 'refined-concrete'},
    [11] = {tile = 'refined-concrete'},
    [12] = {tile = 'refined-concrete'},
    [13] = {tile = 'refined-concrete'},
    [14] = {tile = 'refined-concrete'},
    [15] = {entity = {name = 'oil-refinery', direction = 8, callback = 'factory'}, tile = 'refined-concrete'},
    [16] = {tile = 'refined-concrete'},
    [17] = {tile = 'refined-concrete'},
    [18] = {tile = 'refined-concrete'},
    [19] = {tile = 'refined-concrete'},
    [20] = {tile = 'refined-concrete'},
    [21] = {tile = 'refined-concrete'},
    [22] = {tile = 'refined-concrete'},
    [23] = {tile = 'refined-concrete'},
    [24] = {tile = 'refined-concrete'},
    [25] = {tile = 'refined-concrete'},
    [26] = {tile = 'refined-concrete'},
    [27] = {tile = 'refined-concrete'},
    [28] = {tile = 'refined-concrete'},
    [29] = {tile = 'refined-concrete'},
    [30] = {tile = 'refined-concrete'},
    [31] = {tile = 'refined-concrete'},
    [32] = {tile = 'refined-concrete'},
    [33] = {tile = 'refined-concrete'},
    [34] = {tile = 'refined-concrete'},
    [35] = {tile = 'refined-concrete'},
    [36] = {tile = 'refined-concrete'}
}

local level4 =
    ob.make_1_way {
    force = 'neutral',
    max_count = 1,
    [1] = {tile = 'refined-concrete'},
    [2] = {tile = 'refined-concrete'},
    [3] = {tile = 'refined-concrete'},
    [4] = {tile = 'refined-concrete'},
    [5] = {tile = 'refined-concrete'},
    [6] = {tile = 'refined-concrete'},
    [7] = {tile = 'refined-concrete'},
    [8] = {tile = 'refined-concrete'},
    [9] = {tile = 'refined-concrete'},
    [10] = {tile = 'refined-concrete'},
    [11] = {tile = 'refined-concrete'},
    [12] = {tile = 'refined-concrete'},
    [13] = {tile = 'refined-concrete'},
    [14] = {tile = 'refined-concrete'},
    [15] = {entity = {name = 'market', callback = 'market'}},
    [16] = {tile = 'refined-concrete'},
    [17] = {tile = 'refined-concrete'},
    [18] = {tile = 'refined-concrete'},
    [19] = {tile = 'refined-concrete'},
    [20] = {tile = 'refined-concrete'},
    [21] = {tile = 'refined-concrete'},
    [22] = {tile = 'refined-concrete'},
    [23] = {tile = 'refined-concrete'},
    [24] = {tile = 'refined-concrete'},
    [25] = {tile = 'refined-concrete'},
    [26] = {tile = 'refined-concrete'},
    [27] = {tile = 'refined-concrete'},
    [28] = {tile = 'refined-concrete'},
    [29] = {tile = 'refined-concrete'},
    [30] = {tile = 'refined-concrete'},
    [31] = {tile = 'refined-concrete'},
    [32] = {tile = 'refined-concrete'},
    [33] = {tile = 'refined-concrete'},
    [34] = {tile = 'refined-concrete'},
    [35] = {tile = 'refined-concrete'},
    [36] = {tile = 'refined-concrete'}
}

return {
    level2,
    level3,
    level4
}
