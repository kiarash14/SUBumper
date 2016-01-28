do


local function scan_name(extra, success, result)
local founds = {}
for k,member in pairs(result.members) do
if extra.name then
gp_member = extra.name
fields = {'first_name', 'last_name', 'print_name'}
elseif extra.user then
gp_member = string.gsub(extra.user, '@', '')
fields = {'username'}
end
for k,field in pairs(fields) do
if member[field] and type(member[field]) == 'string' then
if member[field]:match(gp_member) then
founds[tostring(member.id)] = member
end
end
end
end
if next(founds) == nil then -- Empty table
send_msg(extra.receiver, (extra.name or extra.user)..' not found on this chat.', ok_cb, false)
else
local text = ''
for k,user in pairs(founds) do
text = text..'name: '..(user.first_name or '')..' '..(user.last_name or '')..'\n'
..'first_name: '..(user.first_name or '')..'\n'
..'last_name: '..(user.last_name or '')..'\n'
..'user_name: @'..(user.username or '')..'\n'
..'ID: '..(user.id or '')..'\n\n'
end
send_msg(extra.receiver, text, ok_cb, false)
end
end

local function action_by_reply(extra, success, result)
local text = 'name: '..(result.from.first_name or '')..' '..(result.from.last_name or '')..'\n'
..'first_name: '..(result.from.first_name or '')..'\n'
..'last_name: '..(result.from.last_name or '')..'\n'
..'user_name: @'..(result.from.username or '')..'\n'
..'ID: '..result.from.id
send_msg(extra.receiver, text, ok_cb, true)
end

local function returnids(extra, success, result)
local chat_id = extra.msg.to.id
local text = '['..result.id..'] '..result.title..'.\n'
..result.members_num..' الاعضاء\n\n'
i = 0
for k,v in pairs(result.members) do
i = i+1
if v.username then
user_name = ' @'..v.username
else
user_name = ''
end
text = text..i..'. ['..v.id..'] '..user_name..' '..(v.first_name or '')..(v.last_name or '')..'\n'
end
if extra.matches == 'pm' then
send_large_msg('user#id'..extra.msg.from.id, text)
elseif extra.matches == 'txt' or extra.matches == 'pmtxt' then
local textfile = '/tmp/chat_info_'..chat_id..'_'..os.date("%y%m%d.%H%M%S")..'.txt'
local file = io.open(textfile, 'w')
file:write(text)
file:flush()
file:close()
if extra.matches == 'txt' then
send_document('chat#id'..chat_id, textfile, rmtmp_cb, {file_path=textfile})
elseif extra.matches == 'pmtxt' then
send_document('user#id'..extra.msg.from.id, textfile, rmtmp_cb, {file_path=textfile})
end
elseif not extra.matches then
send_large_msg('chat#id'..chat_id, text)
end
end



local function action_by_reply(extra, success, result)
  local user_info = {}
  local uhash = 'user:'..result.from.id
  local user = redis:hgetall(uhash)
  local um_hash = 'msgs:'..result.from.id..':'..result.to.id
  user_info.msgs = tonumber(redis:get(um_hash) or 0)
  user_info.name = user_print_name(user)..' ['..result.from.id..']'
  local msgs = '6-messages sent : '..user_info.msgs
  if result.from.username then
    user_name = '@'..result.from.username
  else
    user_name = ''
  end
  local msg = result
  local user_id = msg.from.id
  local chat_id = msg.to.id
  local user = 'user#id'..msg.from.id
  local chat = 'chat#id'..msg.to.id
  local data = load_data(_config.moderation.data)
  if data[tostring('admins')][tostring(user_id)] then
    who = 'admin'
  elseif data[tostring(msg.to.id)]['moderators'][tostring(user_id)] then
    who = 'Moderator'
  elseif data[tostring(msg.to.id)]['set_owner'] == tostring(user_id) then
    who = 'Owner'
  elseif tonumber(result.from.id) == tonumber(our_id) then
    who = 'Group creator'
  else
    who = 'Member'
  end
  for v,user in pairs(_config.sudo_users) do
    if user == user_id then
      who = 'My dady ❤️❤️❤️'
    end
  end
  local text = '1-Full name : '..(result.from.first_name or '')..' '..(result.from.last_name or '')..'\n'
             ..'2-First name : '..(result.from.first_name or '')..'\n'
             ..'3-Last name : '..(result.from.last_name or '')..'\n'
             ..'4-Username : '..user_name..'\n'
             ..'5-ID : '..result.from.id..'\n'
             ..msgs..'\n'
             ..'7-Position in group : '..who
  send_large_msg(extra.receiver, text)
end

local function run(msg)
local receiver = get_receiver(msg)
if is_chat_msg(msg) then
if msg.text == '!info' then
if msg.reply_id then
if is_momod(msg) then
msgr = get_message(msg.reply_id, action_by_reply, {receiver=receiver})
end
else
local text = 'name: '..(msg.from.first_name or '')..' '..(msg.from.last_name or '')..'\n'
..'first_name: '..(msg.from.first_name or '')..'\n'
..'last_name: '..(msg.from.last_name or '')..'\n'
..'user_name: @'..(msg.from.username or '')..'\n'
..'ID: ' .. msg.from.id
local text = text..'\n\ngroup_name: '
..msg.to.title..' (group_id: '..msg.to.id..')'
return text
end
elseif is_momod(msg) and matches[1] == 'chat' then
if matches[2] == 'pm' or matches[2] == 'txt' or matches[2] == 'pmtxt' then
chat_info(receiver, returnids, {msg=msg, matches=matches[2]})
else
chat_info(receiver, returnids, {msg=msg})
end
elseif is_momod(msg) and string.match(matches[1], '^@.+$') then
chat_info(receiver, scan_name, {receiver=receiver, user=matches[1]})
elseif is_mod(msg) and string.gsub(matches[1], ' ', '') then
user = string.gsub(matches[1], ' ', '')
chat_info(receiver, scan_name, {receiver=receiver, name=matches[1]})
end
else
return 'You are not in a group.'
end
end

   if msg.text == '!info' and msg.reply_id and is_momod(msg) then
     get_message(msg.reply_id, action_by_reply, {receiver=get_receiver(msg)})
   end
end

return {
patterns = {
"^[!/]info$",
"^[!/]info (chat) (.)$",
"^[!/]info (.)$"
},
run = run
}

end
