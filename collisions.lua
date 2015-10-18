-- Collision detection function.
-- Returns true if two boxes overlap, false if they don't

function isCollision(s1, s2)
  return s1.pos.x < s2.pos.x + s2.image:getWidth() and
         s2.pos.x < s1.pos.x + s1.image:getWidth() and
         s1.pos.y < s2.pos.y + s2.image:getHeight() and
         s2.pos.y < s1.pos.y + s1.image:getHeight()
end
