local Background = Class { 
	
	__includes = Sprite,

	init = function(self, pos)
		Sprite.init(self, pos, love.graphics.newImage('/images/test_bgd.png'))
	end,

	scale = 2,

	draw = function(self)
		love.graphics.draw(self.image, self.pos.x, self.pos.y, 0, self.scale)
	end,
}

return Background

