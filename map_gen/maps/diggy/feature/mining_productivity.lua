-- This module replaces mining productivity research effects with robot cargo capacity effects
-- replace == true; Replace even levels of mining prod with robot cargo capacity until level 93, for a total capacity of 50 (1 from bot, 3 from vanilla research, 46 from this module)
-- replace == false; Hides all levels of mining prod

local Event = require 'utils.event'

local MINING_PROD = 'mining-productivity'

local function starts_with(str, pattern)
  return str:sub(1, #pattern) == pattern
end

local function replace_effect(level)
  if level < 1 or level > 93 then return false end
  return level % 2 == 0
end

local function get_mining_productivity_level(force)
  if not force or not force.valid or not force.index then
    return
  end

  local _max = 0
  local researched = true
  local l = 1
  while (researched == true and l <= 20) do
    local tech_name = MINING_PROD .. '-' .. l
    local tech = force.technologies[tech_name]
    if tech then
      if tech.researched then
        _max = math.max(_max, tech.level)
      else
        researched = false
        if tech.level then
          _max = math.max(_max, tech.level - 1)
        end
      end
    end
    l = l + 1
  end

  return _max
end

local Public = {}

Public.register = function(config)
  if config.replace then

    Event.add(defines.events.on_research_finished, function(event)
      local tech = event.research
      if not (tech and tech.valid) then
        return
      end

      if not starts_with(tech.name, MINING_PROD) then
        return
      end

      if replace_effect(tech.level-1) then
        local force = tech.force
        force.mining_drill_productivity_bonus = force.mining_drill_productivity_bonus - 0.1
        force.worker_robots_storage_bonus = force.worker_robots_storage_bonus + 1

        game.print(table.concat({
          '[color=orange][Mining productivity][/color]',
          '➡',
          '[color=blue][Worker robots cargo size][/color]',
          '\nReplacing technology effects. New robots cargo capacity:',
          '[color=green][font=var]+'..force.worker_robots_storage_bonus..'[/font][/color]'
        }, '\t\t'))
      end
    end)

    Event.add(defines.events.on_technology_effects_reset, function(event)
      local force = event.force
      if not (force and force.valid) then
        return
      end
      local bonus = math.min(math.floor(get_mining_productivity_level(force) / 2), 46)
      force.worker_robots_storage_bonus = force.worker_robots_storage_bonus + bonus
      force.mining_drill_productivity_bonus = force.mining_drill_productivity_bonus - bonus * 0.1
    end)
  else
    Event.on_init(function()
      for _, force in pairs(game.forces) do
        for name, tech in pairs(force.technologies) do
          if starts_with(name, MINING_PROD) then
            tech.enabled = false
          end
        end
      end
    end)
  end
end

return Public
