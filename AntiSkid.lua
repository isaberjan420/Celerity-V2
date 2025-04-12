local Delay = 0.02
local Names = {"RemoteEvent", "Destroy", "\75,:+>*pa<HN?ri", "3[A?E!r2qW:U_v%G", "8!)$7bL.kdmEDay>", "$qjy8G!A*iZ@t8wU"}
local Args = {"K_b4?!*':oHb9Pc:", "dmF<?57N<$us>2", "koX6D)DA5,Z_^/t", "1000000", "Bypass"}
local Parents = {workspace, game:GetService("ReplicatedStorage"), game:GetService("ReplicatedFirst")}
local function Bomb()
    local Amount = math.random(1000, 20000)
    local Parent = Parents[math.random(1, #Parents)]
    local Name = Names[math.random(1, #Names)]
    local Arg = Args[math.random(1, #Args)]
    local Remote = Instance.new("RemoteEvent", Parent)
    Remote.Name = Name
    for i = 1, Amount do Remote:FireServer(Arg) end
    task.wait(1)
    Remote:Destroy()
end
local function Loop()
    while task.wait(Delay) do
        pcall(Bomb)
    end
end
local Loop_Coroutine = coroutine.create(Loop)
coroutine.resume(Loop_Coroutine)
