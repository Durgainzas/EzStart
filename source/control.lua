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
            {"transport-belt", 400},
            {"inserter", 100},
            {"underground-belt", 77},
            {"long-handed-inserter", 50},
            {"small-electric-pole", 49},
            {"small-lamp", 10},
            {"splitter", 8},
            {"fast-inserter", 4},
            {"iron-chest", 2},
            {"stone-furnace", 50}
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
            {"transport-belt", 400},
            {"inserter", 100},
            {"underground-belt", 77},
            {"long-handed-inserter", 50},
            {"small-electric-pole", 49},
            {"small-lamp", 10},
            {"splitter", 8},
            {"fast-inserter", 4},
            {"iron-chest", 2},
            {"stone-furnace", 50}
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


script.on_init(wrapper)
script.on_load(wrapper)