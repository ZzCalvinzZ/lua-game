
local ListItem = Class { 
	
	init = function(self, text, action)
		self.text = text
		self.action = action
	end,

	action = function (self)
	end,

	color = {red=255, green=255, blue=255, alpha=255},
	selectColor = {red=255, green=255, blue=0, alpha=255},

	draw = function (self, x, y, selected)
		if selected then
			love.graphics.setColor(self.selectColor.red, self.selectColor.green, self.selectColor.blue, self.selectColor.alpha)
		else
			love.graphics.setColor(self.color.red, self.color.green, self.color.blue, self.color.alpha)
		end

		love.graphics.printf(self.text, x, y, love.window.getWidth(), 'center')
	end,

}

return ListItem
