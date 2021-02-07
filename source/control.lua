function wrapper()
    add_test_command_items()
    add_test_command_resources_iron()
    add_test_command_resources_copper()
    add_test_command_resources_plastic()
    add_test_command_resources_steel()
    add_test_command_resources_coal()
    add_test_command_smelt()
    add_test_command_smelt_iron()
    add_test_command_car()
    add_test_command_mining()
    add_test_command_2in1out()
    add_test_command_3in1out()
    add_test_command_logistics()
    add_test_command_generator()
    add_test_command_defense()
end

function add_test_command_items () 
    commands.add_command("testitem", "test-cmd", function(event)
        local player = game.players[event.player_index]
        local items
        local armor

        items = {
            {"power-armor-mk2", 1},
            {"construction-robot", 50},
            {"submachine-gun", 1},
            {"piercing-rounds-magazine", 200}
        }
        armor = {
            {"personal-roboport-mk2-equipment"},
            {"personal-roboport-mk2-equipment"},
            {"battery-mk2-equipment"},
            {"battery-mk2-equipment"},
            {"fusion-reactor-equipment"},
            {"fusion-reactor-equipment"},
            {"fusion-reactor-equipment"},
            {"fusion-reactor-equipment"},
            {"exoskeleton-equipment"},
            {"energy-shield-mk2-equipment"},
            {"energy-shield-mk2-equipment"},
            {"personal-laser-defense-equipment"},
            {"night-vision-equipment"}
        }

        for i, v in pairs(items) do
            player.insert{name = v[1], count = v[2]}
        end

        -- local grid = player.get_inventory(defines.inventory.player_armor)[1].grid
        for  i, v in pairs(armor) do
            player.insert{name = v[1], count = v[2]}
            -- grid.put({name = v[1]})
        end
    end)
end

function add_test_command_resources_iron () 
    commands.add_command("iron", "test-resources", function(event)
        local player = game.players[event.player_index]
        local items

        items = {
            {"iron-plate", 400}
        }
        for i, v in pairs(items) do
            player.insert{name = v[1], count = v[2]}
        end
    end)
end

function add_test_command_resources_copper () 
    commands.add_command("copper", "test-resources", function(event)
        local player = game.players[event.player_index]
        local items

        items = {
            {"copper-plate", 300}
        }
        for i, v in pairs(items) do
            player.insert{name = v[1], count = v[2]}
        end
    end)
end

function add_test_command_resources_plastic () 
    commands.add_command("plastic", "test-resources", function(event)
        local player = game.players[event.player_index]
        local items

        items = {
            {"plastic-bar", 100}
        }
        for i, v in pairs(items) do
            player.insert{name = v[1], count = v[2]}
        end
    end)
end

function add_test_command_resources_steel () 
    commands.add_command("steel", "test-resources", function(event)
        local player = game.players[event.player_index]
        local items

        items = {
            {"steel-plate", 200}
        }
        for i, v in pairs(items) do
            player.insert{name = v[1], count = v[2]}
        end
    end)
end

function add_test_command_resources_coal () 
    commands.add_command("coal", "test-resources", function(event)
        local player = game.players[event.player_index]
        local items

        items = {
            {"coal", 50}
        }
        for i, v in pairs(items) do
            player.insert{name = v[1], count = v[2]}
        end
    end)
end

function add_test_command_smelt_iron () 
    commands.add_command("testsmeltiron", "test-iron-smelting", function(event)
        local player = game.players[event.player_index]
        local items

        items = {
            {"transport-belt", 403},
            {"stone-wall", 174},
            {"inserter", 100},
            {"underground-belt", 78},
            {"long-handed-inserter", 50},
            {"small-electric-pole", 50},
            {"stone-furnace", 50},
            {"gun-turret", 12},
            {"small-lamp", 10},
            {"splitter", 9},
            {"fast-inserter", 4},
            {"iron-chest", 2},
            {"firearm-magazine", 2400}
        }
        for i, v in pairs(items) do
            player.insert{name = v[1], count = v[2]}
        end
    end)
