do

function run(msg, matches)
	return "کیر بات سیاره و خلیج فارس تو کس ننه جندت ".. matches[1]
end
end
return {
  description = "Says Hello to Someone", 
  usage = "Say Hello to (name)",
  patterns = {
    "^fosh (.*) ",
	"^Cuss (.*) ",
  }, 
  run = run 
}
