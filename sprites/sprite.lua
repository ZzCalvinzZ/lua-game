local Sprite = Class {
	init = function(self, pos, image)
		self.pos = pos
		self.image = image
	end,

	draw = function(self)
		love.graphics.draw(self.image, self.pos.x, self.pos.y)
	end,

}

return Sprite
