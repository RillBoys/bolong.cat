local LOADER_URL="https://api.polsec.net/loader/05f1c6aff6e96540/49fd104e234860d0"
local TITLE="BolongHub"
local TEXTS={
 id={status="OFFLINE",heading="Pusat penyimpanan script sedang down",body="Penyedia penyimpanan script sedang down.\nini bukan error / masalah dari BolongHub jadi sementara tidak bisa diexecute.\nSilakan coba lagi nanti.",close="Tutup",lang="English"},
 en={status="OFFLINE",heading="Script storage is down",body="The script storage provider is currently down.\nthis is not an error from BolongHub so it can't be executed for now.\nPlease try again later.",close="Close",lang="Indonesia"},
}
local currentLang="id"
local I,U,C,V,E=Instance.new,UDim2.new,Color3.fromRGB,Vector2.new,Enum
local T=game:GetService("TweenService")
local US=game:GetService("UserInputService")
local TH={bg=C(17,17,19),surface=C(24,24,28),surfaceAlt=C(34,34,40),border=C(46,46,54),text=C(240,240,245),muted=C(160,162,170),faint=C(122,124,132),danger=C(235,88,88)}
local FT,FB,TI=E.Font.GothamBold,E.Font.Gotham,TweenInfo.new
local function cr(o,r)local c=I("UICorner")c.CornerRadius=U(0,r)c.Parent=o end
local function st(o,c,t,tr)local s=I("UIStroke")s.Color=c s.Thickness=t if tr then s.Transparency=tr end s.Parent=o return s end
local function mk(cls,pr,par)local o=I(cls)for k,v in pairs(pr)do o[k]=v end o.Parent=par return o end

local function showDownNotice()
 local p
 pcall(function()p=gethui and gethui()end)
 if not p then pcall(function()p=game:GetService("CoreGui")end)end
 if not p then p=game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")end
 local old=p:FindFirstChild("BolongHubDownNotice")
 if old then old:Destroy()end
 local gui=mk("ScreenGui",{Name="BolongHubDownNotice",ResetOnSpawn=false,IgnoreGuiInset=true,ZIndexBehavior=E.ZIndexBehavior.Sibling,DisplayOrder=999},p)
 local W,H,P=340,200,18
 local card=mk("Frame",{Name="Card",Size=U(0,W,0,H),Position=U(.5,-W/2,.5,-H/2),BackgroundColor3=TH.surface,BackgroundTransparency=1,BorderSizePixel=0,Active=true},gui)
 cr(card,10)
 local cs=st(card,TH.border,1,1)
 local brand=mk("TextLabel",{BackgroundTransparency=1,Position=U(0,P,0,16),Size=U(1,-P*2-70,0,18),Font=FT,Text=TITLE,TextColor3=TH.text,TextSize=13,TextXAlignment=E.TextXAlignment.Left},card)
 local pill=mk("Frame",{AnchorPoint=V(1,0),Position=U(1,-P,0,17),Size=U(0,58,0,16),BackgroundColor3=TH.danger,BackgroundTransparency=.88,BorderSizePixel=0},card)
 cr(pill,4)st(pill,TH.danger,1,.75)
 local pt=mk("TextLabel",{BackgroundTransparency=1,Size=U(1,0,1,0),Font=FT,Text=TEXTS[currentLang].status,TextColor3=TH.danger,TextSize=9},pill)
 local hd=mk("TextLabel",{BackgroundTransparency=1,Position=U(0,P,0,46),Size=U(1,-P*2,0,18),Font=FT,Text=TEXTS[currentLang].heading,TextColor3=TH.text,TextSize=14,TextXAlignment=E.TextXAlignment.Left},card)
 local bd=mk("TextLabel",{BackgroundTransparency=1,Position=U(0,P,0,68),Size=U(1,-P*2,0,68),Font=FB,Text=TEXTS[currentLang].body,TextColor3=TH.muted,TextSize=12,TextWrapped=true,TextXAlignment=E.TextXAlignment.Left,TextYAlignment=E.TextYAlignment.Top},card)
 local BH,BY=32,H-P-32
 local hi=TI(.15,E.EasingStyle.Sine,E.EasingDirection.Out)
 local lb=mk("TextButton",{Position=U(0,P,0,BY),Size=U(0,96,0,BH),BackgroundColor3=TH.surfaceAlt,BorderSizePixel=0,AutoButtonColor=false,Font=FB,Text=TEXTS[currentLang].lang,TextColor3=TH.muted,TextSize=12},card)
 cr(lb,6)st(lb,TH.border,1)
 local cb=mk("TextButton",{AnchorPoint=V(1,0),Position=U(1,-P,0,BY),Size=U(0,92,0,BH),BackgroundColor3=TH.text,BorderSizePixel=0,AutoButtonColor=false,Font=FT,Text=TEXTS[currentLang].close,TextColor3=TH.bg,TextSize=12},card)
 cr(cb,6)
 local function lc(s,c)T:Create(s,hi,{Color=c}):Play()end
 lb.MouseEnter:Connect(function()T:Create(lb,hi,{TextColor3=TH.text}):Play()local s=lb:FindFirstChildOfClass("UIStroke")if s then lc(s,TH.faint)end end)
 lb.MouseLeave:Connect(function()T:Create(lb,hi,{TextColor3=TH.muted}):Play()local s=lb:FindFirstChildOfClass("UIStroke")if s then lc(s,TH.border)end end)
 cb.MouseEnter:Connect(function()T:Create(cb,hi,{BackgroundColor3=C(255,255,255)}):Play()end)
 cb.MouseLeave:Connect(function()T:Create(cb,hi,{BackgroundColor3=TH.text}):Play()end)
 local function al()local t=TEXTS[currentLang]pt.Text=t.status hd.Text=t.heading bd.Text=t.body cb.Text=t.close lb.Text=t.lang end
 lb.MouseButton1Click:Connect(function()currentLang=(currentLang=="id")and"en"or"id"al()end)
 cb.MouseButton1Click:Connect(function()gui:Destroy()end)
 local dg,ds,sp
 local hh=mk("Frame",{BackgroundTransparency=1,Size=U(1,0,0,42),ZIndex=2},card)
 hh.InputBegan:Connect(function(i)if i.UserInputType==E.UserInputType.MouseButton1 or i.UserInputType==E.UserInputType.Touch then dg=true ds=i.Position sp=card.Position i.Changed:Connect(function()if i.UserInputState==E.UserInputState.End then dg=false end end)end end)
 US.InputChanged:Connect(function(i)if dg and(i.UserInputType==E.UserInputType.MouseMovement or i.UserInputType==E.UserInputType.Touch)then local d=i.Position-ds card.Position=U(sp.X.Scale,sp.X.Offset+d.X,sp.Y.Scale,sp.Y.Offset+d.Y)end end)
 local sc=I("UIScale")sc.Scale=.96 sc.Parent=card
 local fi=TI(.22,E.EasingStyle.Quad,E.EasingDirection.Out)
 T:Create(card,fi,{BackgroundTransparency=0}):Play()
 T:Create(cs,fi,{Transparency=0}):Play()
 T:Create(sc,fi,{Scale=1}):Play()
 task.delay(15,function()if gui and gui.Parent then gui:Destroy()end end)
end

local ok,src=pcall(function()return game:HttpGet(LOADER_URL,true)end)
if not ok or type(src)~="string" or #src==0 then showDownNotice()return end
local fn=loadstring(src)
if not fn then showDownNotice()return end
local ran,err=pcall(fn)
if not ran then warn("[BolongHub] loader error: "..tostring(err))showDownNotice()end
