local function run(msg)
   if msg.text == 'test' then
  local about = '    لیست دستورات :\n\n!kick [username|id]\nمیتوانید از ریپلای هم استفاده کنید\n〰〰〰〰〰〰\n!ban [ username|id]\nمیتوانید از ریپلای هم استفاده کنید\n〰〰〰〰〰〰\n!unban [id]\nمیتوانید از ریپلای هم استفاده کنید\n〰〰〰〰〰〰\n!who\nلیست اعضا\n〰〰〰〰〰〰\n!modlist\nلیست مدیران\n〰〰〰〰〰〰\n!promote [username]\nمقام دادن به شخص\nمیتوانید از ریپلای هم استفاده کنید\n〰〰〰〰〰〰\n!demote [username]\nگرفتن مقام از شخص\nمیتوانید از ریپلای هم استفاده کنید\n〰〰〰〰〰〰\n!kickme\nلفت از گروه با قابلیت برگشت\n〰〰〰〰〰〰\n!about\nتوضیحات گروه\n〰〰〰〰〰〰\n!setphoto\nتنظیم و قفل عکس گروه\n〰〰〰〰〰〰\n!setname [name]\nتنظیم اسم گروه ( بدون قفل )\n〰〰〰〰〰〰\n!rules\nقوانین\n〰〰〰〰〰〰\n!id\nآیدی گروه زیاد به کار نمیاد\n〰〰〰〰〰〰\n!help\nهمین متن\n〰〰〰〰〰〰\n!lock [member|name|bots|leave|arabic|tag|adds] \nقفل [اعضا|اسم|ربات|لفت|فارسی|تگ|تبلیغات] \n〰〰〰〰〰〰\n!unlock [member|name|bots|leave|arabic|tag|adds]\nبرداشتن قفل [اعضا|اسم|ربات|لفت|فارسی|تگ|تبلیغات] \n〰〰〰〰〰〰\n!set rules <text>\nتنظیم قوانین\n〰〰〰〰〰〰\n!set about <text>\nتنظیم توضیحات\n〰〰〰〰〰〰\n!settings\nتنظیمات گروه\n〰〰〰〰〰〰\n!newlink\nساخت / تغییر لینک\n〰〰〰〰〰〰\n!link\nلینک گروه\n〰〰〰〰〰〰\n!owner\nمدیر اصلی گروه\n〰〰〰〰〰〰\n!setowner [id]\nتنظیم مدیر اصلی گروه\n〰〰〰〰〰〰\n!setflood [value]\nتنظیم مقدار حساسیت اسپم\n〰〰〰〰〰〰\n!stats\nدیدن تعداد پیام های فرستاده شده\n〰〰〰〰〰〰\n!save [value] <text>\nتنظیم یک متن در گروه\n〰〰〰〰〰〰\n!get [value]\nگرفتن متن تنظیم شده\n〰〰〰〰〰〰\n!clean [modlist|rules|about]\nپاک کردن [لیست مدیرها | قوانین | توضیحات]\n〰〰〰〰〰〰\n!res [username]\nگرفتن اطلاعات یک نفر\n〰〰〰〰〰〰\n!log\nلیست دستورات استفاده شده در گروه\n〰〰〰〰〰〰\n!sticker [warn|kick|ok]\nwarn : اخطار دادن موقع فرستادن استیکر\nkick : کیک کردن موقع فرستادن استیکر\nok : کاری نکردن موفع فرستادن استیکر\n〰〰〰〰〰〰\n!tagall [text]\nتگ کردن همه با آیدی + پیام شما\n〰〰〰〰〰〰\n!about us\nاطلاعات درباره ربات\n〰〰〰〰〰〰\n!persiangulf\nفرستادن لوگو خلیج فارس در قالب استیکر\n〰〰〰〰〰〰\n!all\nدیدن همه اطلاعات گروه\n〰〰〰〰〰〰\n!block (user-id)\n!unblock (user-id)\nبلاک کردن شخص\nآنبلاک کردن شخص\nبرای ادمین های ربات\n〰〰〰〰〰〰\n!kickinactive\nکیک کردن اعضایی که فعال نیستند\n〰〰〰〰〰〰\n!calc [expression]\nماشین حساب\n〰〰〰〰〰〰\n!qr [text]\nبارکد ساز\n〰〰〰〰〰〰\n!webshot [url]\nگرفتن عکس از یک سایت\n!banlist\nلیست بن شدگان\n〰〰〰〰〰〰\n**شما میتوانید از ! و / و . برای علامت دستورها استفاده کنید\n〰〰〰〰〰〰\n**ربات در پیوی به هیچ کس جواب نمیدهد\n'
        return about
    end
  if msg.text == 'testing' then
  local abouut = 'hi'
        return abouut
    end
    end
return {patterns = {
   "test",
   "testing",
    }, run = run}
