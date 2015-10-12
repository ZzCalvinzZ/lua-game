Menu = Class {

	draw = function(self)
		love.graphics.print("Press Enter to continue", 10, 10)
	end,

	keyreleased = function(self,key, code)
		if key == 'return' then
			print ()
			Gamestate.switch(game)
		end
	end,

	--function menu:keyreleased(key)
		--if key == 'up' then
			--Buttons.selectPrevious()
		--elseif key == 'down' then
			--Buttons.selectNext()
		--else
			--Buttons.active:onClick()
		--end
	--end
}

menu = Menu()


Game = Class {
	init = function(self)
		self.controls = Controls()
	end,

	enter = function(self)
		controls = new

		player = Player(Vector(400, 200))
		cam = Camera(player.pos.x, player.pos.y)
	end,

	update = function(self,dt)
		player:update(dt)

		local width, height, flags = love.window.getMode()

		if (width * .8 >= player.pos.x  and player.pos.x <= width * .2) or 
			(height * .8 >= player.pos.y and player.pos.y <= height * .2) then
			local dx,dy = player.pos.x - cam.x, player.pos.y - cam.y
			cam:move(dx/2, dy/2)
		end

	end,

	draw = function(self)
		cam:attach()
		love.graphics.draw(bgd,0,0)
		player:draw()
		cam:detach()
	end,

}

game = Game()
