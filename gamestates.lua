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

		self.bgd= Sprite(Vector(0,0), love.graphics.newImage('/images/test_bgd.png'))

		self.player = Player(Vector(400, 200))
		print(self.player.pos)
		self.camera = Camera(self.player.pos.x, self.player.pos.y)
	end,

	update = function(self,dt)
		self.player:update(dt)
		self:moveCamera()
	end,

	draw = function(self)
		self.camera:attach()
		self.bgd:draw()
		self.player:draw()
		self.camera:detach()
	end,

	moveCamera = function(self)
		local xMiddle = love.window.getWidth() / 2
		local yMiddle = love.window.getHeight() / 2

		print(self.camera.x, self.bgd.pos.x + xMiddle)
		if self.camera.x >= self.bgd.pos.x + xMiddle or self.player.pos.x >  xMiddle then
			local dx,dy = self.player.pos.x - self.camera.x, self.player.pos.y - self.camera.y
			self.camera:move(dx/2, dy/2)
		end
	end

}

game = Game()
