local database = 'http://mpfan.ir/'
local function run(msg)
local res = http.request(database.."danestani.db")
local danestani = res:split(",")
return danestani[math.random(#danestani)]
end

return {
description = "Knowing Book",
usage = "!danestani : send knowing texts",
patterns = {"^[/!]know$"},
run = run
}
