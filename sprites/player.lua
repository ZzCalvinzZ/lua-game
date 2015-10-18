Player = Class { 
	
	__includes = Sprite,

	init = function(self, pos)
		Sprite.init(self, pos, love.graphics.newImage("images/mario.png"))
	end,

	speed = 5,

	update = function(self, dt)
		if game.controls:leftkey() then
			self.pos.x = self.pos.x - 100 * dt * self.speed
		end
		if game.controls:rightkey() then
			self.pos.x = self.pos.x + 100 * dt * self.speed
		end
		if game.controls:upkey() then
			self.pos.y = self.pos.y - 100 * dt * self.speed
		end
		if game.controls:downkey() then
			self.pos.y = self.pos.y + 100 * dt * self.speed
		end

	end,
}

return Player
