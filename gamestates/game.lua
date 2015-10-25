Game = Class {
	init = function(self)
		self.controls = Controls()
	end,

	enter = function(self)
		controls = new

		self.bgd= Background(Vector(0,0))
		self.player = Player(Vector(self.bgd.pos.x + 200, self.bgd.image:getHeight() - 100))
		self.camera = Camera(self.bgd.pos.x + xMiddle, self.bgd.image:getHeight() - yMiddle)
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
		local dx,dy = self.player.pos.x - self.camera.x, self.player.pos.y - self.camera.y

		local function cantPanLeft()
			if self.camera.x <= self.bgd.pos.x + xMiddle and self.player.pos.x < xMiddle then
				self.camera.x = self.bgd.pos.x + xMiddle
				return true
			else
				return false
			end
		end

		local function cantPanRight()
			if self.camera.x >= (self.bgd.pos.x + self.bgd.image:getWidth() - xMiddle) and self.player.pos.x > xMiddle then
				self.camera.x = (self.bgd.pos.x + self.bgd.image:getWidth() - xMiddle)
				return true
			else
				return false
			end
		end

		local function cantPanUp()
			if self.camera.y <= self.bgd.pos.y + yMiddle and self.player.pos.y < yMiddle then
				self.camera.y = self.bgd.pos.y + yMiddle
				return true
			else
				return false
			end
		end

		local function cantPanDown()
			if self.camera.y >= (self.bgd.pos.y + (self.bgd.image:getHeight() * self.bgd.scale) - yMiddle) and self.player.pos.y > yMiddle then
				self.camera.y = (self.bgd.pos.y + (self.bgd.image:getHeight() * self.bgd.scale) - yMiddle)
				return true
			else
				return false
			end
		end

		if (dx < 0 and cantPanLeft()) or (dx > 0 and cantPanRight()) then
			dx = 0
		end

		if (dy < 0 and cantPanUp()) or (dy > 0 and cantPanDown()) then
			dy = 0
		end

		self.camera:move(dx/2, dy/2)
	end

}

game = Game()
