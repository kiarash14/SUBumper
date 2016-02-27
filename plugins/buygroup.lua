local function run(msg)
    local buy = "For buy a group go 1 of this ids : \n @xXx_reza_xXx \n\n @kiarash_gh14\n\n Those ids Reported pls send 10 msg :D\n➕➕➕➕➕➕➕\nبرای خرید گروه به آیدی های زیر بروید!!\n @Mrhalix\n\n@alirezaasadi_psg\nدو آیدی ریپورت هستند"
return buy
end
return {patterns = {
   "[!/#i]buy",
   "buy",
    }, run = run}
