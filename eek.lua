print("USE INF YIELDS FLOAT")
function autofarm()
	for c,da in next, workspace.Alive:GetDescendants() do
		if (da:FindFirstChildOfClass("Humanoid")) then
			if da.Name == "Big Hoss" then 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = da.HumanoidRootPart.CFrame + Vector3.new(0,9,0)
			end
		end
	end
end

function nclip()
	game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end


game:GetService"RunService".Stepped:connect(function()
	autofarm();
	rot();
	nclip();
end)
