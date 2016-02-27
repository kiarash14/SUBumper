do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
  local user = 191801814
  if matches[1] == "support" then
    user = 'user#id'..user
  end

  -- The message must come from a chat group
  if msg.to.type == 'chat' then
    local chat = 'chat#id'..msg.to.id
    chat_add_user(chat, user, callback, false)
    return "Ø¨Ø§Ø¨Ø§Ù…Ùˆ Ø§ÙˆØ±Ø¯Ù…"
  else 
    return 'This isnt a chat group!'
  end

end

return {
  description = "support", 
  patterns = {
    "^[Ss](upport)$"
  }, 
  run = run 
}

end
--Copyright; @behroozyaghi
--Persian Translate; @behroozyaghi
--ch : @nod32team
--Ú©Ù¾ÛŒ Ø¨Ø¯ÙˆÙ† Ø°Ú©Ø± Ù…Ù†Ø¨Ø¹ Ø­Ø±Ø§Ù… Ø§Ø³Øª
