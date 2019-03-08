script.on_event(defines.events.on_console_command, function(event)
    local player = game.players[event.player_index]

    if event.command ~= "test" then
        return
    end

    if defines.controllers.god == player.controller_type then
        return
    end
    if defines.controllers.ghost == player.controller_type then
        return
    end

    local items
    local armor

    items = {
        {"power-armor-mk2", 1},
        {"construction-robot", 50},
        {"fast-transport-belt", 800},
        {"fast-inserter", 200},
        {"fast- underground-belt", 154},
        {"long-handed-inserter", 100},
        {"steel-furnace", 100},
        {"small-electric-pole", 98},
        {"fast-splitter", 16},
        {"iron-chest", 4},
        {"lamp", 4},
        {"iron-plate", 100},
        {"copper-plate", 100},
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
