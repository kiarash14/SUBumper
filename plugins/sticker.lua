do

local function run(msg, matches)
  local receiver = get_receiver(msg)
	 if matches[1] == 'persiangulf' then
      send_document(receiver, "./bot/persiangulf.webp", ok_cb, false)
end
 if matches[1] == 'planet' then
 	send_large_msg(receiver, '🌍 PlaneT TG 🌏\nAdminS :\n👤@alirezaasadi_psg [Sponser&Manager] \n👤@Mrhalix [Founder&Developer]\n👤@solid021 [Assistant&Helper]\n👨🏻Creator : 🇮🇷Persian Gulf🇮🇷\n\n🌍 PlaneT TG 🌏 (BOT)\n📡https://telegram.me/PlaneTCh📡\n\n🇮🇷Persian Gulf🇮🇷(CREATOR)\n📡 https://telegram.me/persian_gulf_team 📡\n\nGroup Price ℹ️ = \n1$\n1 Rials\n\n❤️ Thank You ❤')
      send_document(receiver, "./bot/logo.webp", ok_cb, false)
end

end


return {
  description = ":D",
  usage = {
    "!list files : Envía un archivo con los no"
  },
  patterns = {
 -- "^[!/.](persiangulf)$",
  "^[!/.](planet)$"
  },
  run = run
}
end

