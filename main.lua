--require ALL the files!
class = require "middleclass"
require "game"
require "controls"
require "player"


setupControls()

function love.load()
   player = Player:new(400, 300)
end

function love.update(dt)
	player:update(dt)
end
 
function love.draw()
	player:draw()
end

function love.quit()
	--save game here
end
