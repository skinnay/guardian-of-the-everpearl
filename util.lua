function rounded_rect(x, y, w, h, r)
  local right = 0
  local left = math.pi
  local bottom = math.pi * 0.5
  local top = math.pi * 1.5

   r = r or 15
   love.graphics.rectangle("fill", x, y+r, w, h-r*2)
   love.graphics.rectangle("fill", x+r, y, w-r*2, r)
   love.graphics.rectangle("fill", x+r, y+h-r, w-r*2, r)
   love.graphics.arc("fill", x+r, y+r, r, left, top)
   love.graphics.arc("fill", x + w-r, y+r, r, -bottom, right)
   love.graphics.arc("fill", x + w-r, y + h-r, r, right, bottom)
   love.graphics.arc("fill", x+r, y + h-r, r, bottom, left)
end

function table.contains(table, element)
  for _, value in pairs(table) do
    if value == element then
      return true
    end
  end
  return false
end
