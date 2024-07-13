-- --control.lua


script.on_event(defines.events.on_player_changed_position,
  function(event)
    local player = game.get_player(event.player_index) -- get the player that moved            
    local StoneBlockTile = {}
    table.insert(StoneBlockTile, {name = "concrete", position = {player.position.x+x, player.position.y+y}})
    -- StoneBlockTile = {positions = player.position, name = "stone-block"}
    -- if they're wearing our armor
    if player.character and player.get_inventory(defines.inventory.character_armor).get_item_count("land-armor") >= 1 then
       -- create the fire where they're standing
       --  player.surface.create_entity{name="fire-flame", position=player.position, force="neutral"} -- OG
       -- game.surfaces[1].create_entity{name = "inserter", position = game.player.position, direction = defines.direction.north}
       -- Creates inserters. Also learned force is a matter of which faction is which.
      player.surface.create_entity{name="iron-ore", position={player.position.x, player.position.y-3}, direction = defines.direction.north, force="player"} 
      -- player.surface.create_entity{name="stone-brick", position={player.position.x, player.position.y-3}, direction = defines.direction.north, force="player"} 
      -- player.surface.set_tiles(StoneBlockTile, false)
      --  player.surface.create_entity{name="concrete", position=player.position, direction = defines.direction.north}
    end
  end
)
