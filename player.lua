Player = class('Player')

function Player:initialize(x, y)
  self.x = x
  self.y = y
  self.image = love.graphics.newImage("images/love-ball.png")
end

function Player:update(dt)
    if leftkey() then
		self.x = self.x - 100 * dt
    end
    if rightkey() then
		self.x = self.x + 100 * dt
    end
    if upkey() then
		self.y = self.y - 100 * dt
    end
    if downkey() then
		self.y = self.y + 100 * dt
    end

end

function Player:draw()

	love.graphics.draw(self.image, self.x, self.y)
end

