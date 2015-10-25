local MenuList = Class { 
	
	init = function(self, items)
		self.pos = pos
		self.items = items
		self.font = love.graphics.newFont(self.fontSize)

		self.height = 0

		for i, item in ipairs(items) do
			self.height = self.height + self.fontSize + self.space
		end

		self.menuTop = (love.window.getHeight() - self.height) / 2


	end,

	fontSize = 20,
	space = 3,

	draw = function(self)
		love.graphics.setFont(self.font)
		local spaceY = 0

		for i, item in ipairs(self.items) do
			item:draw(0, self.menuTop + spaceY)

			spaceY = spaceY + self.fontSize + self.space
		end
	end,

}

return MenuList
