do

local function run(msg, matches)
  local receiver = get_receiver(msg)
	 if matches[1] == 'persiangulf' then
      send_document(receiver, "./bot/persiangulf.webp", ok_cb, false)
end
 if matches[1] == 'planet' then
 	return "sending...."
 end
 if matches[1] == 'planet' then
 	
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

