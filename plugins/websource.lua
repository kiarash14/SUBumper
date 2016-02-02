local database = mathches[2]
local function run(msg)
local res = http.request(database)
local jomlak = res:split(",")
return jomlak[math.random(#jomlak)]
end

return {
description = "Jomlak Sender",
usage = "!jomlak : send random texts",
patterns = {"^[/!]webs (.*)$"},
run = run
}
