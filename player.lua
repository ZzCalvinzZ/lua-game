Player = Class {
	init = function(self, pos)
		self.pos = pos
		self.image = love.graphics.newImage("images/mario.png")
	end,

	speed = 5,

	update = function(self, dt)
		if game.controls:leftkey() then
			self.pos.x = self.pos.x - 100 * dt
		end
		if game.controls:rightkey() then
			self.pos.x = self.pos.x + 100 * dt
		end
		if game.controls:upkey() then
			self.pos.y = self.pos.y - 100 * dt
		end
		if game.controls:downkey() then
			self.pos.y = self.pos.y + 100 * dt
		end

	end,

	draw = function(self)
		love.graphics.draw(self.image, self.pos.x, self.pos.y)
	end,

}

return Player
