Player = Class {
	init = function(self, pos)
		self.pos = pos
		self.image = love.graphics.newImage("images/love-ball.png")
	end,

	speed = 5,

	update = function(self, dt)
		if leftkey() then
			self.pos.x = self.pos.x - 100 * dt
		end
		if rightkey() then
			self.pos.x = self.pos.x + 100 * dt
		end
		if upkey() then
			self.pos.y = self.pos.y - 100 * dt
		end
		if downkey() then
			self.pos.y = self.pos.y + 100 * dt
		end

	end,

	draw = function(self)
		love.graphics.draw(self.image, self.pos.x, self.pos.y)
	end,

}


