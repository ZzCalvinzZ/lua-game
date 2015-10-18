Menu = Class {

	draw = function(self)
		love.graphics.print("Press Enter to continue", 10, 10)
	end,

	keyreleased = function(self,key, code)
		if key == 'return' then
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

		self.xMiddle = love.window.getWidth() / 2
		self.yMiddle = love.window.getHeight() / 2

		self.bgd= Background(Vector(0,0))
		self.player = Player(Vector(self.bgd.pos.x + 200, self.bgd.image:getHeight() - 100))
		self.camera = Camera(self.bgd.pos.x + self.xMiddle, self.bgd.image:getHeight() - self.yMiddle)
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
		local xMiddle = self.xMiddle
		local yMiddle = self.yMiddle

		local function cantPanLeft()
			if self.camera.x <= self.bgd.pos.x + xMiddle and self.player.pos.x < xMiddle then
				return true
			else
				return false
			end
		end

		local function cantPanRight()
			if self.camera.x >= (self.bgd.pos.x + self.bgd.image:getWidth() - xMiddle) and self.player.pos.x > xMiddle then
				return true
			else
				return false
			end
		end

		local function cantPanUp()
			if self.camera.y <= self.bgd.pos.y + yMiddle and self.player.pos.y < yMiddle then
				return true
			else
				return false
			end
		end

		local function cantPanDown()
			if self.camera.y >= (self.bgd.pos.y + self.bgd.image:getHeight() - yMiddle) and self.player.pos.y > yMiddle then
				return true
			else
				return false
			end
		end

		local dx,dy = self.player.pos.x - self.camera.x, self.player.pos.y - self.camera.y

		if (dx < 0 and cantPanLeft()) or (dx > 0 and cantPanRight()) then
			dx = 0
		end

		if (dy < 0 and cantPanUp()) or (dx > 0 and cantPanDown()) then
			dy = 0
		end

		self.camera:move(dx/2, dy/2)
	end

}

game = Game()
