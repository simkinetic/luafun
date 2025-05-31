--Once you have added dependency 'X' to your dependencies in your 
--'Project.lua' file, simply add a dependency as follows:
-- local X = require("X")

local C = terralib.includecstring [[
   #include <stdio.h>
]]

local luafun = {}

terra luafun.hello()
    C.printf("Hello world!. Greetings from Terra luafun.\n")
end

return luafun