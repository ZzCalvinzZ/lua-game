--externallibrary files!
Class = require "hump.class"
Vector = require "hump.vector"
Gamestate = require "hump.gamestate"
Camera = require "hump.camera"

loveframes = require "loveframes"

--my stuff
Controls = require "controls"

physics = require "physics"
Player = require "player"

require "gamestates"


bgd=love.graphics.newImage('/images/test_bgd.png')

function love.load()
	Gamestate.registerEvents()
	Gamestate.switch(menu)
end

function love.update(dt)
	loveframes.update(dt)
end
 
function love.draw()
	loveframes.draw()
end

function love.mousepressed(x, y, button)
	loveframes.mousepressed(x, y, button)
end

function love.mousereleased(x, y, button)
	loveframes.mousereleased(x, y, button)
end

function love.keypressed(x, y, button)
	loveframes.keypressed(x, y, button)
end

function love.keyreleased(x, y, button)
	loveframes.keyreleased(x, y, button)
end

function love.textinput(text)
	loveframes.textinput(text)
end

function love.quit()
	--save game here
end
