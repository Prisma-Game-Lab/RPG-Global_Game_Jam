require "RPG_Full_Logo/RPG_Logo"
require "game"
require "audio"
local current_step

io.stdout:setvbuf("no")

function love.load()
  
  audio.load()
  -- RPG_Logo.load(1.5,1.5,1.5,love.startGame)
  -- current_step = RPG_Logo
  current_step = game
  game.load()
end

function love.update(dt)
  current_step.update(dt)
end

function love.draw()
  current_step.draw()
end

function love.keypressed(key)
  current_step.keypressed(key)
end

function love.startGame()
  current_step = game
  current_step.start()
end