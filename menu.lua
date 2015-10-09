menu = Class({})
game = Class({})

function menu:draw()
    love.graphics.print("Press Enter to continue", 10, 10)
end

function menu:keyreleased(key, code)
    if key == 'return' then
        Gamestate.switch(game)
    end
end

function game:enter()
	player = Player(Vector(400, 300))
end

function game:update(dt)
	player:update(dt)
end

function game:draw()
	player:draw()
end

--function menu:keyreleased(key)
    --if key == 'up' then
        --Buttons.selectPrevious()
    --elseif key == 'down' then
        --Buttons.selectNext()
    --else
        --Buttons.active:onClick()
    --end
--end

