--externallibrary files!
Class = require "hump.class"
Vector = require "hump.vector"
Gamestate = require "hump.gamestate"
Camera = require "hump.camera"

loveframes = require "loveframes"

--my stuff
Controls = require "controls"

--require = "collisions"
physics = require "physics"
Sprite = require "sprites.sprite"
Background = require "sprites.background"
Player = require "sprites.player"

--menu stuff
MenuList = require "menu.menulist"
ListItem = require "menu.listitem"

require "gamestates"

function love.load()
	xMiddle = love.window.getWidth() / 2
	yMiddle = love.window.getHeight() / 2

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
