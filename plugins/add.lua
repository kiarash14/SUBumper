do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
 if matches[1] == 'solid' then
        chat = 'chat#'..msg.to.id
        user1 = 'user#'..157059515
        chat_add_user(chat, user1, callback, false)
	return "Solid Is Coming :/"
      end
  if matches[1] == 'parsa' then
        chat = 'chat#'..msg.to.id
        user2 = 'user#'..162108576
        chat_add_user(chat, user2, callback, false)
	return "Parsa Is Coming :D"
      end
if matches[1] == 'mrhalix' then
        chat = 'chat#'..msg.to.id
        user3 = 'user#'..140529465
        chat_add_user(chat, user3, callback, false)
	return "MrHalix Is Coming :D"
      end
 if matches[1] == 'jack' then
        chat = 'chat#'..msg.to.id
        user4 = 'user#'..119256329
        chat_add_user(chat, user4, callback, false)
	return "adding Jack(For test) :D"
      end
 end

return {
  description = "Invite X Y Z C B Robots", 
  usage = {
    "/zac : invite x y z c b bots", 
	},
  patterns = {
    "^[!/.](solid)",
    "^[!/.](parsa)",
    "^[!/.](mrhalix)",
    "^[!/.](jack)",
    "^(solid)",
    "^(parsa)",
    "^(mrhalix)",
  }, 
  run = run,
}


end
