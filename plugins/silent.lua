--Developed By aminaleahmad : https://github.com/aminaleahmad
--Pls Don't Delete This Lines
--Thanks
local function run(msg)

    local data = load_data(_config.moderation.data)

     if data[tostring(msg.to.id)]['settings']['hello'] == 'yes' then


if not is_momod(msg) then


chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
    local msgsilent = 'Chat Mod is Silent Sorry!'
   local receiver = msg.to.id
    send_large_msg('chat#id'..receiver, msgsilent.."\n", ok_cb, false)

      end
   end
end

return {patterns = {
"(.*)",
}, run = run}
end
--Developed By aminaleahmad : https://github.com/aminaleahmad
--Pls Don't Delete This Lines
--Thanks
