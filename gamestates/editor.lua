Editor = Class {
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
}

editor = Editor()
