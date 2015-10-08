function rightkey()
	local s = controls["right"]
	return checkkey(s)
end

function leftkey()
	local s = controls["left"]
	return checkkey(s)
end

function downkey()
	local s = controls["down"]
	return checkkey(s)
end

function upkey()
	local s = controls["up"]
	return checkkey(s)
end

function checkkey(s)
	if love.keyboard.isDown(s) then
		return true
	else 
		return false
	end
end
