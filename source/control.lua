function add_test_command () 
    commands.add_command("testitem", "test-cmd", function(event)
        local player = game.players[event.player_index]
        local items
        local armor

        items = {
            {"power-armor-mk2", 1},
            {"construction-robot", 50}
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

        local grid = player.get_inventory(defines.inventory.player_armor)[1].grid
        for  i, v in pairs(armor) do
            grid.put({name = v[1]})
        end
    end)
end

function add_test_command2 () 
    commands.add_command("testres", "test-resources", function(event)
        local player = game.players[event.player_index]
        local items
        local armor

        items = {
            {"iron-plate", 400},
            {"copper-plate", 300},
            {"plastic-bar", 100},
            {"steel-plate", 200},
            {"coal", 50}
        }
        for i, v in pairs(items) do
            player.insert{name = v[1], count = v[2]}
        end
    end)
end

function add_test_command3 () 
    commands.add_command("testsmeltiron", "test-iron-smelting", function(event)
        local player = game.players[event.player_index]
        local items
        local armor

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

function add_test_command4 () 
    commands.add_command("testsmelt", "test-smelting", function(event)
        local player = game.players[event.player_index]
        local items
        local armor

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


script.on_init(add_test_command)
script.on_load(add_test_command)
script.on_init(add_test_command2)
script.on_load(add_test_command2)
script.on_init(add_test_command3)
script.on_load(add_test_command3)
script.on_init(add_test_command4)
script.on_load(add_test_command4)