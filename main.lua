--require ALL the files!
Class = require "hump.class"
Vector = require "hump.vector"
Gamestate = require "hump.gamestate"

loveframes = require "loveframes"
game = require "game"
controls = require "controls"
require "player"
require "menu"

setupControls()

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
