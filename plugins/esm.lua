if not is_sudo(msg) then
local database = 'http://mpfan.ir/'
local function run(msg)
local res = http.request(database.."esm.db")
local esm = res:split(",")
return esm[math.random(#esm)]
end
end
local database = 'http://mpfan.ir/'
local function run(msg)
local res2 = http.request(database.."esmsudo.db")
local esmsudo = res2:split(",")
return esmsudo[math.random(#esmsudo)]
end


return {
description = "Jomlak Sender",
usage = "!jomlak : send random texts",
patterns = {"^[/!](esm) (man)$"},
run = run
}
