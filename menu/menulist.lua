local MenuList = Class { 
	
	init = function(self, items)
		self.pos = pos
		self.items = items
		self.font = love.graphics.newFont(self.fontSize)
		self:selectItem( 1)

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
		local selected

		for i, item in ipairs(self.items) do
			if item == self.selected then
				selected = true
			else
				selected = false
			end

			item:draw(0, self.menuTop + spaceY, selected)

			spaceY = spaceY + self.fontSize + self.space
		end
	end,

	selectItem = function(self, i)
		local nItems = table.getn(self.items)

		if i < 1 then
			i = 1
		elseif i > nItems then
			i = nItems
		end

		self.selected = self.items[i]
		self.selectedIndex = i
	end,

}

return MenuList
