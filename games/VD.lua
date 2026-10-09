local _IN=Instance.new;local _C3=Color3.fromRGB;local _U2=UDim2.new;local _UD=UDim.new;local _V2=Vector2.new;local _CS=ColorSequence.new;local _CSK=ColorSequenceKeypoint.new;local _TIN=TweenInfo.new;local _EF=Enum.Font;local _ESS=Enum.EasingStyle;local _ESD=Enum.EasingDirection;local _EAS=Enum.ApplyStrokeMode
local _CF = { discordLink = "https://discord.gg/asFcSTrEtw", accent = _C3(255, 255, 255), discordBlue = _C3(88, 101, 242), logoAsset = "rbxassetid://84034353458936", useBlur = true, displayOrder = 100, }
local _TH = { bg = _C3(17, 17, 19), surface = _C3(24, 24, 28), surfaceAlt = _C3(34, 34, 40), surfaceBtn = _C3(28, 28, 28), border = _C3(46, 46, 54), borderSoft = _C3(38, 38, 44), text = _C3(240, 240, 245), muted = _C3(160, 162, 170), faint = _C3(122, 124, 132), radius = { sm = 6, md = 8, lg = 10, xl = 16 }, fontTitle = _EF.GothamBold, fontBody = _EF.Gotham, motion = { fast = 0.12, normal = 0.2, slow = 0.35 }, }
local _LD = { ID = { title = "BOLONG-HUB", subtitle = "Discord Gate", badge = "GET SCRIPT", desc = "Script BolongHub terbaru hanya dibagikan di Discord resmi kami.\nJoin server sekarang untuk mendapatkan link script.", warnTitle = "LINK SCRIPT HANYA DI DISCORD RESMI", warnText = "Mudah banget! Cukup join Discord resmi BolongHub, lalu cek channel #get-script untuk mendapatkan link script terbaru. Hindari sumber yang tidak resmi demi keamanan akunmu.", discord = "Join Discord", copied = "Link Disalin ke Clipboard!", copiedNote = "Buka browser & paste link-nya", langBtn = "EN", noClip = "Fungsi setclipboard tidak tersedia di executor ini.", toastTitle = "BolongHub", toastDesc = "Discord Gate", toastCopy = "Link Discord disalin ke clipboard.", toastJoin = "Setelah join, ambil link script di channel #get-script.", toastFail = "Gagal", }, EN = { title = "BOLONG-HUB", subtitle = "Discord Gate", badge = "GET SCRIPT", desc = "The latest BolongHub script is only shared in our official Discord.\nJoin the server now to get the script link.", warnTitle = "SCRIPT LINK IS ONLY IN THE OFFICIAL DISCORD", warnText = "Easy! Just join the official BolongHub Discord, then check the #get-script channel to get the latest script link. Avoid unofficial sources to keep your account safe.", discord = "Join Discord", copied = "Link Copied to Clipboard!", copiedNote = "Open your browser & paste the link", langBtn = "ID", noClip = "The setclipboard function is not available on this executor.", toastTitle = "BolongHub", toastDesc = "Discord Gate", toastCopy = "Discord link copied to clipboard.", toastJoin = "After joining, grab the script link in the #get-script channel.", toastFail = "Failed", }, }
local function _CL()
local genv = (getgenv and getgenv()) or _G
return genv.BolongDiscordGateLang == "EN" and "EN" or "ID"
end
local function _SL(code)
local genv = (getgenv and getgenv()) or _G
genv.BolongDiscordGateLang = code
end
local _PL = game:GetService("Players")
local _TS = game:GetService("TweenService")
local _RS = game:GetService("RunService")
local _LT = game:GetService("Lighting")
local _LP = _PL.LocalPlayer
local function _AC(gui, radius)
local c = _IN("UICorner")
c.CornerRadius = _UD(0, radius or 6)
c.Parent = gui
return c
end
local function _AS(gui, color, thickness, transparency)
local s = _IN("UIStroke")
s.Color = color or _TH.border
s.Thickness = thickness or 1
s.ApplyStrokeMode = _EAS.Border
if transparency ~= nil then s.Transparency = transparency end
s.Parent = gui
return s
end
local function _SP(gui)
local ok, coreGui = pcall(function()
return game:GetService("CoreGui")
end)
if ok and coreGui then
gui.Parent = coreGui
return
end
pcall(function()
gui.Parent = _LP:WaitForChild("PlayerGui")
end)
end
local _SG = _IN("ScreenGui")
_SG.Name = "BolongDiscordGate"
_SG.ResetOnSpawn = false
_SG.IgnoreGuiInset = true
_SG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_SG.DisplayOrder = _CF.displayOrder
_SP(_SG)
local _OVL = _IN("Frame")
_OVL.BackgroundColor3 = _C3(7, 7, 8)
_OVL.BorderSizePixel = 0
_OVL.ZIndex = 0
_OVL.Size = _U2(1, 0, 1, 0)
_OVL.Parent = _SG
local _OG = _IN("UIGradient")
_OG.Rotation = 180
_OG.Color = _CS({ _CSK(0, _C3(7, 7, 8)), _CSK(1, _C3(15, 15, 17)), })
_OG.Parent = _OVL
local _BLR
if _CF.useBlur then
local ok = pcall(function()
_BLR = _IN("BlurEffect")
_BLR.Size = 0
_BLR.Parent = _LT
end)
if ok and _BLR then
pcall(function()
_TS:Create(_BLR, _TIN(_TH.motion.slow, _ESS.Quad, _ESD.Out), { Size = 12 }):Play()
end)
end
end
local _CSZ = _U2(0, 400, 0, 300)
local _SHD = _IN("Frame")
_SHD.AnchorPoint = _V2(0.5, 0.5)
_SHD.BackgroundTransparency = 1
_SHD.BorderSizePixel = 0
_SHD.Position = _U2(0.5, 0, 0.5, 0)
_SHD.Size = _CSZ
_SHD.ZIndex = 1
_SHD.Parent = _SG
local _SHW = _IN("ImageLabel")
_SHW.Image = "rbxassetid://6015897843"
_SHW.ImageColor3 = _C3(0, 0, 0)
_SHW.ImageTransparency = 0.45
_SHW.ScaleType = Enum.ScaleType.Slice
_SHW.SliceCenter = Rect.new(49, 49, 450, 450)
_SHW.AnchorPoint = _V2(0.5, 0.5)
_SHW.BackgroundTransparency = 1
_SHW.BorderSizePixel = 0
_SHW.Position = _U2(0.5, 0, 0.5, 0)
_SHW.Size = _U2(1, 46, 1, 46)
_SHW.Parent = _SHD
local _CSC = _IN("UIScale")
_CSC.Scale = 0.92
_CSC.Parent = _SHD
local _MC = _IN("Frame")
_MC.BackgroundColor3 = _TH.surface
_MC.BorderSizePixel = 0
_MC.ClipsDescendants = true
_MC.AnchorPoint = _V2(0.5, 0.5)
_MC.Position = _U2(0.5, 0, 0.5, 0)
_MC.Size = _U2(1, 0, 1, 0)
_MC.ZIndex = 2
_MC.Parent = _SHD
_AC(_MC, _TH.radius.xl)
_AS(_MC, _TH.border, 1)
local _LGI = _IN("ImageLabel")
_LGI.Image = _CF.logoAsset
_LGI.BackgroundTransparency = 1
_LGI.BorderSizePixel = 0
_LGI.Position = _U2(0, 18, 0, 10)
_LGI.Size = _U2(0, 40, 0, 40)
_LGI.ScaleType = Enum.ScaleType.Fit
_LGI.ZIndex = 4
_LGI.Parent = _MC
_AC(_LGI, 12)
local _LGG = _IN("Frame")
_LGG.BackgroundColor3 = _C3(255, 255, 255)
_LGG.BackgroundTransparency = 0.9
_LGG.BorderSizePixel = 0
_LGG.Position = _U2(0, 14, 0, 6)
_LGG.Size = _U2(0, 48, 0, 48)
_LGG.ZIndex = 3
_LGG.Parent = _MC
_AC(_LGG, 16)
local _TTL = _IN("TextLabel")
_TTL.BackgroundTransparency = 1
_TTL.Text = _LD[_CL()].title
_TTL.TextColor3 = _TH.text
_TTL.TextSize = 16
_TTL.Font = _TH.fontTitle
_TTL.TextXAlignment = Enum.TextXAlignment.Left
_TTL.TextYAlignment = Enum.TextYAlignment.Center
_TTL.Position = _U2(0, 76, 0, 12)
_TTL.Size = _U2(1, -180, 0, 22)
_TTL.ZIndex = 4
_TTL.Parent = _MC
local _TDD = _IN("ImageLabel")
_TDD.Image = "rbxassetid://6023426926"
_TDD.ImageColor3 = _CF.accent
_TDD.BackgroundTransparency = 1
_TDD.AnchorPoint = _V2(0, 0.5)
_TDD.Position = _U2(0, 76, 0, 40)
_TDD.Size = _U2(0, 5, 0, 5)
_TDD.ZIndex = 4
_TDD.Parent = _MC
local _SUB = _IN("TextLabel")
_SUB.BackgroundTransparency = 1
_SUB.Text = _LD[_CL()].subtitle
_SUB.TextColor3 = _TH.muted
_SUB.TextSize = 11
_SUB.Font = _TH.fontBody
_SUB.TextXAlignment = Enum.TextXAlignment.Left
_SUB.TextYAlignment = Enum.TextYAlignment.Center
_SUB.Position = _U2(0, 88, 0, 32)
_SUB.Size = _U2(1, -180, 0, 16)
_SUB.ZIndex = 4
_SUB.Parent = _MC
local _BGE = _IN("Frame")
_BGE.BackgroundColor3 = _CF.accent
_BGE.BackgroundTransparency = 0.9
_BGE.BorderSizePixel = 0
_BGE.Position = _U2(1, -116, 0, 38)
_BGE.Size = _U2(0, 98, 0, 22)
_BGE.ZIndex = 4
_BGE.Parent = _MC
_AC(_BGE, 11)
_AS(_BGE, _CF.accent:lerp(_TH.border, 0.45), 1)
local _BDT = _IN("Frame")
_BDT.BackgroundColor3 = _CF.accent
_BDT.BorderSizePixel = 0
_BDT.AnchorPoint = _V2(0, 0.5)
_BDT.Position = _U2(0, 9, 0.5, 0)
_BDT.Size = _U2(0, 6, 0, 6)
_BDT.ZIndex = 5
_BDT.Parent = _BGE
_AC(_BDT, 3)
local _BTX = _IN("TextLabel")
_BTX.BackgroundTransparency = 1
_BTX.Text = _LD[_CL()].badge
_BTX.TextColor3 = _CF.accent
_BTX.TextSize = 8
_BTX.Font = _TH.fontTitle
_BTX.TextXAlignment = Enum.TextXAlignment.Left
_BTX.TextYAlignment = Enum.TextYAlignment.Center
_BTX.Position = _U2(0, 20, 0, 0)
_BTX.Size = _U2(1, -24, 1, 0)
_BTX.ZIndex = 5
_BTX.Parent = _BGE
local _INP = _IN("Frame")
_INP.BackgroundColor3 = _TH.surfaceAlt
_INP.BorderSizePixel = 0
_INP.Position = _U2(0, 18, 0, 70)
_INP.Size = _U2(1, -36, 0, 84)
_INP.ZIndex = 4
_INP.Parent = _MC
_AC(_INP, _TH.radius.lg)
_AS(_INP, _TH.borderSoft, 1)
local _DL = _IN("TextLabel")
_DL.BackgroundTransparency = 1
_DL.Text = _LD[_CL()].desc
_DL.TextColor3 = _TH.text
_DL.TextSize = 13
_DL.Font = _TH.fontBody
_DL.TextWrapped = true
_DL.TextXAlignment = Enum.TextXAlignment.Left
_DL.TextYAlignment = Enum.TextYAlignment.Top
_DL.Position = _U2(0, 16, 0, 15)
_DL.Size = _U2(1, -88, 0, 54)
_DL.ZIndex = 5
_DL.Parent = _INP
local _SPH = _IN("Frame")
_SPH.BackgroundTransparency = 1
_SPH.BorderSizePixel = 0
_SPH.AnchorPoint = _V2(1, 0)
_SPH.Position = _U2(1, -20, 0, 22)
_SPH.Size = _U2(0, 40, 0, 40)
_SPH.ZIndex = 5
_SPH.Rotation = 0
_SPH.Parent = _INP
local _SPR = _IN("Frame")
_SPR.BackgroundTransparency = 1
_SPR.BorderSizePixel = 0
_SPR.Position = _U2(0, 4, 0, 4)
_SPR.Size = _U2(1, -8, 1, -8)
_SPR.ZIndex = 5
_SPR.Parent = _SPH
_AC(_SPR, 100)
_AS(_SPR, _TH.border, 2)
local _SPD = _IN("Frame")
_SPD.BackgroundColor3 = _CF.accent
_SPD.BorderSizePixel = 0
_SPD.AnchorPoint = _V2(0.5, 0.5)
_SPD.Position = _U2(0.5, 0, 0, 5)
_SPD.Size = _U2(0, 8, 0, 8)
_SPD.ZIndex = 6
_SPD.Parent = _SPR
_AC(_SPD, 4)
local _WB = _IN("Frame")
_WB.BackgroundColor3 = _TH.surfaceAlt
_WB.BorderSizePixel = 0
_WB.Position = _U2(0, 18, 0, 162)
_WB.Size = _U2(1, -36, 0, 74)
_WB.ZIndex = 4
_WB.Parent = _MC
_AC(_WB, _TH.radius.lg)
_AS(_WB, _TH.borderSoft, 1)
local _WBR = _IN("Frame")
_WBR.BackgroundColor3 = _CF.discordBlue
_WBR.BorderSizePixel = 0
_WBR.Size = _U2(0, 3, 1, 0)
_WBR.ZIndex = 5
_WBR.Parent = _WB
_AC(_WBR, 2)
local _WIC = _IN("TextLabel")
_WIC.BackgroundTransparency = 1
_WIC.Text = "📢"
_WIC.TextSize = 18
_WIC.Font = _EF.SourceSans
_WIC.TextXAlignment = Enum.TextXAlignment.Center
_WIC.TextYAlignment = Enum.TextYAlignment.Center
_WIC.AnchorPoint = _V2(0, 0.5)
_WIC.Position = _U2(0, 13, 0.5, 0)
_WIC.Size = _U2(0, 18, 0, 18)
_WIC.ZIndex = 5
_WIC.Parent = _WB
local _WT = _IN("TextLabel")
_WT.BackgroundTransparency = 1
_WT.Text = _LD[_CL()].warnTitle
_WT.TextColor3 = _TH.text
_WT.TextSize = 12
_WT.Font = _TH.fontTitle
_WT.TextXAlignment = Enum.TextXAlignment.Left
_WT.TextYAlignment = Enum.TextYAlignment.Top
_WT.Position = _U2(0, 40, 0, 13)
_WT.Size = _U2(1, -54, 0, 16)
_WT.ZIndex = 5
_WT.Parent = _WB
local _WX = _IN("TextLabel")
_WX.BackgroundTransparency = 1
_WX.Text = _LD[_CL()].warnText
_WX.TextColor3 = _TH.muted
_WX.TextSize = 11
_WX.Font = _TH.fontBody
_WX.TextWrapped = true
_WX.TextXAlignment = Enum.TextXAlignment.Left
_WX.TextYAlignment = Enum.TextYAlignment.Top
_WX.Position = _U2(0, 40, 0, 31)
_WX.Size = _U2(1, -55, 0, 38)
_WX.ZIndex = 5
_WX.Parent = _WB
local _DIV = _IN("Frame")
_DIV.BackgroundColor3 = _TH.border
_DIV.BorderSizePixel = 0
_DIV.AnchorPoint = _V2(0, 1)
_DIV.Position = _U2(0, 0, 1, -62)
_DIV.Size = _U2(1, 0, 0, 1)
_DIV.ZIndex = 4
_DIV.Parent = _MC
local _DB = _IN("TextButton")
_DB.Text = _LD[_CL()].discord
_DB.TextColor3 = _C3(255, 255, 255)
_DB.TextSize = 13
_DB.Font = _TH.fontTitle
_DB.AutoButtonColor = false
_DB.BackgroundColor3 = _CF.discordBlue
_DB.BorderSizePixel = 0
_DB.Position = _U2(0, 16, 1, -50)
_DB.Size = _U2(1, -32, 0, 38)
_DB.ZIndex = 4
_DB.Parent = _MC
_AC(_DB, _TH.radius.md)
_AS(_DB, _CF.discordBlue:lerp(_TH.border, 0.35), 1)
local _DBS = _IN("UIScale")
_DBS.Scale = 1
_DBS.Parent = _DB
local _LB = _IN("TextButton")
_LB.Text = "🌐 " .. _LD[_CL()].langBtn
_LB.TextColor3 = _CF.accent
_LB.TextSize = 11
_LB.Font = _TH.fontTitle
_LB.AutoButtonColor = false
_LB.BackgroundColor3 = _TH.surfaceAlt
_LB.BorderSizePixel = 0
_LB.Position = _U2(1, -80, 0, 9)
_LB.Size = _U2(0, 64, 0, 24)
_LB.ZIndex = 4
_LB.Parent = _MC
_AC(_LB, _TH.radius.lg)
_AS(_LB, _CF.accent:lerp(_TH.border, 0.35), 1, 0)
local _LBS = _IN("UIScale")
_LBS.Scale = 1
_LBS.Parent = _LB
local _NH = _IN("Frame")
_NH.BackgroundTransparency = 1
_NH.BorderSizePixel = 0
_NH.AnchorPoint = _V2(1, 0)
_NH.Position = _U2(1, -16, 0, 16)
_NH.Size = _U2(0, 320, 0, 260)
_NH.ZIndex = 8
_NH.Visible = true
_NH.Parent = _SG
local _NLY = _IN("UIListLayout")
_NLY.SortOrder = Enum.SortOrder.LayoutOrder
_NLY.VerticalAlignment = Enum.VerticalAlignment.Top
_NLY.HorizontalAlignment = Enum.HorizontalAlignment.Right
_NLY.Padding = _UD(0, 8)
_NLY.Parent = _NH
local function _TST(content, title, desc, color, delay)
task.spawn(function()
if not _NH or not _NH.Parent then return end
local measure = _IN("TextLabel")
measure.BackgroundTransparency = 1
measure.TextWrapped = true
measure.Size = _U2(0, 264, 0, 14)
measure.TextSize = 12
measure.Font = _TH.fontBody
measure.Text = content or ""
measure.Parent = _NH
local contentHeight = math.max(measure.TextBounds.Y + 40, 58)
measure:Destroy()
local frame = _IN("Frame")
frame.BackgroundColor3 = _TH.surface
frame.BorderSizePixel = 0
frame.Size = _U2(0, 300, 0, contentHeight)
frame.ZIndex = 9
frame.Name = "Notify"
frame.Parent = _NH
_AC(frame, _TH.radius.md)
_AS(frame, _TH.border, 1)
local cardScale2 = _IN("UIScale")
cardScale2.Scale = 0.92
cardScale2.Parent = frame
local topLine = _IN("Frame")
topLine.BackgroundColor3 = color or _CF.accent
topLine.BorderSizePixel = 0
topLine.Size = _U2(0, 3, 1, 0)
topLine.ZIndex = 10
topLine.Parent = frame
_AC(topLine, 2)
local nTitle = _IN("TextLabel")
nTitle.BackgroundTransparency = 1
nTitle.Position = _U2(0, 14, 0, 8)
nTitle.Size = _U2(1, -24, 0, 16)
nTitle.Text = title or "BolongHub"
nTitle.TextColor3 = _TH.text
nTitle.TextSize = 12
nTitle.Font = _TH.fontTitle
nTitle.TextXAlignment = Enum.TextXAlignment.Left
nTitle.ZIndex = 10
nTitle.Parent = frame
local nDesc = _IN("TextLabel")
nDesc.BackgroundTransparency = 1
nDesc.Position = _U2(0, 14, 0, 26)
nDesc.Size = _U2(1, -28, 1, -34)
nDesc.Text = (desc and desc ~= "" and (desc .. " • ") or "") .. (content or "")
nDesc.TextColor3 = _TH.muted
nDesc.TextSize = 12
nDesc.Font = _TH.fontBody
nDesc.TextWrapped = true
nDesc.TextXAlignment = Enum.TextXAlignment.Left
nDesc.TextYAlignment = Enum.TextYAlignment.Top
nDesc.ZIndex = 10
nDesc.Parent = frame
_TS:Create(frame, _TIN(_TH.motion.normal, _ESS.Quad, _ESD.Out), { BackgroundTransparency = 1 }):Play()
frame.BackgroundTransparency = 1
_TS:Create(cardScale2, _TIN(_TH.motion.normal, _ESS.Quad, _ESD.Out), { Scale = 1 }):Play()
task.delay(0.05, function()
pcall(function()
_TS:Create(frame, _TIN(_TH.motion.fast), { BackgroundTransparency = 0 }):Play()
end)
end)
task.wait(delay or 3)
pcall(function()
_TS:Create(frame, _TIN(_TH.motion.normal, _ESS.Quad, _ESD.In), { BackgroundTransparency = 1 }):Play()
end)
task.wait(_TH.motion.normal)
frame:Destroy()
end)
end
local function _SLG(code)
code = code == "EN" and "EN" or "ID"
_SL(code)
local L = _LD[code]
_TTL.Text = L.title
_SUB.Text = L.subtitle
_BTX.Text = L.badge
_DL.Text = L.desc
_WT.Text = L.warnTitle
_WX.Text = L.warnText
_DB.Text = L.discord
_LB.Text = "🌐 " .. L.langBtn
end
local function _GVS()
local cam = workspace.CurrentCamera
if cam then
local s = cam.ViewportSize
if s and s.X > 0 and s.Y > 0 then return s end
end
return _V2(1920, 1080)
end
local function _LAY()
if not _SG or not _SG.Parent then return end
local vp = _GVS()
local baseW, baseH = _CSZ.X.Offset, _CSZ.Y.Offset
local scale = math.min( math.min(baseW, vp.X * 0.92) / baseW, math.min(baseH, vp.Y * 0.92) / baseH
)
if scale <= 0 or scale ~= scale then scale = 1 end
_CSC.Scale = scale
_SHD.Size = _CSZ
end
_LAY()
_RS.RenderStepped:Connect(function()
if _SG and _SG.Parent then
_LAY()
end
end)
_OVL.BackgroundTransparency = 1
_TS:Create(_OVL, _TIN(_TH.motion.slow, _ESS.Quad, _ESD.Out), { BackgroundTransparency = 0.5 }):Play()
_TS:Create(_CSC, _TIN(_TH.motion.slow, _ESS.Quad, _ESD.Out), { Scale = 1 }):Play()
task.spawn(function()
while _SG and _SG.Parent do
pcall(function()
_SPH.Rotation = 360
local tw = _TS:Create(_SPH, _TIN(0.9, _ESS.Linear, _ESD.InOut), { Rotation = 0 })
tw:Play()
task.wait(0.9)
end)
end
end)
task.spawn(function()
while _SG and _SG.Parent do
pcall(function()
_TS:Create(_BDT, _TIN(_TH.motion.slow, _ESS.Quad, _ESD.InOut), { BackgroundTransparency = 0 }):Play()
task.wait(_TH.motion.slow)
_TS:Create(_BDT, _TIN(_TH.motion.slow, _ESS.Quad, _ESD.InOut), { BackgroundTransparency = 0.7 }):Play()
task.wait(_TH.motion.slow)
end)
end
end)
task.spawn(function()
while _SG and _SG.Parent do
pcall(function()
_TS:Create(_LGG, _TIN(1.2, _ESS.Quad, _ESD.InOut), { BackgroundTransparency = 0.84 }):Play()
task.wait(1.2)
_TS:Create(_LGG, _TIN(1.2, _ESS.Quad, _ESD.InOut), { BackgroundTransparency = 0.94 }):Play()
task.wait(1.2)
end)
end
end)
local function _BH(btn, baseColor, hoverColor, scale)
btn.MouseEnter:Connect(function()
pcall(function()
_TS:Create(btn, _TIN(_TH.motion.fast), { BackgroundColor3 = hoverColor }):Play()
_TS:Create(scale, _TIN(_TH.motion.fast), { Scale = 1.02 }):Play()
end)
end)
btn.MouseLeave:Connect(function()
pcall(function()
_TS:Create(btn, _TIN(_TH.motion.fast), { BackgroundColor3 = baseColor }):Play()
_TS:Create(scale, _TIN(_TH.motion.fast), { Scale = 1 }):Play()
end)
end)
end
local _LHV = _CF.accent:lerp(_CF.discordBlue, 0.85)
_BH(_DB, _CF.discordBlue, _CF.discordBlue:lerp(_C3(255, 255, 255), 0.12), _DBS)
_BH(_LB, _TH.surfaceAlt, _LHV, _LBS)
local _CPS = false
_DB.MouseButton1Click:Connect(function()
if _CPS then return end
_CPS = true
local L = _LD[_CL()]
if type(setclipboard) == "function" then
local ok = pcall(setclipboard, _CF.discordLink)
if ok then
_DB.Text = L.copied
pcall(function()
_TS:Create(_DB, _TIN(_TH.motion.normal, _ESS.Quad, _ESD.Out), { BackgroundColor3 = _CF.accent:lerp(_C3(255, 255, 255), 0.2) }):Play()
end)
_TST(L.copiedNote, L.toastTitle, L.toastJoin, _CF.accent)
task.wait(2)
_DB.Text = L.discord
pcall(function()
_TS:Create(_DB, _TIN(_TH.motion.normal, _ESS.Quad, _ESD.Out), { BackgroundColor3 = _CF.discordBlue }):Play()
end)
else
_TST(L.toastFail .. ": " .. (L.noClip or _CF.discordLink), L.toastTitle, L.toastDesc, _C3(255, 90, 90))
task.wait(0.1)
end
else
_TST(L.noClip, L.toastTitle, L.toastDesc, _C3(255, 170, 0))
task.wait(0.1)
end
_CPS = false
end)
local _LPL = false
_LB.MouseButton1Click:Connect(function()
local next = _CL() == "EN" and "ID" or "EN"
_SLG(next)
pcall(function()
_TS:Create(_LB, _TIN(_TH.motion.fast), { BackgroundColor3 = _LHV }):Play()
end)
task.wait(_TH.motion.fast)
pcall(function()
_TS:Create(_LB, _TIN(_TH.motion.fast), { BackgroundColor3 = _TH.surfaceAlt }):Play()
_TS:Create(_LBS, _TIN(_TH.motion.fast), { Scale = 1.06 }):Play()
end)
task.wait(_TH.motion.fast)
pcall(function()
_TS:Create(_LBS, _TIN(_TH.motion.fast), { Scale = 1 }):Play()
end)
end)
_SG.Destroying:Connect(function()
if _BLR then
pcall(function()
_BLR:Destroy()
end)
end
end)