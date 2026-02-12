local a,b={UseWorkspace=false,NoActors=false,FolderName='Sigma Spy',RepoUrl=
[[https://raw.githubusercontent.com/sobakadep/Sigma-Spy/refs/heads/main]],
ParserUrl=
[[https://raw.githubusercontent.com/sobakadep/Roblox-parser/refs/heads/main/dist/Main.luau]]
},{...}local c=b[1]if typeof(c)=='table'then for d,e in c do a[d]=e end end
local d,e=setmetatable({},{__index=function(d,e)local f=game:GetService(e)return
cloneref(f)end}),(function()end)()e:PushConfig(a)e:Init{Services=d}local f=e.
FolderName local g,h={Config=e:GetModule(`{f}/Config`,'Config'),ReturnSpoofs=e:
GetModule(`{f}/Return spoofs`,'Return Spoofs'),Configuration=a,Files=e,Process={
'base64','COMPILE: @lib/Process.lua'},Hook={'base64','COMPILE: @lib/Hook.lua'},
Flags={'base64','COMPILE: @lib/Flags.lua'},Ui={'base64','COMPILE: @lib/Ui.lua'},
Generation={'base64','COMPILE: @lib/Generation.lua'},Communication={'base64',
'COMPILE: @lib/Communication.lua'}},d.Players local i=e:LoadLibraries(g)local j,
k,l,m,n,o,p=i.Process,i.Hook,i.Ui,i.Generation,i.Communication,i.Config,e:
GetAsset('ProggyClean.ttf',true)local q=e:CreateFont('ProggyClean',p)l:
SetFontFile(q)j:CheckConfig(o)e:LoadModules(i,{Modules=i,Services=d})local r,s=l
:CreateMainWindow(),j:CheckIsSupported()if not s then r:Close()return end local
t,u=n:CreateChannel()n:AddCommCallback('QueueLog',function(...)l:QueueLog(...)
end)n:AddCommCallback('Print',function(...)l:ConsoleLog(...)end)local v=h.
LocalPlayer m:SetSwapsCallback(function(w)w:AddSwap(v,{String='LocalPlayer'})w:
AddSwap(v.Character,{String='Character',NextParent=v})end)l:CreateWindowContent(
r)l:SetCommChannel(u)l:BeginLogService()local w=e:MakeActorScript(g,t)k:
LoadHooks(w,t)local x=l:AskUser{Title='Enable function patches?',Content={
[[On some executors, function patches can prevent common detections that executor has]]
,
[[By enabling this, it MAY trigger hook detections in some games, this is why you are asked.]]
,"If it doesn't work, rejoin and press 'No'",'',
'(This does not affect game functionality)'},Options={'Yes','No'}}=='Yes'u:Fire(
'BeginHooks',{PatchFunctions=x})
