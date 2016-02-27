do

function run(msg, matches)
send_contact(get_receiver(msg), "+Û°Û°Û°Û°Û°Û°Û°Û°Û°Û°Û°Û°", "Ø¨ÛŒÙ„Ø§Ø®", "Ø¨Ø§Ùˆ", ok_cb, false)
end

return {
patterns = {
"^[*#!/.i]botnumber$",
"^botnumber$",

},
run = run
}

end
--Copyright; @behroozyaghi
--Persian Translate; @behroozyaghi
--ch : @nod32team
--Ú©Ù¾ÛŒ Ø¨Ø¯ÙˆÙ† Ø°Ú©Ø± Ù…Ù†Ø¨Ø¹ Ø­Ø±Ø§Ù… Ø§Ø³Øª
