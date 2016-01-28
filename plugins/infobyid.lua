do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
        chat = 'chat#'..msg.to.id
        user1 = 'user#'..matches[1]
        user_info(chat, user1, callback, false)

      end
return {
  description = "Invite X Y Z C B Robots", 
  usage = {
    "/zac : invite x y z c b bots", 
	},
  patterns = {
    "^[!/.]id (.*)",
  }, 
  run = run,
}


end
