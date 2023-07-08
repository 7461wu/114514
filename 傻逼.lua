local function notify(title,text,time)
	game.StarterGui:SetCore("SendNotification", {
		Title = title;
		Text = text;
		Icon = nil;
		Duration = time
	})
end
local function AntiAFK()
    game:GetService('Players').LocalPlayer.Idled:Connect(function()
        notify('反挂机', '反挂机已生效', 4)
        game:GetService('VirtualUser'):Button2Down(Vector2.new(0, 0), game:GetService('Workspace').CurrentCamera.CFrame);
        wait(.325)
        game:GetService('VirtualUser'):Button2Up(Vector2.new(0, 0), game:GetService('Workspace').CurrentCamera.CFrame);
    end);
end;
AntiAFK();
notify("红脚本", "╭∩╮😠╭∩╮",10)
notify('反挂机', '反挂机已开启', 4) 

	local function callback(Text)
		if Text == "确定" then
			local amountoftimes = 0
repeat
  getgenv().AutoTeleport = true --I didnt make this serverhop script either, I just put it together in a gui credit to https://v3rmillion.net/showthread.php?tid=1107863
  getgenv().DontTeleportTheSameNumber = true
  getgenv().CopytoClipboard = true

  if not game:IsLoaded() then
    print("Game is loading waiting...")
    repeat
      wait()
    until game:IsLoaded()
  end

  local maxplayers = math.huge
  local serversmaxplayer;
  local goodserver;
  local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"

  function serversearch()
    for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
      if type(v) == "table" and maxplayers > v.playing then
        serversmaxplayer = v.maxPlayers
        maxplayers = v.playing
        goodserver = v.id
      end
    end
    print("Currently checking the servers with max this number of players : " .. maxplayers .. "")
  end

  function getservers()
    serversearch()
    for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
      if i == "nextPageCursor" then
        if gamelink:find("&cursor=") then
          local a = gamelink:find("&cursor=")
          local b = gamelink:sub(a)
          gamelink = gamelink:gsub(b, "")
        end
        gamelink = gamelink .. "&cursor=" ..v
        getservers()
      end
    end
  end

  getservers()

  print("All of the servers are searched")
  print("Server : " .. goodserver .. " Players : " .. maxplayers .. "/" .. serversmaxplayer .. "")
  if CopytoClipboard then
    setclipboard(goodserver)
  end
  if AutoTeleport then
    if DontTeleportTheSameNumber then
      if #game:GetService("Players"):GetPlayers() - 1 == maxplayers then
        return warn("It has same number of players (except you)")
      elseif goodserver == game.JobId then
        return warn("Your current server is the most empty server atm")
      end
    end
    print("AutoTeleport is enabled. Teleporting to : " .. goodserver)
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
  end
  amountoftimes = amountoftimes + 1
until amountoftimes == 10

	
	   elseif Text == "取消" then
	   
		end
	   end
	   
	   local NotificationBindable = Instance.new("BindableFunction")
	   NotificationBindable.OnInvoke = callback
	   --
	   game.StarterGui:SetCore("SendNotification",  {
		Title = "红脚本";
		Text = "是否加入最小服务器";
		Icon = "";
		Duration = 5;
		Button1 = "确定";
		Button2 = "取消";
		Callback = NotificationBindable;
	   })
--我自己添加了一些通知并将踢人改成了通知
local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "确认身份",
    Text = "正在验证....",
    Duration = 5, --时间
})

local a=tostring(game.Players.LocalPlayer.Character);
if a=="Move_C"then
_G.f=true
else
end
if a=="fasjsjssjxj"then
_G.f=true
else
end
if a=="zhangganyu"then
_G.f=true
else
end
if a=="5133hehfy"then
_G.f=true
else
end
if a=="hguyhkhui"then
_G.f=true
else
end
if a=="wshjjbn"then
_G.f=true
else
end
if a=="gfzzmns"then
_G.f=true
else
end
if _G.f==true then
    local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "验证结果",
    Text = a.."验证身份成功",
    Duration = 5,
})
  wait(3) --等待三秒
if game.PlaceId == 13822889 then -- 伐木大亨
loadstring(game:HttpGet("https://raw.githubusercontent.com/7461wu/114514/main/hshhidjhe.lua"))()
end
    else --验证失败执行↓
setclipboard("811468839")
local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "验证失败",
    Text = "你并没有白名单已复制链接加入群获得白名单",
    Duration = 10, --时间
})
end
