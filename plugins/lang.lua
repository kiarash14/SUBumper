local function run(msg, matches) 
  local lang_hash = 'language :'.. msg.from.id
  local is_lang_hash = redis:get(lang_hash)
  if matches[1] == 'language' then
    if matches[2] == 'english' then
      redis:set(lang_hash, "English")
      send_large_msg(group, 'Your default language is now ||English||') 
    elseif matches[2] == 'persian' then
      redis:set(lang_hash,"persian") 
      send_large_msg(group, 'Your default language is now ||Persian||') 
    end
  end
  if matches[1] == 'hi' then
    if is_lang_hash == 'English' then
      send_large_msg(group, 'Hi there') 
    elseif is_lang_hash == 'persian' then
      send_large_msg(group, 'سلام') 
    end
  end
end

return {
  Patterns = {
    "^[!#/i*](language) (.+)$",
    "^[!#/i*]([Hh]i)$", 
    "^(language) (.+)$",
    "^([Hh]i)$",
   }, 
  run = run 
} 
