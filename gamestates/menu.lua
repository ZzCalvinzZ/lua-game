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
}

menu = Menu()
