do
-- Will leave the group if be added
local function run(msg, matches)
-- local bot_id = 156641214 -- your bot id
local test1 =  155021978
local test2 =  152872980
-- local test3 =
-- local user = msg.from.id
   -- like local bot_id = 1234567
    if matches[1] == 'addtest' and is_admin(msg) then
       chat_add_user("chat#id"..msg.to.id, 'user#id'..test1, ok_cb, false)
       chat_add_user("chat#id"..msg.to.id, 'user#id'..test2, ok_cb, false)
end
 
return {
  patterns = {
    "^[!/](addtest)$",
    "^!!tgservice (.+)$",
  },
  run = run
}
end
