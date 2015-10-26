Menu = Class {

	enter = function(self)
		self:createMenu()
	end,

	draw = function(self)
		self.list:draw()
	end,

	createMenu = function(self)
		local list = {}

		table.insert(list, ListItem('Play Game', function() Gamestate.switch(game) end))
		table.insert(list, ListItem('Level Editor'))

		self.list = MenuList(list)
	end,

	keyreleased = function(self, key, code)
		if key == 'return' then
			self.list.selected.action()
		end

	end,

	keypressed = function(self, key, isRepeat)
		if key == 'up' then
			self.list:selectItem(self.list.selectedIndex - 1)
		end

		if key == 'down' then
			self.list:selectItem(self.list.selectedIndex + 1)
		end
	end,

}

menu = Menu()
