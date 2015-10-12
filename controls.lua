local Controls = Class {

	init = function(self)
		self.left = 'left'
		self.right = 'right'
		self.down = 'down'
		self.up = 'up'

	end,

	--setup keys
	rightkey = function(self)
		return self:checkkey(self.right)
	end,

	leftkey = function(self)
		return self:checkkey(self.left)
	end,

	downkey = function(self)
		return self:checkkey(self.down)
	end,

	upkey = function(self)
		return self:checkkey(self.up)
	end,

	checkkey = function(self, s)
		if love.keyboard.isDown(s) then
			return true
		else 
			return false
		end
	end,
}

return Controls