end

function add_test_command_smelt () 
    commands.add_command("testsmelt", "test-smelting", function(event)
        local player = game.players[event.player_index]
        local items

        items = {
            {"transport-belt", 329},
            {"stone-wall", 156},
            {"inserter", 80},
            {"underground-belt", 66},
            {"long-handed-inserter", 40},
            {"small-electric-pole", 40},
            {"stone-furnace", 40},
            {"gun-turret", 10},
            {"small-lamp", 7},
            {"splitter", 5},
            {"fast-inserter", 2},
            {"iron-chest", 1},
            {"firearm-magazine", 2000}
        }
        for i, v in pairs(items) do
            player.insert{name = v[1], count = v[2]}
        end
    end)
end

function add_test_command_2in1out () 
    commands.add_command("2in1out", "2in-1out", function(event)
        local player = game.players[event.player_index]
        local items

        items = {
            {"transport-belt", 116},
            {"stone-wall", 110},
            {"underground-belt", 38},
            {"fast-inserter", 32},
            {"small-electric-pole", 24},
            {"assembling-machine-1", 10},
            {"gun-turret", 8},
            {"splitter", 4},
            {"iron-chest", 2},
            {"firearm-magazine", 1600}
        }
        for i, v in pairs(items) do
            player.insert{name = v[1], count = v[2]}
        end
    end)
end

function add_test_command_3in1out () 
    commands.add_command("3in1out", "3in-1out", function(event)
        local player = game.players[event.player_index]
        local items

        items = {
            {"transport-belt", 113},
            {"stone-wall", 110},
            {"underground-belt", 58},
            {"fast-inserter", 42},
            {"small-electric-pole", 22},
            {"assembling-machine-1", 10},
            {"gun-turret", 8},
            {"splitter", 4},
            {"iron-chest", 2},
            {"firearm-magazine", 1600}
        }
        for i, v in pairs(items) do
            player.insert{name = v[1], count = v[2]}
        end
    end)
end

function add_test_command_car () 
    commands.add_command("testcar", "test-car", function(event)
        local player = game.players[event.player_index]
        local items

        items = {
            {"car", 1},
            {"solid-fuel", 50},
            {"piercing-rounds-magazine", 200}
        }
        for i, v in pairs(items) do
            player.insert{name = v[1], count = v[2]}
        end
    end)
end

function add_test_command_defense()
    commands.add_command("testdefense", "test-defense", function(event)
        local player = game.players[event.player_index]
        local items
        items = {
            {"stone-wall", 68},
            {"gun-turret", 5},
            {"piercing-rounds-magazine", 1000}
        }
        for i, v in pairs(items) do
            player.insert{name = v[1], count = v[2]}
        end
    end)
end

function add_test_command_mining()
    commands.add_command("testmining", "test-mining", function(event)
        local player = game.players[event.player_index]
        local items
        items = {
            {"transport-belt", 8},
            {"electric-mining-drill", 4},
            {"small-electric-pole", 1},
        }
        for i, v in pairs(items) do
            player.insert{name = v[1], count = v[2]}
        end
    end)
end

function add_test_command_generator()
    commands.add_command("testgenerator", "test-generator", function(event)
        local player = game.players[event.player_index]
        local items
        items = {
            {"transport-belt", 19},
            {"steam-engine", 5},
            {"small-electric-pole", 8},
            {"inserter", 5},
            {"boiler", 5},
            {"pipe", 4}
        }
        for i, v in pairs(items) do
            player.insert{name = v[1], count = v[2]}
        end
    end)
end

function add_test_command_logistics()
    commands.add_command("testlogistics", "test-logistics", function (event)
        local player = game.players[event.player_index]
        local items
        items = {
            {"transport-belt", 200},
            {"underground-belt", 50},
            {"splitter", 20}
        }
        for i, v in pairs(items) do
            player.insert{name = v[1], count = v[2]}
        end
    end)
end

script.on_init(wrapper)
script.on_load(wrapper)