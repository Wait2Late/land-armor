-- --control.lua

local StoneBrickTile = {}
script.on_event(defines.events.on_player_changed_position,
  function(event)
    local player = game.get_player(event.player_index) -- get the player that moved            
    -- StoneBrickTile = {positions = player.position, name = "stone-brick"}
    -- if they're wearing our armor
    if player.character and player.get_inventory(defines.inventory.character_armor).get_item_count("land-armor") >= 1 then
      -- create the fire where they're standing
      --  player.surface.create_entity{name="fire-flame", position=player.position, force="neutral"} -- OG
      -- Creates inserters. Also learned force is a matter of which faction is which.
      -- game.surfaces[1].create_entity{name = "inserter", position = game.player.position, direction = defines.direction.north}
      -- player.surface.create_entity{name="iron-ore", position={player.position.x, player.position.y-3}, direction = defines.direction.north, force="player"} 



      -- table.insert(StoneBrickTile, {name = "landfill", position = {player.position.x, player.position.y+3}})
      table.insert(StoneBrickTile, {name = "concrete", position = player.position})
      player.surface.set_tiles(StoneBrickTile)
    end
  end
)

script.on_event(defines.events.on_player_mined_tile, function (event)
  local player = game.get_player(event.player_index)

  
  -- player.mine_tile
  -- player.print(tostring(player.surface.get_tile(1,1)))
  player.print("hello world")

end)




-- script.on_event(defines.events.script_raised_set_tiles,
--   function(event)
--     local player = game.get_player(event.player_index) -- get the player that moved            
  

--     player.surface.get_tile(0,0)

--   end
-- )
