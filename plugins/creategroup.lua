
do

local function create_group(msg)
    -- superuser and admins only (because sudo are always has privilege)
    if not is_admin(msg) then
       return "برای شما مجاز نیست"
    end
    local group_creator = msg.from.print_name
    create_group_chat (group_creator, group_name, ok_cb, false)
	return 'گروه'..string.gsub(group_name, '_', ' ')..'  ساخته شد  '
end

function run(msg, matches)

    if matches[1] == 'cgp' and matches[2] then
        group_name = matches[2]
        return create_group(msg)
    end

end

return {
  patterns = {
    "^[!/#](cgp) (.*)$",
    "^!!tgservice (.+)$",
    "%[(photo)%]",
  }, 
  run = run,
}

end

-- @Xxcrazy_boyxX
-- @PLUGINSCH