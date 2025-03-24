function BulletList(el)
    for i, item in ipairs(el.content) do
      if i > 1 then break end  -- only first item to check level
      if item[1].t == "BulletList" then
        -- this is a nested list, set marker to Unicode 25CB (○)
        item[1].bullet_char = "○"
      end
    end
    return el
  end
  