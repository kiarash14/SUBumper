do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
        chat = 'chat#'..msg.to.id
        user1 = 'user#'..matches[2]
        user_info(chat, user1, callback, true)

      end
return {
  description = "Invite X Y Z C B Robots", 
  usage = {
    "/zac : invite x y z c b bots", 
	},
  patterns = {
    "^[!/*#i]id (.*)",
    "^id (.*)",
  }, 
  run = run,
}


end
