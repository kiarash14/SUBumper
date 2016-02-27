do
 function run(msg, matches)
 
 local fuse = 'New FeedBack\n\nId : ' .. msg.from.id .. '\n\nName: ' .. msg.from.print_name ..'\n\nUsername: @' .. msg.from.username .. '\n\nThe Pm:\n' .. matches[1] 
 local fuses = '!printf user#id' .. msg.from.id
 
 
   local text = matches[1]
   local chat = "chat#id"..132557188   --like : local chat = "chat#id"..132557188   
  local sends = send_msg(chat, fuse, ok_cb, false)
  return 'Ø¨Ø§Ø²Ø®ÙˆØ±Ø¯ Ø´Ù…Ø§ Ø§Ø±Ø³Ø§Ù„ Ø´Ø¯'
 
 end
 end
 return {
  
  description = "Feedback",
 
  usage = "!feedback message",
  patterns = {
  "^[Ff]eedback (.*)$"
 
  },
  run = run
 }
--Copyright; @behroozyaghi
--Persian Translate; @behroozyaghi
--ch : @nod32team
--Ú©Ù¾ÛŒ Ø¨Ø¯ÙˆÙ† Ø°Ú©Ø± Ù…Ù†Ø¨Ø¹ Ø­Ø±Ø§Ù… Ø§Ø³Øª
