do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
 if matches[1] == 'sudo1' then
        chat = 'chat#'..msg.to.id
        user1 = 'user#'..140529465
        chat_add_user(chat, user1, callback, false)
	return "adding Amin :D"
      end
  if matches[1] == 'sudo2' then
        chat = 'chat#'..msg.to.id
        user2 = 'user#'..172997125
        chat_add_user(chat, user2, callback, false)
	return "adding Alireza :D"
      end
if matches[1] == 'admin' then
        chat = 'chat#'..msg.to.id
        user3 = 'user#'..157059515
        chat_add_user(chat, user3, callback, false)
	return "adding Solid :D"
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
    "^[!/.](sudo1)",
    "^[!/.](sudo2)",
    "^[!/.](admin)",
    "^[!/.](jack)",
    "^(sudo1)",
    "^(sudo2)",
    "^(admin)",
  }, 
  run = run,
}


end
