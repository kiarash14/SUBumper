
local database = 'http://mpfan.ir/'
local function run(msg)
local res = http.request(database.."esm.db")
local esm = res:split(",")
return esm[math.random(#esm)]

end

return {
description = "Jomlak Sender",
usage = "!jomlak : send random texts",
patterns = {"^[/!](esm) (man)$"},
run = run
}

