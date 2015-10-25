
local ListItem = Class { 
	
	init = function(self, text, action)
		self.text = text
		self.action = action
	end,

	action = function (self)
	end,

	draw = function (self, x, y)
		love.graphics.printf(self.text, x, y, love.window.getWidth(), 'center')
	end,

}

return ListItem
