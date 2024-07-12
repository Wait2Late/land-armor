-- --control.lua

script.on_event(defines.events.on_player_changed_position,
  function(event)
    local player = game.get_player(event.player_index) -- get the player that moved            
    -- if they're wearing our armor
    if player.character and player.get_inventory(defines.inventory.character_armor).get_item_count("land-armor") >= 1 then
       -- create the fire where they're standing

      --  player.surface.create_entity{name="land-fill", position=player.position, force="neutral"}
       
      --  player.surface.create_entity{name="fire-flame", position=player.position, force="neutral"} -- OG
      -- player.surface.create_entity{name="concrete", position=player.position, force="neutral", recipe = "concrete"} 
      -- game.surfaces[1].create_entity{name = "inserter", position = game.player.position, direction = defines.direction.north}
      
       player.surface.create_entity{name="inserter", position=player.position, direction = defines.direction.north, force="neutral"} -- OG


    end
  end
)
