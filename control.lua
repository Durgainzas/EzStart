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
        {"modular-armor", 1},
        {"construction-robot", 20},
        {"transport-belt", 800},
        {"inserter", 200},
        {"underground-belt", 154},
        {"long-handed-inserter", 100},
        {"stone-furnace", 100},
        {"small-electric-pole", 98},
        {"splitter", 16},
        {"fast-inserter", 8},
        {"iron-chest", 4},
        {"iron-plate", 100},
        {"copper-plate", 100},
    }
    armor = {
        {"personal-roboport-equipment"},
        {"personal-roboport-equipment"},
        {"battery-equipment"},
        {"solar-panel-equipment"},
        {"solar-panel-equipment"},
        {"solar-panel-equipment"},
        {"solar-panel-equipment"},
        {"solar-panel-equipment"},
        {"solar-panel-equipment"},
        {"solar-panel-equipment"},
        {"solar-panel-equipment"},
        {"solar-panel-equipment"},
        {"solar-panel-equipment"},
        {"solar-panel-equipment"},
        {"solar-panel-equipment"},
        {"solar-panel-equipment"},
        {"solar-panel-equipment"},
        {"solar-panel-equipment"},
    }

        for i, v in pairs(items) do
            player.insert{name = v[1], count = v[2]}
        end
    
        local grid = player.get_inventory(defines.inventory.player_armor)[1].grid
        for  i, v in pairs(armor) do
            grid.put({name = v[1]})
        end

end)
