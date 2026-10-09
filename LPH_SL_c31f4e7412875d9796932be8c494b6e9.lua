-- generated using SL | Source Leak
-- https://discord.gg/x7YbZeezpm

if not game:IsLoaded() then
	game.Loaded:Wait()
end

local discord

do
	discord = "https://discord.gg/cokeboys"

	local function func1(param1)
		local tbl1 = {}

		local function func2(param2)
			if type(param2) == "function" then
				table.insert(tbl1, param2)
			end
		end

		func2(syn and syn.request)
		func2(http and http.request)
		func2(request)
		func2(http_request)

		for _, item2 in ipairs(tbl1) do
			local ok, result = pcall(item2, { Url = param1, Method = "GET" })
			if ok and type(result) == "string" and result ~= "" then
				return result
			end

			if ok and type(result) == "table" then
				local body = result.Body or result.body
				if type(body) == "string" and body ~= "" then
					return body
				end
			end
		end

		local ok, result = pcall(function()
			return game:GetService("HttpService"):GetAsync(param1, true)
		end)

		if ok then
			return result
		end
		return nil
	end

	local function func3()
		error("SL: this block could not be recovered")
	end

	local function func4()
		error("SL: this block could not be recovered")
	end

	local function func5(param3)
		local ok, result = pcall(readfile, param3)
		if ok then
			return result
		end
		return nil
	end

	local function func6(param4, param5)
		pcall(writefile, param4, param5)
	end

	local value1 = nil
	local value2 = nil
	local value3 = nil
	local flag1 = false

	local function func7(param6, param7, param8)
		value1 = param6
		value2 = param7
		value3 = param8
		getgenv().CokeboysScriptLoaded = true
		getgenv().__CokeboysLaunchInProgress = false
	end

	local cokeboysKeyValidationCleanup = _G.__CokeboysKeyValidationCleanup

	if type(cokeboysKeyValidationCleanup) == "function" then
		pcall(cokeboysKeyValidationCleanup)
	end

	local function func8()
		return true
	end

	local n = 0
	local value4 = nil
	local value5 = nil
	local cokeboysKeyAccessState = getgenv().__CokeboysKeyAccessState or {}
	getgenv().__CokeboysKeyAccessState = cokeboysKeyAccessState

	local function func9()
		local cokeboysRefreshHeaderKeyStatus = getgenv().__CokeboysRefreshHeaderKeyStatus

		if type(cokeboysRefreshHeaderKeyStatus) == "function" then
			pcall(cokeboysRefreshHeaderKeyStatus)
		end

		local cokeboysRefreshKeyManagementStat = getgenv().__CokeboysRefreshKeyManagementStatus

		if type(cokeboysRefreshKeyManagementStat) == "function" then
			pcall(cokeboysRefreshKeyManagementStat)
		end
	end

	local function func10()
		cokeboysKeyAccessState.valid = false
		cokeboysKeyAccessState.permanent = false
		cokeboysKeyAccessState.expiresAt = nil
		cokeboysKeyAccessState.checkedAt = os.time()
		value1 = nil
		value2 = nil
		value3 = nil
		func9()
	end

	local function func11(flag2)
		cokeboysKeyAccessState.valid = true
		cokeboysKeyAccessState.permanent = flag2 and flag2.permanent == true or false
		cokeboysKeyAccessState.expiresAt = flag2 and tonumber(flag2.expires_at) or nil
		cokeboysKeyAccessState.checkedAt = os.time()
		value3 = flag2
		func9()
	end

	local function func12()
		if value4 then
			pcall(function()
				value4:Destroy()
			end)

			value4 = nil
		end

		if value5 then
			pcall(function()
				value5:Destroy()
			end)

			value5 = nil
		end
	end

	local function func13(param9, ...)
		local cokeboysSpawnRuntimeTask = _G.__CokeboysSpawnRuntimeTask
		if type(cokeboysSpawnRuntimeTask) == "function" then
			return cokeboysSpawnRuntimeTask(param9, ...)
		end
		return task.spawn(param9, ...)
	end

	local function func14(flag3)
		n += 1

		if flag3 ~= false then
			func12()
		end

		func10()
	end

	_G.__CokeboysKeyValidationCleanup = function()
		func14(true)
		getgenv().__CokeboysLaunchInProgress = false
	end

	local function func15(flag4)
		func14(true)

		if type(delfile) == "function" then
			if not pcall(delfile, "cokeboys_key.txt") then
				func6("cokeboys_key.txt", "")
			end
		else
			func6("cokeboys_key.txt", "")
		end

		local str2 = flag4 or "Your key has expired or been revoked."
		local genv = type(getgenv) == "function" and getgenv() or _G
		local cokeboysFullUnload = genv.CokeboysFullUnload or genv.CokeboysUnload

		if type(cokeboysFullUnload) == "function" then
			pcall(cokeboysFullUnload)
		else
			getgenv().CokeboysScriptLoaded = false
		end

		if func8() then
			pcall(function()
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Cokeboys Key Expired",
					Text = str2 .. " Script features were disabled. Get a new key and re-execute to continue.",
					Duration = 8,
				})
			end)
		end
	end

	local function func16()
		error("SL: this block could not be recovered")
	end

	local function func17(callback1)
		func14(true)
		local flag5 = n

		func13(function()
			local txt = func5("cokeboys_key.txt")

			if txt and txt ~= "" then
				local match = txt:match("^%s*(.-)%s*$")
				local value6, value7 = func3()
				local value8, value9, value10 = func4(match, value6, value7, "stealanegg")
				if flag5 ~= n then
					return
				end

				if value8 then
					func11(value10)
					callback1(match, value6, value10)

					func13(function()
						while flag5 == n do
							task.wait(1800)
							if flag5 ~= n then
								return
							end
							local value11, value12, value13 = func16(match)
							if flag5 ~= n then
								return
							end

							if value13 then
								func11(value13)
							end

							if value11 then
								func15(value12)
								return
							end
						end
					end)

					return
				end
			end

			local playerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
			local screenGui = Instance.new("ScreenGui")
			screenGui.Name = "CokeboysKeySystem"
			screenGui.ResetOnSpawn = false
			screenGui.IgnoreGuiInset = true
			screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			screenGui.Parent = playerGui
			value4 = screenGui
			local blurEffect = Instance.new("BlurEffect")
			blurEffect.Name = "CokeboysKeyBlur"
			blurEffect.Size = 20
			blurEffect.Parent = game:GetService("Lighting")
			value5 = blurEffect

			screenGui.Destroying:Connect(function()
				if value4 == screenGui then
					value4 = nil
				end

				if value5 == blurEffect then
					pcall(function()
						blurEffect:Destroy()
					end)

					value5 = nil
				end

				if not getgenv().CokeboysScriptLoaded then
					getgenv().__CokeboysLaunchInProgress = false
				end
			end)

			local frame = Instance.new("Frame")
			frame.Name = "Backdrop"
			frame.Size = UDim2.new(1, 0, 1, 0)
			frame.BackgroundColor3 = Color3.fromRGB(4, 4, 7)
			frame.BackgroundTransparency = 0.42
			frame.BorderSizePixel = 0
			frame.ZIndex = 0
			frame.Parent = screenGui
			local frame2 = Instance.new("Frame")
			frame2.Name = "KeyPageLayout"
			frame2.AnchorPoint = Vector2.new(0.5, 0.5)
			frame2.Position = UDim2.new(0.5, 0, 0.5, 0)
			frame2.BackgroundTransparency = 1
			frame2.BorderSizePixel = 0
			frame2.Parent = screenGui
			local uiScale = Instance.new("UIScale")
			uiScale.Parent = frame2
			local frame3 = Instance.new("Frame")
			frame3.Name = "KeyCard"
			frame3.Size = UDim2.new(0, 420, 0, 326)
			frame3.Position = UDim2.new(0, 0, 0, 0)
			frame3.BackgroundColor3 = Color3.fromRGB(12, 12, 15)
			frame3.BorderSizePixel = 0
			frame3.Parent = frame2
			local uiCorner = Instance.new("UICorner")
			uiCorner.CornerRadius = UDim.new(0, 12)
			uiCorner.Parent = frame3
			local uiStroke = Instance.new("UIStroke")
			uiStroke.Color = Color3.fromRGB(220, 53, 69)
			uiStroke.Thickness = 1.5
			uiStroke.Parent = frame3
			local imageLabel = Instance.new("ImageLabel")
			imageLabel.Name = "BrandIcon"
			imageLabel.Size = UDim2.new(0, 30, 0, 30)
			imageLabel.Position = UDim2.new(0.5, -79, 0, 19)
			imageLabel.BackgroundTransparency = 1
			imageLabel.Image = "rbxthumb://type=Asset&id=128335611339738&w=150&h=150"
			imageLabel.ScaleType = Enum.ScaleType.Crop
			imageLabel.Parent = frame3
			local uiCorner2 = Instance.new("UICorner")
			uiCorner2.CornerRadius = UDim.new(1, 0)
			uiCorner2.Parent = imageLabel
			local textLabel = Instance.new("TextLabel")
			textLabel.Size = UDim2.new(0, 130, 0, 34)
			textLabel.Position = UDim2.new(0.5, -41, 0, 17)
			textLabel.BackgroundTransparency = 1
			textLabel.Text = "COKEBOYS"
			textLabel.TextColor3 = Color3.fromRGB(220, 53, 69)
			textLabel.TextSize = 22
			textLabel.Font = Enum.Font.GothamBold
			textLabel.TextXAlignment = Enum.TextXAlignment.Left
			textLabel.Parent = frame3
			local textLabel2 = Instance.new("TextLabel")
			textLabel2.Size = UDim2.new(1, 0, 0, 22)
			textLabel2.Position = UDim2.new(0, 0, 0, 53)
			textLabel2.BackgroundTransparency = 1
			textLabel2.Text = "Enter a valid key to continue"
			textLabel2.TextColor3 = Color3.fromRGB(160, 160, 170)
			textLabel2.TextSize = 13
			textLabel2.Font = Enum.Font.Gotham
			textLabel2.Parent = frame3
			local frame4 = Instance.new("Frame")
			frame4.Name = "InformationCards"
			frame4.Size = UDim2.new(0, 320, 0, 326)
			frame4.Position = UDim2.new(0, 440, 0, 0)
			frame4.BackgroundTransparency = 1
			frame4.BorderSizePixel = 0
			frame4.Parent = frame2
			local frame5 = Instance.new("Frame")
			frame5.Name = "AnnouncementCard"
			frame5.Size = UDim2.new(1, 0, 0, 188)
			frame5.Position = UDim2.new(0, 0, 0, 0)
			frame5.BackgroundColor3 = Color3.fromRGB(22, 22, 28)
			frame5.BorderSizePixel = 0
			frame5.Parent = frame4
			local uiCorner3 = Instance.new("UICorner")
			uiCorner3.CornerRadius = UDim.new(0, 8)
			uiCorner3.Parent = frame5
			local uiStroke2 = Instance.new("UIStroke")
			uiStroke2.Color = Color3.fromRGB(118, 57, 76)
			uiStroke2.Thickness = 1
			uiStroke2.Parent = frame5
			local textLabel3 = Instance.new("TextLabel")
			textLabel3.Size = UDim2.new(1, -120, 0, 22)
			textLabel3.Position = UDim2.new(0, 16, 0, 18)
			textLabel3.BackgroundTransparency = 1
			textLabel3.Text = "OFFICIAL RELEASE"
			textLabel3.TextColor3 = Color3.fromRGB(235, 75, 92)
			textLabel3.TextSize = 12
			textLabel3.Font = Enum.Font.GothamBold
			textLabel3.TextXAlignment = Enum.TextXAlignment.Left
			textLabel3.Parent = frame5
			local textLabel4 = Instance.new("TextLabel")
			textLabel4.Name = "ReleaseBadge"
			textLabel4.Size = UDim2.new(0, 78, 0, 24)
			textLabel4.Position = UDim2.new(1, -94, 0, 14)
			textLabel4.BackgroundColor3 = Color3.fromRGB(54, 26, 33)
			textLabel4.BorderSizePixel = 0
			textLabel4.Text = "V1.8  LIVE"
			textLabel4.TextColor3 = Color3.fromRGB(255, 104, 119)
			textLabel4.TextSize = 10
			textLabel4.Font = Enum.Font.GothamBold
			textLabel4.Parent = frame5
			local uiCorner4 = Instance.new("UICorner")
			uiCorner4.CornerRadius = UDim.new(1, 0)
			uiCorner4.Parent = textLabel4
			local textLabel5 = Instance.new("TextLabel")
			textLabel5.Name = "ReleaseDate"
			textLabel5.Size = UDim2.new(1, -32, 0, 16)
			textLabel5.Position = UDim2.new(0, 16, 0, 45)
			textLabel5.BackgroundTransparency = 1
			textLabel5.Text = "RELEASED  •  JULY 2026"
			textLabel5.TextColor3 = Color3.fromRGB(135, 135, 148)
			textLabel5.TextSize = 10
			textLabel5.Font = Enum.Font.GothamMedium
			textLabel5.TextXAlignment = Enum.TextXAlignment.Left
			textLabel5.Parent = frame5
			local textLabel6 = Instance.new("TextLabel")
			textLabel6.Size = UDim2.new(1, -32, 0, 43)
			textLabel6.Position = UDim2.new(0, 16, 0, 69)
			textLabel6.BackgroundTransparency = 1
			textLabel6.Text = "The public beta has ended. COKEBOYS-BETA-TEST was retired and no longer works."
			textLabel6.TextColor3 = Color3.fromRGB(190, 190, 200)
			textLabel6.TextSize = 12
			textLabel6.Font = Enum.Font.Gotham
			textLabel6.TextWrapped = true
			textLabel6.TextXAlignment = Enum.TextXAlignment.Left
			textLabel6.TextYAlignment = Enum.TextYAlignment.Top
			textLabel6.Parent = frame5
			local frame6 = Instance.new("Frame")
			frame6.Name = "Divider"
			frame6.Size = UDim2.new(1, -32, 0, 1)
			frame6.Position = UDim2.new(0, 16, 0, 119)
			frame6.BackgroundColor3 = Color3.fromRGB(55, 43, 50)
			frame6.BorderSizePixel = 0
			frame6.Parent = frame5
			local textLabel7 = Instance.new("TextLabel")
			textLabel7.Name = "WhatsNew"
			textLabel7.Size = UDim2.new(1, -32, 0, 42)
			textLabel7.Position = UDim2.new(0, 16, 0, 132)
			textLabel7.BackgroundTransparency = 1
			textLabel7.Text = "<b>NEED ACCESS?</b>\nClick the key button to generate your own access key."
			textLabel7.TextColor3 = Color3.fromRGB(170, 170, 182)
			textLabel7.TextSize = 11
			textLabel7.Font = Enum.Font.Gotham
			textLabel7.RichText = true
			textLabel7.TextWrapped = true
			textLabel7.TextXAlignment = Enum.TextXAlignment.Left
			textLabel7.TextYAlignment = Enum.TextYAlignment.Top
			textLabel7.Parent = frame5
			local textLabel8 = Instance.new("TextLabel")
			textLabel8.Size = UDim2.new(1, -40, 0, 14)
			textLabel8.Position = UDim2.new(0, 20, 0, 88)
			textLabel8.BackgroundTransparency = 1
			textLabel8.Text = "ACCESS KEY"
			textLabel8.TextColor3 = Color3.fromRGB(170, 170, 182)
			textLabel8.TextSize = 10
			textLabel8.Font = Enum.Font.GothamBold
			textLabel8.TextXAlignment = Enum.TextXAlignment.Left
			textLabel8.Parent = frame3
			local textBox = Instance.new("TextBox")
			textBox.Size = UDim2.new(1, -40, 0, 42)
			textBox.Position = UDim2.new(0, 20, 0, 107)
			textBox.BackgroundColor3 = Color3.fromRGB(22, 22, 28)
			textBox.BorderSizePixel = 0
			textBox.PlaceholderText = "COKEBOYS-XXXX-XXXX"
			textBox.Text = ""
			textBox.TextColor3 = Color3.fromRGB(240, 240, 240)
			textBox.TextSize = 14
			textBox.Font = Enum.Font.Gotham
			textBox.ClearTextOnFocus = false
			textBox.Parent = frame3
			local uiCorner5 = Instance.new("UICorner")
			uiCorner5.CornerRadius = UDim.new(0, 8)
			uiCorner5.Parent = textBox
			local uiStroke3 = Instance.new("UIStroke")
			uiStroke3.Color = Color3.fromRGB(50, 50, 60)
			uiStroke3.Thickness = 1
			uiStroke3.Parent = textBox
			local textButton = Instance.new("TextButton")
			textButton.Size = UDim2.new(1, -40, 0, 42)
			textButton.Position = UDim2.new(0, 20, 0, 161)
			textButton.BackgroundColor3 = Color3.fromRGB(220, 53, 69)
			textButton.BorderSizePixel = 0
			textButton.Text = "Validate Key"
			textButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			textButton.TextSize = 14
			textButton.Font = Enum.Font.GothamBold
			textButton.Parent = frame3
			local uiCorner6 = Instance.new("UICorner")
			uiCorner6.CornerRadius = UDim.new(0, 8)
			uiCorner6.Parent = textButton
			local textButton2 = Instance.new("TextButton")
			textButton2.Size = UDim2.new(1, -40, 0, 36)
			textButton2.Position = UDim2.new(0, 20, 0, 230)
			textButton2.BackgroundColor3 = Color3.fromRGB(220, 53, 69)
			textButton2.BackgroundTransparency = 0
			textButton2.BorderSizePixel = 0
			textButton2.AutoButtonColor = false
			textButton2.Text = "CLICK HERE TO GET A KEY"
			textButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
			textButton2.TextSize = 14
			textButton2.Font = Enum.Font.GothamBold
			textButton2.Parent = frame3
			local textLabel9 = Instance.new("TextLabel")
			textLabel9.Size = UDim2.new(1, -40, 0, 14)
			textLabel9.Position = UDim2.new(0, 20, 0, 211)
			textLabel9.BackgroundTransparency = 1
			textLabel9.Text = "Don't have a key? Click the button below to generate one."
			textLabel9.TextColor3 = Color3.fromRGB(190, 190, 202)
			textLabel9.TextSize = 11
			textLabel9.Font = Enum.Font.GothamMedium
			textLabel9.TextXAlignment = Enum.TextXAlignment.Left
			textLabel9.Parent = frame3
			local uiCorner7 = Instance.new("UICorner")
			uiCorner7.CornerRadius = UDim.new(0, 8)
			uiCorner7.Parent = textButton2
			local uiStroke4 = Instance.new("UIStroke")
			uiStroke4.Color = Color3.fromRGB(255, 112, 126)
			uiStroke4.Thickness = 1
			uiStroke4.Parent = textButton2
			local frame7 = Instance.new("Frame")
			frame7.Name = "DiscordCard"
			frame7.Size = UDim2.new(1, 0, 0, 122)
			frame7.Position = UDim2.new(0, 0, 0, 204)
			frame7.BackgroundColor3 = Color3.fromRGB(22, 22, 28)
			frame7.BorderSizePixel = 0
			frame7.Parent = frame4
			local uiCorner8 = Instance.new("UICorner")
			uiCorner8.CornerRadius = UDim.new(0, 8)
			uiCorner8.Parent = frame7
			local uiStroke5 = Instance.new("UIStroke")
			uiStroke5.Color = Color3.fromRGB(55, 58, 88)
			uiStroke5.Thickness = 1
			uiStroke5.Parent = frame7
			local textLabel10 = Instance.new("TextLabel")
			textLabel10.Size = UDim2.new(1, -32, 0, 20)
			textLabel10.Position = UDim2.new(0, 16, 0, 13)
			textLabel10.BackgroundTransparency = 1
			textLabel10.Text = "COKEBOYS COMMUNITY"
			textLabel10.TextColor3 = Color3.fromRGB(190, 195, 255)
			textLabel10.TextSize = 12
			textLabel10.Font = Enum.Font.GothamBold
			textLabel10.TextXAlignment = Enum.TextXAlignment.Left
			textLabel10.Parent = frame7
			local textLabel11 = Instance.new("TextLabel")
			textLabel11.Size = UDim2.new(1, -32, 0, 28)
			textLabel11.Position = UDim2.new(0, 16, 0, 34)
			textLabel11.BackgroundTransparency = 1
			textLabel11.Text = "Get support and follow future updates."
			textLabel11.TextColor3 = Color3.fromRGB(170, 170, 182)
			textLabel11.TextSize = 11
			textLabel11.Font = Enum.Font.Gotham
			textLabel11.TextXAlignment = Enum.TextXAlignment.Left
			textLabel11.Parent = frame7
			local textButton3 = Instance.new("TextButton")
			textButton3.Size = UDim2.new(1, -32, 0, 34)
			textButton3.Position = UDim2.new(0, 16, 0, 73)
			textButton3.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
			textButton3.BorderSizePixel = 0
			textButton3.Text = "Join the Cokeboys Discord"
			textButton3.TextColor3 = Color3.fromRGB(255, 255, 255)
			textButton3.TextSize = 13
			textButton3.Font = Enum.Font.GothamMedium
			textButton3.Parent = frame7
			local uiCorner9 = Instance.new("UICorner")
			uiCorner9.CornerRadius = UDim.new(0, 8)
			uiCorner9.Parent = textButton3
			local uiStroke6 = Instance.new("UIStroke")
			uiStroke6.Color = Color3.fromRGB(119, 132, 255)
			uiStroke6.Thickness = 1
			uiStroke6.Parent = textButton3
			local textLabel12 = Instance.new("TextLabel")
			textLabel12.Size = UDim2.new(1, -40, 0, 24)
			textLabel12.Position = UDim2.new(0, 20, 0, 278)
			textLabel12.BackgroundTransparency = 1
			textLabel12.Text = ""
			textLabel12.TextColor3 = Color3.fromRGB(200, 200, 200)
			textLabel12.TextSize = 12
			textLabel12.Font = Enum.Font.Gotham
			textLabel12.Parent = frame3
			local connection = nil

			local function func18()
				if not frame2.Parent then
					return
				end
				local currentCamera = workspace.CurrentCamera
				currentCamera = currentCamera and currentCamera.ViewportSize or Vector2.new(1280, 720)
				local n2 = math.min(1, (currentCamera.X - 24) / 760, (currentCamera.Y - 24) / 326)
				local n3 = math.min(1, (currentCamera.X - 24) / 420, (currentCamera.Y - 24) / 668)
				local flag6 = n3 > n2

				if flag6 then
					frame2.Size = UDim2.new(0, 420, 0, 668)
					frame3.Position = UDim2.new(0, 0, 0, 0)
					frame4.Size = UDim2.new(0, 420, 0, 326)
					frame4.Position = UDim2.new(0, 0, 0, 342)
				else
					frame2.Size = UDim2.new(0, 760, 0, 326)
					frame3.Position = UDim2.new(0, 0, 0, 0)
					frame4.Size = UDim2.new(0, 320, 0, 326)
					frame4.Position = UDim2.new(0, 440, 0, 0)
				end

				uiScale.Scale = math.max(0.1, flag6 and n3 or n2)
			end

			local function func19()
				if connection then
					connection:Disconnect()
					connection = nil
				end

				local currentCamera = workspace.CurrentCamera

				if currentCamera then
					connection = currentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(func18)
				end

				func18()
			end

			local connection2 = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(func19)

			screenGui.Destroying:Connect(function()
				if connection then
					connection:Disconnect()
					connection = nil
				end

				if connection2 then
					connection2:Disconnect()
					connection2 = nil
				end
			end)

			func19()

			textButton2.Activated:Connect(function()
				local ok

				if type(setclipboard) == "function" then
					ok = pcall(setclipboard, "https://linktr.ee/cokeboysclient")
				else
					ok = false

					if type(toclipboard) == "function" then
						ok = pcall(toclipboard, "https://linktr.ee/cokeboysclient")
					end
				end

				textButton2.Text = ok and "Get-key link copied!" or "https://linktr.ee/cokeboysclient"

				task.delay(3, function()
					textButton2.Text = "CLICK HERE TO GET A KEY"
				end)
			end)

			textButton2.MouseEnter:Connect(function()
				textButton2.BackgroundColor3 = Color3.fromRGB(235, 68, 84)
			end)

			textButton2.MouseLeave:Connect(function()
				textButton2.BackgroundColor3 = Color3.fromRGB(220, 53, 69)
			end)

			textButton3.Activated:Connect(function()
				local value14 = setclipboard or toclipboard
				textButton3.Text = type(value14) == "function" and pcall(value14, "https://discord.gg/cokeboys") and "Discord invite copied!" or "Discord: " .. discord

				task.delay(3, function()
					if textButton3 and textButton3.Parent then
						textButton3.Text = "Join the Cokeboys Discord"
					end
				end)
			end)

			textButton3.MouseEnter:Connect(function()
				textButton3.BackgroundColor3 = Color3.fromRGB(105, 118, 255)
			end)

			textButton3.MouseLeave:Connect(function()
				textButton3.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
			end)

			textButton.Activated:Connect(function()
				local match = textBox.Text:match("^%s*(.-)%s*$")

				if match == "" then
					textLabel12.Text = "Please enter a key"
					textLabel12.TextColor3 = Color3.fromRGB(255, 100, 100)
					return
				end

				if string.upper(match) == "COKEBOYS-BETA-TEST" then
					textLabel12.Text = "Beta key retired - use Get a Key below"
					textLabel12.TextColor3 = Color3.fromRGB(255, 120, 120)
					return
				end

				textLabel12.Text = "Checking..."
				textLabel12.TextColor3 = Color3.fromRGB(200, 200, 200)
				textButton.Active = false
				local value15 = n

				task.spawn(function()
					error("SL: this block could not be recovered")
				end)
			end)
		end)
	end

	getgenv().__CokeboysLaunchInProgress = true

	func17(function(param10, param11, param12)
		func7(param10, param11, param12)
		flag1 = true
	end)

	while true do
		task.wait()
		if not (flag1 or getgenv().__CokeboysLaunchInProgress == false) then
			continue
		end
		break
	end

	if not flag1 then
		return
	end
end

do
	local Players = game:GetService("Players")
	local localPlayer = Players.LocalPlayer

	if not localPlayer then
		pcall(function()
			Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		end)

		localPlayer = Players.LocalPlayer
	end

	local func20 = tostring
	local flag7 = func20(localPlayer and localPlayer.UserId or 0)
	local genv = getgenv and getgenv() or _G
	local cokeboysHub = genv.CokeboysHub

	if type(cokeboysHub) ~= "table" then
		cokeboysHub = { slots = {} }
		genv.CokeboysHub = cokeboysHub
	end

	if type(cokeboysHub.slots) ~= "table" then
		cokeboysHub.slots = {}
	end

	local tbl2 = cokeboysHub.slots[flag7]

	if type(tbl2) ~= "table" then
		tbl2 = {}
		cokeboysHub.slots[flag7] = tbl2
	end

	tbl2.gen = (tonumber(tbl2.gen) or 0) + 1
	local flag8 = false

	for k, slot in pairs(cokeboysHub.slots) do
		if flag7 ~= tostring(k) and type(slot) == "table" and slot.alive == true then
			flag8 = true
			break
		else
			flag8 = false
		end
	end

	if not flag8 then
		genv.CokeboysCfgGen = (tonumber(genv.CokeboysCfgGen) or 0) + 1
	end

	local unload = tbl2.unload
	tbl2.unload = nil
	tbl2.alive = false

	if type(unload) == "function" then
		pcall(unload)
	elseif type(genv.CokeboysUnload) == "function" then
		local cokeboysUnloadUid = genv.CokeboysUnloadUid
		local flag9 = cokeboysUnloadUid == nil or flag7 == tostring(cokeboysUnloadUid)

		if cokeboysUnloadUid == nil then
			for k, slot in pairs(cokeboysHub.slots) do
				if flag7 ~= tostring(k) and type(slot) == "table" and type(slot.unload) == "function" then
					flag9 = false
					break
				end
			end
		end

		if flag9 then
			local cokeboysUnload = genv.CokeboysUnload

			if flag7 == tostring(cokeboysUnloadUid or flag7) then
				genv.CokeboysUnload = nil
				genv.CokeboysUnloadUid = nil
			end

			pcall(cokeboysUnload)
		end
	end

	local cokeboysLinoriaLibrary = genv.CokeboysLinoriaLibrary

	if type(cokeboysLinoriaLibrary) == "table" and type(cokeboysLinoriaLibrary.Unload) == "function" and cokeboysLinoriaLibrary.Unloaded ~= true then
		pcall(function()
			cokeboysLinoriaLibrary:Unload()
		end)
	end

	genv.CokeboysLinoriaLibrary = nil
	genv.CokeboysLinoriaActive = nil
end

do
	local Players = game:GetService("Players")
	local localPlayer = Players.LocalPlayer

	if not localPlayer then
		pcall(function()
			Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		end)

		localPlayer = Players.LocalPlayer
	end

	local n = os.clock() + 60

	while true do
		if localPlayer and n > os.clock() then
			local character = localPlayer.Character
			local humanoid = character and character:FindFirstChildOfClass("Humanoid")
			character = character and character:FindFirstChild("HumanoidRootPart")

			if humanoid and character and humanoid.Health > 0 then
				task.wait(0.45)
				local character2 = localPlayer.Character
				local humanoid2 = character2 and character2:FindFirstChildOfClass("Humanoid")
				character2 = character2 and character2:FindFirstChild("HumanoidRootPart")
				if not humanoid2 or not character2 or not (humanoid2.Health > 0) then
					continue
				end
			else
				task.wait(0.1)
				continue
			end
		end

		break
	end
end

local func21

func21 = function(flag10)
	local match = tostring(flag10 or "Game"):gsub("[<>:\"/\\|?*]", "_"):gsub("%s+", "_"):gsub("_+", "_"):match("^%s*(.-)%s*$")

	if not match or match == "" or match == "_" then
		match = "Game"
	end

	return match
end

local str3

str3 = {
	Title = "COKEBOYS",
	Version = "0.1",
	Product = "Steal an Egg",
	OpenBind = Enum.KeyCode.RightControl,
	BypassBind = Enum.KeyCode.B,
	FlightBind = Enum.KeyCode.F,
	Tagline = "",
	Status = "preview",
	Game = "Steal an Egg",
	Website = "",
	Changelog = "",
	Author = "Cokeboys Client",
	Credits = "Thanks to all my dicord members",
	Support = "Thank You for your support !",
	LogoFile = "CokeboysUnified/logo.png",
	LogoFileLight = "CokeboysUnified/logo-light.png",
}

local n2
n2 = 620
local n3
n3 = 430
local n4
n4 = 152
local Players
Players = game:GetService("Players")
local RunService
RunService = game:GetService("RunService")
local UserInputService
UserInputService = game:GetService("UserInputService")
local flag11
flag11 = false
local flag12
flag12 = false
local HttpService, Stats, ProximityPromptService, ReplicatedStorage, localPlayer, func22, func23, flag13, flag14, func24
local cokeboysUnloadUid, str4, name, func25, func26, tbl3, tbl4, tbl5, list1, tbl6
local tbl7, tbl8, tbl9, tbl10, tbl11, tbl12, list2, value16, func27, setPage
local func28, setVisible, setTheme, list3, func29, func30, obj, func31, func32, createUIStroke
local createUIPadding, func33, func34, createFrame

do
	local TweenService = game:GetService("TweenService")
	HttpService = game:GetService("HttpService")
	Stats = game:GetService("Stats")
	ProximityPromptService = game:GetService("ProximityPromptService")
	ReplicatedStorage = game:GetService("ReplicatedStorage")
	local GuiService = game:GetService("GuiService")
	localPlayer = Players.LocalPlayer

	if not localPlayer then
		pcall(function()
			Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		end)

		localPlayer = Players.LocalPlayer
	end

	func22 = function()
		if UserInputService.VREnabled then
			return false
		end
		local flag15 = false

		pcall(function()
			flag15 = GuiService:IsTenFootInterface()
		end)

		if flag15 then
			return false
		end

		if UserInputService.TouchEnabled then
			return true
		end

		if UserInputService.MouseEnabled == false then
			return true
		end
		local flag16 = false
		local flag17 = false

		pcall(function()
			flag16 = UserInputService.GyroscopeEnabled == true
		end)

		pcall(function()
			flag17 = UserInputService.AccelerometerEnabled == true
		end)

		if flag16 or flag17 then
			return true
		end
		local preferredInput = nil
		local lastInputType = nil

		pcall(function()
			preferredInput = UserInputService.PreferredInput
		end)

		pcall(function()
			lastInputType = UserInputService:GetLastInputType()
		end)

		if preferredInput == Enum.PreferredInput.Touch or lastInputType == Enum.UserInputType.Touch then
			return true
		end
		local playerGui = localPlayer and localPlayer:FindFirstChild("PlayerGui")

		if playerGui then
			playerGui = playerGui:FindFirstChild("TouchGui", true) or playerGui:FindFirstChild("TouchControlFrame", true) or playerGui:FindFirstChild("JumpButton", true) or playerGui:FindFirstChild("DynamicThumbstickFrame", true)
		end

		if playerGui then
			return true
		end
		return false
	end

	func23 = function()
		local currentCamera = workspace.CurrentCamera
		local vector2

		if not currentCamera then
			vector2 = Vector2.new(1280, 720)
		else
			vector2 = currentCamera.ViewportSize
		end

		local n = math.floor(math.clamp(vector2.X * 0.7, 440, 560))
		local n5 = math.floor(math.clamp(vector2.Y * 0.74, 340, 410))
		local n6

		if not (vector2.X > 80) then
			n6 = n
		else
			n6 = math.min(n, vector2.X - 36)
		end

		local n7

		if not (vector2.Y > 80) then
			n7 = n5
		else
			n7 = math.min(n5, vector2.Y - 36)
		end

		return math.max(400, n6), math.max(320, n7)
	end

	flag13 = func22()
	flag14 = false
	func24 = nil

	if flag13 then
		n2, n3 = func23()
		n4 = 128
	end

	cokeboysUnloadUid = tostring(localPlayer and localPlayer.UserId or 0)
	str4 = "PH_UI_" .. cokeboysUnloadUid
	name = "CokeboysWorldGui_" .. cokeboysUnloadUid

	func25 = function()
		return getgenv and getgenv() or _G
	end

	func26 = function()
		local genv = getgenv and getgenv() or _G
		local cokeboysHub = genv.CokeboysHub

		if type(cokeboysHub) ~= "table" then
			cokeboysHub = { slots = {} }
			genv.CokeboysHub = cokeboysHub
		end

		if type(cokeboysHub.slots) ~= "table" then
			cokeboysHub.slots = {}
		end

		local tbl13 = cokeboysHub.slots[cokeboysUnloadUid]

		if type(tbl13) ~= "table" then
			tbl13 = {}
			cokeboysHub.slots[cokeboysUnloadUid] = tbl13
		end

		return tbl13
	end

	str3.ConfigFile = (("CokeboysUnified" .. "/" .. func21(str3.Game)) .. "/cache") .. "/executor-config.json"

	tbl3 = {
		Dark = {
			bg = Color3.fromRGB(7, 7, 7),
			rail = Color3.fromRGB(10, 10, 10),
			card = Color3.fromRGB(21, 21, 21),
			lift = Color3.fromRGB(28, 28, 28),
			fill = Color3.fromRGB(36, 36, 36),
			line = Color3.fromRGB(67, 59, 20),
			text = Color3.fromRGB(247, 247, 242),
			dim = Color3.fromRGB(174, 174, 166),
			mute = Color3.fromRGB(105, 105, 98),
			accent = Color3.fromRGB(255, 210, 0),
			accentDeep = Color3.fromRGB(91, 73, 0),
			accentHover = Color3.fromRGB(255, 229, 76),
			ink = Color3.fromRGB(12, 12, 9),
			ok = Color3.fromRGB(255, 210, 0),
			Cokeboys = Color3.fromRGB(255, 210, 0),
		},
		Light = {
			bg = Color3.fromRGB(12, 12, 12),
			rail = Color3.fromRGB(15, 15, 15),
			card = Color3.fromRGB(27, 27, 27),
			lift = Color3.fromRGB(34, 34, 34),
			fill = Color3.fromRGB(43, 43, 43),
			line = Color3.fromRGB(79, 69, 22),
			text = Color3.fromRGB(250, 250, 244),
			dim = Color3.fromRGB(184, 184, 174),
			mute = Color3.fromRGB(112, 112, 104),
			accent = Color3.fromRGB(255, 210, 0),
			accentDeep = Color3.fromRGB(91, 73, 0),
			accentHover = Color3.fromRGB(255, 229, 76),
			ink = Color3.fromRGB(12, 12, 9),
			ok = Color3.fromRGB(255, 210, 0),
			Cokeboys = Color3.fromRGB(255, 210, 0),
		},
	}

	tbl4 = {}

	for k, value17 in pairs(tbl3.Dark) do
		tbl4[k] = value17
	end

	tbl5 = {
		title = Enum.Font.BuilderSansBold,
		mid = Enum.Font.BuilderSansMedium,
		body = Enum.Font.BuilderSans,
		mono = Enum.Font.RobotoMono,
	}

	list1 = {
		"Forest",
		"Desert",
		"Lake",
		"Jungle",
		"Snow",
		"Volcano",
		"Prehistoric",
		"Cosmic",
		"Abyss Ocean",
		"Titan Temple",
		"Cherry Blossom",
		"Light Dark",
	}

	tbl6 = {
		"Common",
		"Uncommon",
		"Rare",
		"Epic",
		"Legendary",
		"Mythic",
		"Cosmic",
		"Secret",
		"Eternal",
		"Divine",
		"Titan",
	}

	tbl7 = { "Golden", "Rainbow", "Galaxy", "Crystal", "Bloom" }

	tbl8 = {
		About = "info",
		["Auto Steal"] = "egg",
		Plot = "grid",
		Serverhop = "rocket",
		Misc = "layers",
		Events = "layers",
		Webhook = "out",
		Settings = "cog",
	}

	tbl9 = {}
	tbl10 = {}
	tbl11 = {}
	tbl12 = {}
	list2 = {}
	value16 = nil
	func27 = nil
	setPage = nil
	func28 = nil
	setVisible = nil
	setTheme = nil
	list3 = {}

	func29 = function(param13)
		if param13 then
			list3[#list3 + 1] = param13
		end

		return param13
	end

	local list4 = {}
	local value18 = nil
	local value19 = nil

	local function func35(flag18)
		if type(flag18) ~= "string" or flag18 == "" then
			return
		end
		local list5 = {}

		if crypt then
			list5[#list5 + 1] = crypt.base64decode
			list5[#list5 + 1] = crypt.base64_decode
		end

		if syn and syn.crypt and syn.crypt.base64 and syn.crypt.base64.decode then
			list5[#list5 + 1] = syn.crypt.base64.decode
		end

		if base64 and base64.decode then
			list5[#list5 + 1] = base64.decode
		end

		if base64_decode then
			list5[#list5 + 1] = base64_decode
		end

		for i = 1, #list5 do
			local ok, result = pcall(list5[i], flag18)
			if ok and type(result) == "string" and #result > 64 then
				return result
			end
		end
	end

	local function func36(flag19)
		if flag19 then
			if value19 then
				return value19
			end
		elseif value18 then
			return value18
		end

		local flag20 = func35(not flag19 and "iVBORw0KGgoAAAANSUhEUgAABM4AAAT+AQMAAAAMPf+7AAAABlBMVEVLCwtpFBQTWwb3AAAAAnRSTlMD/Om1IMwAACKOSURBVHja7JlBitwwEEVltPDSOUDAR9FVcpCA+2ja5Ro6gpaGEfqBBI17sLHqNfTghd/aaku/6n9VY3dzc3Nzc3Nzc3NzWX64y/LLXZborop/uKsyusvy012W3+6yrO6q+OyuypTcuwmSiuOE6N6M/sMzCi7hLPoH183r3Q2jRqIr65tdpg3HmMu7LbCRYSes3yQad4Ky4yR7UfQMkmFUcpgpOiOD9LJsk6LDiIsm3m1BDjMVkraPtkGabaoOowwyrYmHK+pVuOns7bm0RwOP3VF8a8F8dP9ZE88rOmvlotUXfj3gii7AM/w0y2Z/Tys6gOJvS/Ir+gaYul441ib7kqB1f2MV+3sefPqyh1o6GNvM5xI2gYr90S8yMB9IldczI7/MbTMe+WDgU7GkSPL2SamF+GASjbVREqln82XcbqtqbDUaa4FYrLjxefb2pNkWGmsDmGuC8qBPylbRZHxRpCZQNJ8izl8H3Nk+s418WpcE5iE9E1t5V+MISkNN1RwdZdIz1Q12Hyw01mZwBy760FdiazZbqxVcz2wVeMfami32W43/+7K7YNKex2S16Ey3tqDbeU/2Vh8sYok7CLhARzjjXOQ3bUGNVt5qG7n5wPKmSOuZwDH2GH0QxBLXCyyYdcgf232wSQveVonCez5MPhgllrgCrTbolGqoZ4GhpgQePuFhEwEFVQTFPyH1z5VJqKHAPWftL04g1EgDqEPtixBBqKHA7RE7IoBY82Iu6JG7ucPqyQOXNxuYN186SlCP2hOhQH8WfBfwZGuysrzldwFPtpFuLSAXePUpHcEzqicfvnlFx01VFgZgRumSzg0U2bsqNCiPD8++L3DXyEI919vZ8Kz+g0zEs5UV9k5knckrGtSgCcouNe5RrwadIwoQ2UI+uUQyU2EFIps4SerEsiAhg/JoW/DWBhg1g6zUvQIscUccNWbS7kRMhhl/XMKy7Zexrl6JQbls4D/0yx8ygwDxuJ4FtBr6/gOoxx26svqA2Y5xcLtlJEIFBkWsBx2akAgrGTt5uwW+tQlovC3g3SbhxA3UoLMYubUBTlw8EQdez/2BWOc4mh1/27t/XFluKw3grKFhOjBUDh0Yopfg0IEgeilagkIHgooDB7OM2QqNCRzOEoaOnBKYwDRA8wz0gFG9p6qu4ndYPJeSb4VS//lVN8/3seu+exvatRGeuBYIQV52xJMFWqDXIA/NDsJpC+EfWdHDH0cnQ08UgOxA0+M4tVASKDw7+EdEllpVeHbwj4AstQJkR//hkaWWWmn0xAEtnIjEGn7gibvBA6qlaAQ3qHmCVqCXQOGxxj8y8jxFNNYSklFZNNYistSiaKxFZKkF0VgLyJJWQKxJlIEjuEG1UBkcgkYo1iry5mTRWKvIKxBFY60gTxNEYy0jEeVFYy0hEaVEYy0BOVBlaREYtiybuAGYgiSbuB5Y0VE0cckD700QTVxCXgAvmrgVeAGqEk3cAjxLkaVlYAqyEi2DDExBEi4DYAqibOJGIAbCXGXgONmhRWgbEIGyZbAAOSNcBgYYZuEyWFnZ4SRoDhhm4Z46TIxgGQAB5WXLIAMpoGQTN7VPQVVT9ZRjxZqWoG2s7DACPbUQKztWgZ7SvOywAj218rLDCdDsG9IqkOqq+dgEego4C+Ey0MBZCNMM0BtyPXUc0ChbBvWr9kkLsmVQvmqfNC9Ly8CaUbI9ldrXTFWyPRXa35iiZMvAt599FqYBT5Fke6oCoR7badIDGmTLIAHx5GVpEYgnJdtToX1AqzDNtw9oUbI9BWRAlu2pCqzmJEsrwJKJshWagSUTZGkJeAYvW6EReAYlW6Gh/RmqMM23l3RRsu0ODGiWpVVgQJMSbfcCDGiUrdAMDKgwLQFzFmTbPQKL2XNpgdWoAXhbFLPdw059jGYOw8yp0MzsVN987lR4tMqtB/SvduPtHpiDUYEBTSxa5bZqAQY0sdo9cXdwGWibyKJ5bgonIDsCp90Le58UgUj3HFo8zDtO+9ndgBIgW87upLmJ+4uLMYMTV5+O2cZM3N/fZUcBaccFY5mJ+/VVdqA0c7oIDC9xl3g3oJnR7oW/9S27I94NaGLQEv9jVr760omVn7j2PAoti2b9XXYERoUeTpZTBttddpBHacfJ0azErRfZgdO28+W5cBJX17tyJ4XTwvG/47S13GVHxWnHF9oxysCWu+woCO3V2VhGGWz5LjsyTjvexTBoJ4Fq+bTlVUhrvKc0pbvsSDgtdFylKVffWrTxy0C/jJsNptmTMyR+GeiXM23hnnLkn/x+JvNyple4pzbyd8OkQNr56tQobSG6OD88cdeXq3NBK1QT3a2KgtP8aU+APbVSvcgOnGZfLwEH0iyVu9PLMK1cqNsrdKNylx0JobnXJ7OCPXXyOEs3LXVd5N2nIN9NeYRp4TyNsQo1JzTTUQZqe53RC0ZbidLdmvAw7dX/gyrUndBsD+0qox1UoRtRvHsEhRxXQWghGp3Qto6eWvYH56ZHuvhuIOoog+UqbQxSoeaEpgEa9o0hGqGtRORvzi3DNN/1k9KwL0x/syISTOv7qbzfb3sxR3gZmMu5cQDt7IFcL6300fY3/0DbenpqvVyctp2mz87x8AKjtNTw48LsbmjrkXYcI/grtGLLn75bb9rdntB0Ny3cX7iv6o7miCjfxFqFaf7+JzFRmZuNx3ZCW8EyOM5gw8+v1C3tLFFtL63eXxcsF7T8uovd4aYgrTR8p8QtTZ/RNqynjvfODd+sckszZ2FPvbR0e0WkXu3d0r6s4k2sRZQW79qf0jVt/2B2E2vh0e873b9C9Hq7tp08temm+btwKeqedlaRK1Ch55l6uzOJl5uQsC8rfx1rpEBabbvBdknTZzTXR7uNaLu/Y+eH35fVTazVMd+VvFzT7BntUGkoLfNpu8ed0JZuWmq74TVtO3nDNHVVqGmNaHNNoxOaQXqKT7vZSS5ntBWi8b9n3TbQys1dIkZrjWh3SdNnNAf1FJ92feHPnNG2blpndpR9WeUbmodotjGi9TXNntGol1b4A7p73AltOcbMEJq9pm0n4aCpq0KVo9w3oJRe/fzedNNS34BS2l+geL0GCkqL8IAeaWanXayBjNICe0B3z3pGc520rY22XtPsHqkXsZZQmocH9EhzZ7TjLVEaf0B3z3ZCW3pp1Ebbmmj+enkGkFaxAT2n0QnNdNMKe0B3z3JGWzsrdGmjmWuaPntu203LndlBfpera5oCaakzO8jv8sNQC9DcBU29oG2d7a4pwtlxpNkzGnXTQu8vkO4var3Om4LSPBxrR9p2QtO9NNNE0zc02mkXeZNRWm+s1f1FLdd5k0BaBWINotnedl+baPaaps9orrdC19Iba/XF14JvA2hgrJUXX4h7UhsgrWls/nZNszvtKm/UCNqfcJruLQNlU1MwX9NcE62gtNhNO/8KejMBLe8rPl1GYUZpYRDN9paBcg/QlrMnd/0039uheYenyyiMKE09Qjs+OQnR1kuaaaMFkPZlNy2p9YS29NO+bZvjNlq4GByc9s0DNHvy5Ka73dUf21bkJc2d0NZ5abaf9jV8CetI205orp+GX/4+xtXZk2/9tDiIRkK05ZK2nDz58gANaHeEpqk/13w/TZ/QTD9t6d54UDSNtATSgApFaOsctPWEZvtpqrtCKdgTmpuNdl0fcQTNXdLcCY2kaNslbTvSFjEaXdLoSNME5Rr/WGCakaLpS9qfT2jrO+26p+i/TmhWirZe0v5yQnNSNAvTtjlo/31Co7PDD6A5lLaI0bZL2v8cL9bqSWj0ljRCaYbqKjIGC0xbSSkRmoZpNitl56S5oJSRoBmctp/QWNraKPtn3S8/Af/YSYKW6ydXKyRotpGWvv3/kQ57Go6luUZa/PKTD7duJtrn13dLb9dT4VOaFaARj7YCtNE95X95Tcv/SjTdTPvZdYmUt+sp9eOl1TfrKbo9pTej1ds1KlahOM1L9RROC1I9hdPiW9HKgTa8qWha2vIcLb8VLd/SilSF4rQq1VM4jSameamewmnxbXqK0v3LnYbQlidoeUSFKmUeoJUBtLQXVg+NBlSoPyw6Hs0/TistKRIPtNEj+v0LokHaSoNHdNnfhwdo5VHa3n0bShs8B3qPI/cALTxcobGpF0JLjaSHaeGqTTFaebjdd2U3rT5LKzyaG/2DKruvD43SBi82t4/e8gStPErzKO0yBp+s0Nr4idS30cKDtMKkEQ1ebER5Z6K0sfHx8Wk6lDY0PhaiANLuhiY/R/N7xgG0ixR8buOhnqaFp2jlo9JCaIYGv6OG8uO0+hQttV7+8NCfTek/VoqtNNVMyw/RApNmicbOqCV/O3Q4LT5DUx20oYXgKpfmaHCwuXLoHoA2dO+xZS5tA2MNp6XHaeEp2ifDhNDArwLGDwpP08JjNM+kLaNftIUO66eRpsG0xWn1aZp6jFYOWdVIM1iz44fOXNoKvp84LT1M84/RDJtmwSbAafHq+XBaeo62Bi7NgXmL0zyXtmHRgR9WPUorU9BGLzX1+SERGmnL6KWmvniW5h+k/Z5L00CqCdMMWKD48TWXtoIFih9fPUrzT9Iil2bxpdb3twRMM82NXmrKYzTBX5NeFJd2Grjz0tSAA6ctwBQI0O7KoMxAO79hmpcW5qCtQBcI0ywwoMI0B0yBAM1fl0GehAYMqDBtAQZUmKaBARWmGWBAhWkrMKDCNAsMqDDNAQMqQQuXsRbmpflJaMCACtMWYIsrQotXiVsmoRn57FBrG20FskOY5oCPxyK0hMeaPI2AWJOhAdkhTMsXA1qG02wTbQWyQ4ZWLm4VJ6E5YEBlaBUdUHnaAuw7hGj0utzreJproa0T0vzLl7ZMQJO53oH/Cnx4OQXprWnx1RRQfGtaejnF4a1p+eVt/Hga0X1T0Yw0erXUSL05zQv8tJH55xbSrpdOXH1DK8DP3IVpFBTNStsP6TIwTFqcmPar4bSVSftrnJYm94EKP8K8ND+c5rg0NS1NoEM3gCPcocQ88ry0OFy2zJsdet7sMPMO6DrvgNp5B3Sbdyf5E8wOP292zDugdd4BLfMOaJ53CtK8UxCmnYKJPxjUeZdamff9TNNGB8Vp55P8rENANO+LVmbtT6I86y6SKM2aHERh2heN/LQvWp01bonKrMlBlKZ9PylO+36Sn/b9pHnfzzLv+5nnfT/jtO8n+Ul3akR12v6kMu9SS/MutTjtUiM/barRnB/aJX77eNousPMOqCOa9SMLvU/BT2oK3ruAc2zTLjU171KbeEdk5g3c988FP62PoGrewF3mnYKJL8SYeadgnXcK7LRToNy0U6C2aadAzTsFy7TXiJSed0DNtJu1mX+UMXGs2Xlj7SeauH7axCU/beLO/BM9P23izkyb+PNxmDZxZ762NvHF7zRtGVCetgyoTFsGVOel0bQ9ReRnLQOiMGsZEMV5aXnWniIqs5YBUZ2XRrP21Nw0P2mFElGYtaeI4uieCuwQSYNpgT+qeWyFlo4yLWN7KnYMRB1L8z2V5UdWaOnauYWRtNQVcXFkhYauTUgaSKt9W7c8sEJz38eEMpC2L5a50mNfauxCGEjr/Zzgh208Su8HvzCs3VPvDikOo8XeLW8etvHwvZ9h6jBa/+flUbSi1JxzsFLuv2yUBtEi8CFGdA4shf6PfmUQzQMfmEXnwBFwBUS2qlwFLmnJjuiWn7gQmIbQ0iGCZxlRiodOnaWqKABXZ2TngDxAE52DhQ7WWeZgqYe5mKUPlnIIulnmQOdnaDSAlg6lOsscmPgQLT5PCw/9yCrPSyuP01Z/wNIkI7oqgCZbVZ8BNOER/c1jtDSepmmSEf01QBOeg9/N+6cbfzfvX6T97ZE2579k+0Cb85+LfaBN+psH39Em/X2N72hpzn8H+x0tzvmPTT/QtllHVAc356+5KKX9tH+Oc2aastPmmrKTDqj6N2XnfDu/O9ZJK/Q72pxd8IE27fup1jnn87vDTLvUlJlzj/uBNmeqfaBNO6DKzPlX+n+CtPpOmzZx32k82pzfJvPdsb7T3mnvNDvtTvKdxqPNu9bcO41xbO80xjHnd1F9OOa9rrDMS9M/MVoVoZl5aeukX//XUqEBoAn3lLIATbQMqjJvdRHrPic0QBNN3HKqDwI03VCXG0CTjLV0OilRgLY20CxAk4y1eMpPAjTXQDNvQ6MGmgb2koLZQeH0RmU8TbfQFECTGdA997c5v97X77MiS9vuaecnID8F54aV5PvdtNEMydNsG02TfL9vbR9QFvkSXaiNpuRpupW2iZfo2kpz4iXq7mnljWjUSrPSJaqbaas0zTTTjHSJ2maali5RNy+NmmmLcIlq4IKyMM0AtE223y1Ac7Il6ualEUCzov2uEdoqWqIGoRnRplrnpVmEpkVL1CG0RZRGCE1JlugC0ISbSmO0TZC2YjQnWKIWoAk3lcNoVpC2YbRVsEQJoMmW6ALQhJtKgzQtR1sBmnBTWZQm11QOoAFNJUsTb6oNpok1FQE02RJdAJpwU+l5aQagCZfoCtOMVInaVlpR0iXqAJpwiW4ATbhECaDJluiC09SPiuZH0DRAEy5RA9CES3QFaMJNZR+hpbelVSVcoo5DkynRDaABJSpNEy5R4tBESnRBaECJStNkS1QjNNkSNSzaJkFbERpQorI0EqZZhCbb7+4hWpqAJtfvG0KT7XdCaHC/y9Pwfuf3lO+m1TG02lilV81bx1RobCwsL7r1MN+fMECT6XfzfSRZgCbyIXn9/kHNjLR9+bTT3PgStXsiddLSAFpsblMv2u9uXyRrHy0/TtuzUiO0dXxTbReXQa+G0IyvA6K0MwGaHl8HwFftCdOWjxeQBWgL3FQ4rR6WNkAbWQf648EyAE0J0PJh/QC0kU1lPn7ABaFto+vAUAA+J0QlWKLrJ3O1ddHy07RPWgug2dFNtX5SLxahjW4qmz+BArR1OC2xaaObysVP5hWgmdFN5cInAQzQ9Gja5j9p1D5aeJamEFo63HZgU32rPjkg2uA6qNB1wHQ4jYF1UPi0bWwdLBm4sCtMS3yaG1sHS/xBOSC0sXWgA59mZWlrH80/SfN82jqWZlQHbWxT/fyHVIBmxjbVZx00PbapfonRsiDtFz8cC4C2jC3RX3XRxjZVB03J/kXCBaFtdDjeabc0J/sL8J20MAPtvN/jO+2MdtPv6Z12RzOyf8BuA2j6pKnmpdVJaMuPikaT0BQBTTWaVm5pYRLaNi/NnTTVvLQ0A+283/M77YR21+/lX5JGCM2INhUhbaDpeExM83PQFkna0k0Lc9AUHY84Ly2NommMts1Lc7ym8hyawWl4HSxKgGZP6uBHTdMs2orRVlZTmRG0dLg5pw5+LkEzLNpnUjS8qT5n0ew/IJpmNdVveLQE0RYW7QseLcI0vKm+4dECQDvv9zyK5jeUhjdVZtEcSNsYtIVJU5e02ECrg2hfgjTHaCqdWLQvQJpl1IHh0f4I0/A6WIfQwrHYcJqNLNrXD9DiGNpXIM0w6sDxaOGa5g/TxqiDLQjR8MwlHs3DNDhzF/Ic2eIVQbRlEA2/VKROaGgdaCGaIrgODKkBtPoEbZWibXAdWDEaXAe2dl9ga0ssB9OcGA1uqk2KZuGmojKClk9oaFMtbJoGaStaBwtlIZpBaVqOhjaVodRNaxs9jdbByqYZmAbWgRWjLQRmrqMoRgMzdxtBO89SlEZs2voELV/SghRtw+pgeWNavQwn30trXUMOy1zDp1mI9rMXNH916moELZ78uoLFaJZPc9Alj18rZbE6cFK03ym1YnWwUWXKwOsKUSmDZS4Noh1C6hUtX8Ra6aa1xJUOL7YeZQSNEJrxL2j1InHzCFo5hJRXaoFoBqPxP1C5l/e4SFwZ2rcv7+FfJ24aQUunv/5NSOY6Pk0jPaXLS1p8HQBRgmbyHjeNmUt8mkF6yr6m5dfrJXBpSE+5tNPaMlePoh0WTvoABILNdNBWhEbxJY1eP7zn0oCe0hQ+rDgg2GwHzQI9Zcjvd2kLNkdj9t/5cNsPtBUItq2D5gDaRuo1LZ1nR89OEugpqvtQtwWb7qK1l4G+pJVX2VG4NKCn1v0ruVuDbe2hAT1lKaM0Sx3bNaCnNsr7fdqCzQnRiNLVfcLpSh60XTvcdKc1BhvJ0Nbvnx27uBrHbzwcUbiilRcnHri09nbfn2VrHVGD0PgbD01E/opGJ9khQ1v3J99a08ORyJ7I7TTXmh4b9Ww8mmm0v4yuNT1IhKZ32quXOp8OaB1+CcvSbrWN6WG6aNRKO3wVcUN6rDt4IM3seb/T7kbU9tCWVprbaa9zOpytlsykaeh7F+JOaxpRGkfzP+izcKA1/IJfGlChxz/KHW5OqJw9eOrrqcs3aLf4G1o9e/A4grafsPuUtlDTiNoumoW+HFzd0cJJnIcBPXXozHpJO64r6qQ1pIc5LCXk7455doU2zMF2GMCmajN9NLo+6iejku/vdjJiagyN0i5r+lqEcFgsdeQ37iG0dDhtLk1DtHg/PeXw2OWpngJ6626xrX20FaL5Blr8YZpnYZql+2Tb+mgWot3cb1/1fp8wSgPKAKXtL+368TKOErR6vRB2yrY/NJ+2PU8rytQ91fjtTshR7mn7Dc1OEyiD3JqH5ePV6Kej0U4T6KnUSqsfv+MiPRWbzyko6qWtbBow1hJlEDi0IkLznPkpUj2F07JMGeA0frvTtLQF7in8pKJE4mZJmhGgBQlaYg1QECkDnMZvdzsvzcE9hd9VInHJc2j1p0cj6MCXKb/dFwFaliiDKkkzcIXikZgkEjfj9+VXqO2gmbE0B1coTgu9sYafv85De4oYPbXTtoG0pYuW7MAK1cTvKbWkFQjDwTT1A5oZSDMdZaCWqKGc5icu/iRxGUjDExenZcHE3WkKuJdk4ir11UgaddI24F6CiavUb5UDaAKJi45REIg1UiyaF4i1ynsAiVgrvJddItYyi1YlYi2xaEUq1vARz2KxhtOkYg0/uSQVazgtSsUavlqjVKzhtCC1W8Pjx0vs1iRpYHbwaFLZga+JKpUdOK1IZQdOy1LZgT9GltoS4bQklR34oogS2SFIWzCa59GCQKwxA8iLXcDCaVIXsHCa1AUsfFVUqS0RTitSsYbTslSs4QmUpbZEOC1JbYlwWpTaEuHLIkhtiXCal9oS4TSpq0Q4rUpdJcLPsAheJTrSZo01gCYQaxAtScUaPuhRKtZwWhifHZlJ8+OzI0nR8OyIzIUhkB2BR6sC2eF5tDI+O0jxaHl8dhDzHNP47KhMWhyfHYVJC+OzIzNpfnx2ZOaoC2RH4j1SFRjQyKOV8Z9ZKPBoeXx2kOet2jQ+O0jJ0RYZWhyfHZX5UGF8dhQmzY/fd2Tm2mDFmgitCsRa4tGKQKxFHi0LZEdQf8Aeix9rGqYFTnrH8dlBfvEcWhifHaQ0i+bHD2hVRnFoAgNa1WccWhXYdxT1OefBikB2ZPUF5y3IAtmR1R85tCSQHUllDi0KZEdcEkbjx5pFaRqgicYaBRM5NIHsIL8GBq0KZAd5GxjvQRHIDlLOM2hZIDuq2hSDlgSyo6jKoUWBAS0LixbG7zso68KheYHsSIZFk8iOtGYGrUpkR7SJQSsC2UHBJUYjZ4HsoLBFBi0J7DvIE0ATjTX6dwoATTLWSJNn0LxAdpBh0SSyo66kcFqVyI5qK4NWJLKjOA4tS2RH2QrjAZNEdmTKDFqUyI5/sGhBIjv+l5IMTcO0v7NonpMd+BEZNE52yNDqgOzA1419KnEdg+YR2p64v0WzYzRtT9wA0ohxKBZN+6diLb8ckcqgRaXMU7GWDuPbRQtKff5QrOWLaCk82hd4rF0++zkbp3mlvnkm1vyB3k1b8iPZES9vkBg0pUx6IjvK9WKMOK0qtUYwO+4jdXuCVpRyAc4O/A/4hRva30+XJ/kHssPfvLD+hva3M5qmRhIygBtIc385e8y1PpAd4e426ob2H2dDvRWQ5hpqSKO0P53QFkJpW0s0gBtWdzJbeaXcH2snz4XT+j8jL02PsGJ76S/1E5+RNfynavi0AMday0KC2l19cU7zvbEWb+aYT+uOtfMzgNbz709pFY+1ljdLQ+v56zNaf6yF60Hm0+BYa33VN2TUvjql9e7WUsua9DgNzw7dOuArMmp/MAOyozTlHyMt+7MjtbzzlUWrKK15PXTTcl+s1aaUKSxaQmOt+cxsLy32xVpoGpjMooWuWKttz5ZwGp4dun2l6l6awg7D+jfnEYhLdnaswIkhq2bt33dYIHm2PlrqirXYeFuP0/Ds2NDL2nya74m10vp0rKsVqifWYuM0Vw6tqJ5Y8+NoeLkb5Lw08AK47ilYkelegBfAdU+Bhe7cRVMdsVZVKy0xaBWmQet066BllLYB6xT6Ktett6YUstR2WmDQAiNxoYjn03xH4pb2qPGsyxX8xI3tNIXTCkpbsVfc8GlJ8RO3qmZaZdBCR6yl9qVZGNefVEeshaG0qjpiDciajNOy4sdaBm6f8Kt2EaVp9L77bUGa76D5oTR8qRn0vs0TYw5LjZ24GZloD9Oi4iduGksLip+4AaFxLqXwExe5Q4VpGafB+wLXSrOHpcZN3ITQCkzzih9rAaFllFZUB009TXOHvRozcQtESygtKH7iJigII0pTip+44XHa9tQ/YlYQLQC03l+AKBjNwx+9+YmbRtH6f588YjQF0Hr/FoWHZrqCFyxiB60qiFZAmlf8xM3P0/RhqfESN2F3yQCt98+CBoyWsMs8UXUkrh9K84qfuFVhtIi0M1XVQcsgLQC0zi+AiCDNA8u483ttwlCaVx2Jq0Aa9imy5+u6Cpg3FaJl1ZG4aQRtoz3O+YkbwPsUaOMRemgevE8GaH1frloVSEvA8FNRHYmbR9H6vzM6obQI5FLfd0YHlBbA/TM/cdUImtmngE+r8Oh4gFZURxlkmAbun/llkGBae2T+JwXVkbgBpdX2x3akemgepZXmNM9bZdIc73cTcvNjJ8qqowwyTEvNj/1nikwa898Xx+bH/hMF1VEGAae1PnY1pHoSV6G09p4qa1UdiQvfGSiD5LLiJy4+QkAZxC320NJAmqfQkbj4nYEy0KR6Ehce6/YyqGtVHYlbB9KKzT20gtNy62OnLXFprCnQlFof+6/sKVhYU6Dbe+ov5HvKwDNoradtSXWUQcXv1dxTdSs9tILfq7mn/klJdZRBwmnAh5bApVnWnVeCtvb8MvA4rTbTqupJXAUfFvjQ0kMrDFpzGVBi03jnZZvLgD8FC+8Ck2tOXPKqowzCIJrumwLDmgK1NV/BKj20yqF5YGvPL4PMoalWWmDTLO+82svAs2mONaCqtiZuVXwa67yWgmzt+WWgGLQMb+3xg/eS6wRs7fm0wqPhW3u8pxKHFtGtPX5o3ktuQmN2ZD7N8F5y4xuzI/JpK1XW3Xxjdng+zVJh0Rqzo6oOGm81fN6YHaWD5niZ+JvG7EgdtI2Xib9vzI7QQSPyPBr+72dwmuIcX6P/EgQ/Fua9v2qLtdxB08x7h7ZYiz003gwtLbTOpWYosmi+KTuq6jhW3onptuzIPTTLG9B/a8uO2EWratRh+5aacnkYbaPad/80jNa51BTFUbKFOh8b7V98+8w/NT+KtnYuNT1yQHMfrQyjuc6lZkZmh+9bEGncgFbVR4ujaJpy51oNwwa0NzHduAHtjaVvh9Fc7+x/M4xGvQOWhw1odwOmcQPae27jBjT3npsfRbOxl6aAQzaVfj6MVlTn8cthA9o9X78YRTNezXp8pqY9fqXej/fj/Xg/3o/34/14P96P9+P9eD/ej/fj/eg6/g8WRqulQwf2WAAAAABJRU5ErkJggg==")
		if not flag20 then
			return
		end
		local logoFileLight = flag19 and str3.LogoFileLight or str3.LogoFile

		if type(makefolder) == "function" then
			pcall(makefolder, "Cokeboys")
		end

		if writefile then
			pcall(writefile, logoFileLight, flag20)
		end

		if getcustomasset then
			local ok, result = pcall(getcustomasset, logoFileLight)

			if ok and type(result) == "string" and result ~= "" then
				if flag19 then
					value19 = result
					return result
				end
				value18 = result
				return result
			end
		end
	end

	func30 = function()
		local flag21 = func36(tbl9.Theme == "Light")
		if not flag21 then
			return
		end

		for _, item3 in ipairs(list4) do
			local mark = item3:FindFirstChild("Mark")

			if mark and mark:IsA("ImageLabel") then
				mark.Image = flag21
				mark.ImageColor3 = Color3.new(1, 1, 1)
			end
		end
	end

	obj = setmetatable({}, { __mode = "k" })

	func31 = function(param14, param15, param16, flag22)
		local entry1 = obj[param14]

		if entry1 then
			pcall(function()
				entry1:Cancel()
			end)
		end

		local tween = TweenService:Create(param14, TweenInfo.new(param15, flag22 or Enum.EasingStyle.Quart, Enum.EasingDirection.Out), param16)
		obj[param14] = tween
		tween:Play()

		tween.Completed:Connect(function()
			if obj[param14] == tween then
				obj[param14] = nil
			end
		end)
	end

	func32 = function(param17, list6, parent)
		local instance = Instance.new(param17)

		if list6 then
			for k, value20 in pairs(list6) do
				instance[k] = value20
			end
		end

		if parent then
			instance.Parent = parent
		end

		return instance
	end

	createUIStroke = function(parent, param18, flag23)
		local line

		if type(param18) == "string" then
			line = tbl4[param18] or tbl4.line
		else
			local value21 = nil

			if param18 then
				line = param18
				param18 = value21
			else
				line = tbl4.line
				param18 = nil
			end
		end

		local tbl14 = { Color = line, Thickness = flag23 or 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }
		local uiStroke = Instance.new("UIStroke")

		for k, value22 in pairs(tbl14) do
			uiStroke[k] = value22
		end

		if parent then
			uiStroke.Parent = parent
		end

		if param18 then
			uiStroke:SetAttribute("th_stroke", param18)
		end

		return uiStroke
	end

	createUIPadding = function(parent, param19, flag24, flag25, flag26)
		if flag24 == nil then
			flag24 = param19
			flag25 = param19
			flag26 = param19
		end

		local tbl15 = {
			PaddingLeft = UDim.new(0, param19),
			PaddingTop = UDim.new(0, flag24),
			PaddingRight = UDim.new(0, flag25 or param19),
			PaddingBottom = UDim.new(0, flag26 or flag24),
		}

		local uiPadding = Instance.new("UIPadding")

		for k, value23 in pairs(tbl15) do
			uiPadding[k] = value23
		end

		if parent then
			uiPadding.Parent = parent
		end

		return uiPadding
	end

	func33 = function(instance2, param20, param21)
		if type(param20) == "string" then
			if instance2 and param20 then
				instance2:SetAttribute("th_bg", param20)
				local entry2 = tbl4[param20]

				if entry2 and instance2:IsA("GuiObject") then
					instance2.BackgroundColor3 = entry2
				end
			end

			instance2:SetAttribute("th_hover", param21)
		end

		instance2.MouseEnter:Connect(function()
			if instance2:GetAttribute("locked") then
				return
			end
			instance2:SetAttribute("th_over", true)
			local attribute = instance2:GetAttribute("th_hover") or param21
			local flag27 = type(attribute) == "string" and tbl4[attribute] or attribute

			if flag27 then
				func31(instance2, 0.12, { BackgroundColor3 = flag27 })
			end
		end)

		instance2.MouseLeave:Connect(function()
			if instance2:GetAttribute("locked") then
				return
			end
			instance2:SetAttribute("th_over", false)
			local attribute = instance2:GetAttribute("th_bg") or param20
			local flag28 = type(attribute) == "string" and tbl4[attribute] or attribute

			if flag28 then
				func31(instance2, 0.12, { BackgroundColor3 = flag28 })
			end
		end)
	end

	func34 = function(parent, flag29, param22, num1)
		local tbl16 = { BackgroundTransparency = 1, Size = UDim2.fromOffset(16, 16), ZIndex = num1 }
		local frame = Instance.new("Frame")

		for k, value24 in pairs(tbl16) do
			frame[k] = value24
		end

		if parent then
			frame.Parent = parent
		end

		local value25 = frame

		local function createFrame2(param23, param24, param25, param26, param27)
			local tbl17 = {
				BackgroundColor3 = param22,
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(param23, param24),
				Size = UDim2.fromOffset(param25, param26),
				ZIndex = num1 + 1,
			}

			local value26 = value25
			local frame2 = Instance.new("Frame")

			for k, value27 in pairs(tbl17) do
				frame2[k] = value27
			end

			if value26 then
				frame2.Parent = value26
			end

			if param27 then
				local tbl18 = { CornerRadius = UDim.new(0, param27) }
				local uiCorner = Instance.new("UICorner")

				for k, value28 in pairs(tbl18) do
					uiCorner[k] = value28
				end

				if frame2 then
					uiCorner.Parent = frame2
				end
			end

			return frame2
		end

		local function createFrame3(param28, param29, param30, param31, flag30)
			local tbl19 = {
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(param28, param29),
				Size = UDim2.fromOffset(param30, param31),
				ZIndex = num1 + 1,
			}

			local value29 = value25
			local frame2 = Instance.new("Frame")

			for k, value30 in pairs(tbl19) do
				frame2[k] = value30
			end

			if value29 then
				frame2.Parent = value29
			end

			local tbl20 = { CornerRadius = UDim.new(0, flag30 or 8) }
			local uiCorner = Instance.new("UICorner")

			for k, value31 in pairs(tbl20) do
				uiCorner[k] = value31
			end

			if frame2 then
				uiCorner.Parent = frame2
			end

			createUIStroke(frame2, param22, 1.2)
			return frame2
		end

		if flag29 == "egg" then
			createFrame2(4, 2, 8, 12, 5)
			return value25
		end

		if flag29 == "aim" then
			createFrame3(2, 2, 12, 12, 6)
			createFrame2(7, 7, 2, 2, 1)
			createFrame2(7, 0, 2, 3, 0)
			createFrame2(7, 13, 2, 3, 0)
			createFrame2(0, 7, 3, 2, 0)
			createFrame2(13, 7, 3, 2, 0)
			return value25
		end

		if flag29 == "spark" then
			createFrame2(7, 1, 2, 14, 1)
			createFrame2(1, 7, 14, 2, 1)
			createFrame2(4, 4, 2, 2, 1)
			createFrame2(10, 10, 2, 2, 1)
			return value25
		end

		if flag29 == "grid" then
			createFrame2(1, 1, 6, 6, 2)
			createFrame2(9, 1, 6, 6, 2)
			createFrame2(1, 9, 6, 6, 2)
			createFrame2(9, 9, 6, 6, 2)
			return value25
		end

		if flag29 == "layers" then
			createFrame2(2, 3, 12, 2, 1)
			createFrame2(2, 7, 12, 2, 1)
			createFrame2(2, 11, 12, 2, 1)
			return value25
		end

		if flag29 == "out" then
			createFrame3(1, 3, 10, 10, 3)
			createFrame2(8, 2, 6, 2, 1)
			createFrame2(12, 2, 2, 6, 1)
			return value25
		end

		if flag29 == "cog" then
			createFrame3(3, 3, 10, 10, 5)
			createFrame2(7, 1, 2, 3, 1)
			createFrame2(7, 12, 2, 3, 1)
			createFrame2(1, 7, 3, 2, 1)
			createFrame2(12, 7, 3, 2, 1)
			return value25
		end

		if flag29 == "rocket" then
			createFrame2(6, 1, 4, 9, 2)
			createFrame2(7, 0, 2, 3, 1)
			createFrame2(4, 8, 3, 4, 1)
			createFrame2(9, 8, 3, 4, 1)
			createFrame2(7, 11, 2, 4, 1)
			return value25
		end

		if flag29 == "search" then
			createFrame3(1, 1, 10, 10, 5)
			createFrame2(9, 10, 5, 2, 1).Rotation = 40
			return value25
		end

		if flag29 == "info" then
			createFrame3(2, 2, 12, 12, 6)
			createFrame2(7, 4, 2, 2, 1)
			createFrame2(7, 7, 2, 5, 1)
		end
		-- 𝚂𝚘𝚞𝚛𝚌𝚎 𝙻𝚎𝚊𝚔 (𝚂𝙻) | https://discord.gg/x7YbZeezpm

		return value25
	end

	createFrame = function(parent, num2, flag31)
		local n = flag31 or 18
		local tbl21 = { Name = "COKEBOYS", BackgroundTransparency = 1, Size = UDim2.fromOffset(n, n), ZIndex = num2 }
		local frame = Instance.new("Frame")

		for k, value32 in pairs(tbl21) do
			frame[k] = value32
		end

		if parent then
			frame.Parent = parent
		end

		local flag32 = func36(false)

		local tbl22 = {
			Name = "Mark",
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			Image = flag32 or "",
			ImageColor3 = Color3.new(1, 1, 1),
			ScaleType = Enum.ScaleType.Fit,
			ZIndex = num2 + 1,
		}

		local imageLabel = Instance.new("ImageLabel")

		for k, value33 in pairs(tbl22) do
			imageLabel[k] = value33
		end

		if frame then
			imageLabel.Parent = frame
		end

		list4[#list4 + 1] = frame
		return frame
	end
end

local obj1

do
	local function func37()
		return localPlayer:WaitForChild("PlayerGui")
	end

	local result1 = func37()
	local obj2 = result1:FindFirstChild(str4)

	if obj2 then
		obj2:Destroy()
	end

	local CoreGui = game:GetService("CoreGui")

	for _, item4 in ipairs({ CoreGui, CoreGui:FindFirstChild("RobloxGui") }) do
		if item4 then
			local obj3 = item4:FindFirstChild(str4)

			if obj3 then
				pcall(function()
					obj3:Destroy()
				end)
			end
		end
	end

	local phUi = result1:FindFirstChild("PH_UI")

	if phUi then
		local cokeboysUnloadUid2 = (getgenv and getgenv() or _G).CokeboysUnloadUid

		if cokeboysUnloadUid2 == nil or cokeboysUnloadUid == tostring(cokeboysUnloadUid2) then
			phUi:Destroy()
		end
	end

	local tbl23 = {
		Name = str4,
		Enabled = false,
		ResetOnSpawn = false,
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		DisplayOrder = 1200,
	}

	local result15 = func37()
	local screenGui = Instance.new("ScreenGui")

	if tbl23 then
		for k, value34 in pairs(tbl23) do
			screenGui[k] = value34
		end
	end

	if result15 then
		screenGui.Parent = result15
	end

	obj1 = screenGui
end

pcall(function()
	if syn and syn.protect_gui then
		syn.protect_gui(obj1)
	end
end)

local value35

do
	local tbl24 = {
		Name = "Overlay",
		BackgroundTransparency = 1,
		Text = "",
		AutoButtonColor = false,
		Size = UDim2.fromScale(1, 1),
		Visible = false,
		ZIndex = 80,
	}

	local textButton = Instance.new("TextButton")

	for k, value36 in pairs(tbl24) do
		textButton[k] = value36
	end

	if obj1 then
		textButton.Parent = obj1
	end

	value35 = textButton
end

local value37
local uiScale = Instance.new("UIScale")

for k, value38 in pairs({ Scale = 1 }) do
	uiScale[k] = value38
end

value37 = uiScale
local obj4

do
	local tbl25 = {
		Name = "Window",
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Size = UDim2.fromOffset(n2, n3),
		BackgroundColor3 = tbl4.bg,
		BorderSizePixel = 0,
		ClipsDescendants = false,
		Visible = false,
		ZIndex = 10,
	}

	local frame = Instance.new("Frame")

	if tbl25 then
		for k, value39 in pairs(tbl25) do
			frame[k] = value39
		end
	end

	if obj1 then
		frame.Parent = obj1
	end

	obj4 = frame
end

do
	local tbl26 = { CornerRadius = UDim.new(0, 12) }
	local uiCorner = Instance.new("UICorner")

	for k, value40 in pairs(tbl26) do
		uiCorner[k] = value40
	end

	if obj4 then
		uiCorner.Parent = obj4
	end
end

do
	local tbl27 = { Color = tbl4.line or tbl4.line, Thickness = 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }
	local uiStroke = Instance.new("UIStroke")

	for k, value41 in pairs(tbl27) do
		uiStroke[k] = value41
	end

	if obj4 then
		uiStroke.Parent = obj4
	end

	uiStroke:SetAttribute("th_stroke", "line")
end

value37.Parent = obj4

if obj4 then
	obj4:SetAttribute("th_bg", "bg")
	local bg = tbl4.bg

	if bg and obj4:IsA("GuiObject") then
		obj4.BackgroundColor3 = bg
	end
end

do
	local tbl28 = {
		Name = "Shadow",
		BackgroundColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 0.7,
		Position = UDim2.fromOffset(8, 12),
		Size = UDim2.new(1, 0, 1, 0),
		ZIndex = 9,
		BorderSizePixel = 0,
	}

	local frame = Instance.new("Frame")

	for k, value42 in pairs(tbl28) do
		frame[k] = value42
	end

	if obj4 then
		frame.Parent = obj4
	end
end

do
	local shadow = obj4.Shadow
	local tbl29 = { CornerRadius = UDim.new(0, 14) }
	local uiCorner = Instance.new("UICorner")

	for k, value43 in pairs(tbl29) do
		uiCorner[k] = value43
	end

	if shadow then
		uiCorner.Parent = shadow
	end
end

do
	local tbl30 = {
		Name = "HeadBar",
		BackgroundColor3 = tbl4.rail,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 82),
		ZIndex = 11,
	}

	local frame = Instance.new("Frame")

	for k, value44 in pairs(tbl30) do
		frame[k] = value44
	end

	if obj4 then
		frame.Parent = obj4
	end

	if frame then
		frame:SetAttribute("th_bg", "rail")
		local rail = tbl4.rail

		if rail and frame:IsA("GuiObject") then
			frame.BackgroundColor3 = rail
		end
	end

	local tbl31 = { CornerRadius = UDim.new(0, 12) }
	local uiCorner = Instance.new("UICorner")

	for k, value45 in pairs(tbl31) do
		uiCorner[k] = value45
	end

	if frame then
		uiCorner.Parent = frame
	end

	local tbl32 = {
		BackgroundColor3 = tbl4.rail,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 0, 1, -16),
		Size = UDim2.new(1, 0, 0, 16),
		ZIndex = 11,
	}

	local frame2 = Instance.new("Frame")

	for k, value46 in pairs(tbl32) do
		frame2[k] = value46
	end

	if frame then
		frame2.Parent = frame
	end

	if frame2 then
		frame2:SetAttribute("th_bg", "rail")
		local rail = tbl4.rail

		if rail and frame2:IsA("GuiObject") then
			frame2.BackgroundColor3 = rail
		end
	end
end

local obj5

do
	local tbl33 = {
		Name = "Rail",
		BackgroundColor3 = tbl4.rail,
		BorderSizePixel = 0,
		Size = UDim2.new(0, n4, 1, 0),
		ZIndex = 11,
	}

	local frame = Instance.new("Frame")

	for k, value47 in pairs(tbl33) do
		frame[k] = value47
	end

	if obj4 then
		frame.Parent = obj4
	end

	obj5 = frame
end

if obj5 then
	obj5:SetAttribute("th_bg", "rail")
	local rail = tbl4.rail

	if rail and obj5:IsA("GuiObject") then
		obj5.BackgroundColor3 = rail
	end
end

do
	local tbl34 = { CornerRadius = UDim.new(0, 12) }
	local uiCorner = Instance.new("UICorner")

	for k, value48 in pairs(tbl34) do
		uiCorner[k] = value48
	end

	if obj5 then
		uiCorner.Parent = obj5
	end
end

do
	local tbl35 = {
		BackgroundColor3 = tbl4.rail,
		BorderSizePixel = 0,
		Position = UDim2.new(1, -16, 0, 0),
		Size = UDim2.new(0, 16, 1, 0),
		ZIndex = 11,
	}

	local frame = Instance.new("Frame")

	for k, value49 in pairs(tbl35) do
		frame[k] = value49
	end

	if obj5 then
		frame.Parent = obj5
	end

	if frame then
		frame:SetAttribute("th_bg", "rail")
		local rail = tbl4.rail

		if rail and frame:IsA("GuiObject") then
			frame.BackgroundColor3 = rail
		end
	end
end

do
	local tbl36 = {
		BackgroundColor3 = tbl4.line,
		BorderSizePixel = 0,
		Position = UDim2.new(1, -1, 0, 2),
		Size = UDim2.new(0, 1, 1, -2),
		ZIndex = 12,
	}

	local frame = Instance.new("Frame")

	for k, value50 in pairs(tbl36) do
		frame[k] = value50
	end

	if obj5 then
		frame.Parent = obj5
	end

	if frame then
		frame:SetAttribute("th_bg", "line")
		local line = tbl4.line

		if line and frame:IsA("GuiObject") then
			frame.BackgroundColor3 = line
		end
	end
end

obj5.Active = true
local num3, value51

do
	local tbl37 = {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, -18),
		Position = UDim2.fromOffset(0, 12),
		CanvasSize = UDim2.new(0, 0, 0, 0),
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
	}

	num3 = not flag13
	tbl37.ScrollBarThickness = num3 and 0 or 5
	tbl37.BorderSizePixel = 0
	tbl37.ZIndex = 12
	local scrollingFrame = Instance.new("ScrollingFrame")

	for k, value52 in pairs(tbl37) do
		scrollingFrame[k] = value52
	end

	if obj5 then
		scrollingFrame.Parent = obj5
	end

	value51 = scrollingFrame
end

createUIPadding(value51, 10, 2, 10, 12)

do
	local tbl38 = {
		FillDirection = Enum.FillDirection.Vertical,
		Padding = UDim.new(0, 3),
		SortOrder = Enum.SortOrder.LayoutOrder,
	}

	local uiListLayout = Instance.new("UIListLayout")

	for k, value53 in pairs(tbl38) do
		uiListLayout[k] = value53
	end

	if value51 then
		uiListLayout.Parent = value51
	end
end

do
	local tbl39 = { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 40), LayoutOrder = 0, ZIndex = 12 }
	local frame = Instance.new("Frame")

	for k, value54 in pairs(tbl39) do
		frame[k] = value54
	end

	if value51 then
		frame.Parent = value51
	end

	createFrame(frame, 13, 28).Position = UDim2.fromOffset(0, 2)

	local tbl40 = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(34, 3),
		Size = UDim2.new(1, -34, 0, 16),
		Font = tbl5.title,
		Text = str3.Title,
		TextColor3 = tbl4.text,
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 13,
	}

	local textLabel = Instance.new("TextLabel")

	for k, value55 in pairs(tbl40) do
		textLabel[k] = value55
	end

	if frame then
		textLabel.Parent = frame
	end

	if textLabel then
		textLabel:SetAttribute("th_text", "text")
		local text = tbl4.text

		if text then
			textLabel.TextColor3 = text
		end
	end

	local tbl41 = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(34, 20),
		Size = UDim2.new(1, -34, 0, 12),
		Font = tbl5.mono,
		Text = str3.Product,
		TextColor3 = tbl4.mute,
		TextSize = 9,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 13,
	}

	local textLabel2 = Instance.new("TextLabel")

	for k, value56 in pairs(tbl41) do
		textLabel2[k] = value56
	end

	if frame then
		textLabel2.Parent = frame
	end

	if textLabel2 then
		textLabel2:SetAttribute("th_text", "mute")
		local mute = tbl4.mute

		if mute then
			textLabel2.TextColor3 = mute
		end
	end
end

local value57

do
	local tbl42 = {
		Name = "Main",
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(n4, 2),
		Size = UDim2.new(1, -n4, 1, -2),
		ZIndex = 11,
	}

	local frame = Instance.new("Frame")

	for k, value58 in pairs(tbl42) do
		frame[k] = value58
	end

	if obj4 then
		frame.Parent = obj4
	end

	value57 = frame
end

local value59

do
	local tbl43 = {
		Name = "Header",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 46),
		ZIndex = 12,
		Active = true,
	}

	local frame = Instance.new("Frame")

	for k, value60 in pairs(tbl43) do
		frame[k] = value60
	end

	if value57 then
		frame.Parent = value57
	end

	value59 = frame
end

local obj6, value61, value62, value63, obj7, func38, createFrame2, flag33, flag34, gen
local func39, func40, func41, func42, func43, func44, func45, func46, func47, func48
local func49, func50, func51, func52, createTextLabel, Plot, Serverhop, Misc, Webhook, Settings
local greatBloomStatus, riftStatus, hungryMonsterStatus, boss, lightVsDarkness, value64

do
	local tbl44 = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(14, 8),
		Size = UDim2.new(1, -220, 0, 18),
		Font = tbl5.title,
		Text = "Auto Steal",
		TextColor3 = tbl4.text,
		TextSize = 16,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 12,
	}

	local textLabel = Instance.new("TextLabel")

	for k, value65 in pairs(tbl44) do
		textLabel[k] = value65
	end

	if value59 then
		textLabel.Parent = value59
	end

	local obj8 = textLabel

	if obj8 then
		obj8:SetAttribute("th_text", "text")
		local text = tbl4.text

		if text then
			obj8.TextColor3 = text
		end
	end

	local tbl45 = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(14, 26),
		Size = UDim2.new(1, -220, 0, 14),
		Font = tbl5.body,
		Text = "idle",
		TextColor3 = tbl4.dim,
		TextSize = 11,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 12,
	}

	local textLabel2 = Instance.new("TextLabel")

	for k, value66 in pairs(tbl45) do
		textLabel2[k] = value66
	end

	if value59 then
		textLabel2.Parent = value59
	end

	local obj9 = textLabel2

	if obj9 then
		obj9:SetAttribute("th_text", "dim")
		local dim = tbl4.dim

		if dim then
			obj9.TextColor3 = dim
		end
	end

	local function createTextLabel2(param32, param33)
		local tbl46 = {
			AnchorPoint = Vector2.new(1, 0.5),
			BackgroundColor3 = tbl4.card,
			Position = UDim2.new(1, param33, 0.5, 2),
			Size = UDim2.fromOffset(param32, 22),
			Font = tbl5.mono,
			Text = "—",
			TextColor3 = tbl4.dim,
			TextSize = 10,
			ZIndex = 12,
		}

		local value67 = value59
		local textLabel3 = Instance.new("TextLabel")

		for k, value68 in pairs(tbl46) do
			textLabel3[k] = value68
		end

		if value67 then
			textLabel3.Parent = value67
		end

		local tbl47 = { CornerRadius = UDim.new(0, 7) }
		local uiCorner = Instance.new("UICorner")

		for k, value69 in pairs(tbl47) do
			uiCorner[k] = value69
		end

		if textLabel3 then
			uiCorner.Parent = textLabel3
		end

		local tbl48 = { Color = tbl4.line or tbl4.line, Thickness = 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }
		local uiStroke = Instance.new("UIStroke")

		for k, value70 in pairs(tbl48) do
			uiStroke[k] = value70
		end

		if textLabel3 then
			uiStroke.Parent = textLabel3
		end

		uiStroke:SetAttribute("th_stroke", "line")

		if textLabel3 then
			textLabel3:SetAttribute("th_bg", "card")
			local card = tbl4.card

			if card and textLabel3:IsA("GuiObject") then
				textLabel3.BackgroundColor3 = card
			end
		end

		if textLabel3 then
			textLabel3:SetAttribute("th_text", "dim")
			local dim = tbl4.dim
			if not dim then
				return textLabel3
			end
			textLabel3.TextColor3 = dim
		end

		return textLabel3
	end

	local tbl49 = {
		AnchorPoint = Vector2.new(1, 0.5),
		BackgroundColor3 = tbl4.card,
		Position = UDim2.new(1, -48, 0.5, 2),
		Size = UDim2.fromOffset(num3 and 22 or 32, num3 and 22 or 32),
		Font = tbl5.mid,
		Text = "–",
		TextColor3 = tbl4.dim,
		TextSize = 14,
		AutoButtonColor = false,
		ZIndex = 12,
	}

	local textButton = Instance.new("TextButton")

	for k, value71 in pairs(tbl49) do
		textButton[k] = value71
	end

	if value59 then
		textButton.Parent = value59
	end

	obj6 = textButton
	local tbl50 = { CornerRadius = UDim.new(0, 7) }
	local uiCorner = Instance.new("UICorner")

	for k, value72 in pairs(tbl50) do
		uiCorner[k] = value72
	end

	if obj6 then
		uiCorner.Parent = obj6
	end

	local tbl51 = { Color = tbl4.line or tbl4.line, Thickness = 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }
	local uiStroke = Instance.new("UIStroke")

	for k, value73 in pairs(tbl51) do
		uiStroke[k] = value73
	end

	if obj6 then
		uiStroke.Parent = obj6
	end

	uiStroke:SetAttribute("th_stroke", "line")
	func33(obj6, "card", "lift")

	if obj6 then
		obj6:SetAttribute("th_text", "dim")
		local dim = tbl4.dim

		if dim then
			obj6.TextColor3 = dim
		end
	end

	local imageLabel = Instance.new("ImageLabel")
	imageLabel.Name = "CokeboysTopRightLogo"
	imageLabel.AnchorPoint = Vector2.new(1, 0.5)
	imageLabel.BackgroundTransparency = 1
	imageLabel.Position = UDim2.new(1, -10, 0.5, 2)
	imageLabel.Size = UDim2.fromOffset(num3 and 30 or 38, num3 and 30 or 38)
	imageLabel.Image = "rbxthumb://type=Asset&id=128335611339738&w=420&h=420"
	imageLabel.ImageColor3 = Color3.new(1, 1, 1)
	imageLabel.ScaleType = Enum.ScaleType.Fit
	imageLabel.ZIndex = 13
	imageLabel.Parent = value59
	value61 = createTextLabel2(52, -90)
	value62 = createTextLabel2(56, -146)

	local tbl52 = {
		BackgroundColor3 = tbl4.card,
		Position = UDim2.fromOffset(14, 46),
		Size = UDim2.new(1, -28, 0, num3 and 28 or 36),
		ZIndex = 12,
	}

	local frame = Instance.new("Frame")

	for k, value74 in pairs(tbl52) do
		frame[k] = value74
	end

	if value57 then
		frame.Parent = value57
	end

	local tbl53 = { CornerRadius = UDim.new(0, 9) }
	local uiCorner2 = Instance.new("UICorner")

	for k, value75 in pairs(tbl53) do
		uiCorner2[k] = value75
	end

	if frame then
		uiCorner2.Parent = frame
	end

	if frame then
		frame:SetAttribute("th_bg", "card")
		local card = tbl4.card

		if card and frame:IsA("GuiObject") then
			frame.BackgroundColor3 = card
		end
	end

	local tbl54 = { Color = tbl4.line or tbl4.line, Thickness = 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }
	local uiStroke2 = Instance.new("UIStroke")

	for k, value76 in pairs(tbl54) do
		uiStroke2[k] = value76
	end

	if frame then
		uiStroke2.Parent = frame
	end

	uiStroke2:SetAttribute("th_stroke", "line")
	local value77 = uiStroke2
	value63 = func34(frame, "search", tbl4.mute, 13)
	value63.Position = UDim2.fromOffset(8, 6)

	local tbl55 = {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -40, 1, 0),
		Position = UDim2.fromOffset(30, 0),
		Font = tbl5.body,
		PlaceholderText = "Filter this page",
		PlaceholderColor3 = tbl4.mute,
		Text = "",
		TextColor3 = tbl4.text,
		TextSize = num3 and 12 or 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		ClearTextOnFocus = false,
		ZIndex = 13,
	}

	local textBox = Instance.new("TextBox")

	if tbl55 then
		for k, value78 in pairs(tbl55) do
			textBox[k] = value78
		end
	end

	if frame then
		textBox.Parent = frame
	end

	obj7 = textBox

	if obj7 then
		obj7:SetAttribute("th_text", "text")
		local text = tbl4.text

		if text then
			obj7.TextColor3 = text
		end
	end

	if obj7 then
		obj7:SetAttribute("th_placeholder", "mute")
		local mute = tbl4.mute

		if mute and obj7:IsA("TextBox") then
			obj7.PlaceholderColor3 = mute
		end
	end

	obj7.Focused:Connect(function()
		func31(value77, 0.12, { Color = tbl4.accent })
	end)

	obj7.FocusLost:Connect(function()
		func31(value77, 0.12, { Color = tbl4.line })
	end)

	num3 = num3 and 80 or 88

	local tbl56 = {
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(0, num3),
		Size = UDim2.new(1, 0, 1, -num3),
		ClipsDescendants = true,
		ZIndex = 12,
	}

	local frame2 = Instance.new("Frame")

	for k, value79 in pairs(tbl56) do
		frame2[k] = value79
	end

	if value57 then
		frame2.Parent = value57
	end

	local value80 = frame2

	local function func53(param34, param35)
		local tbl57 = {
			Name = param34,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			CanvasSize = UDim2.new(0, 0, 0, 0),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			ScrollBarThickness = not flag13 and 4 or 8,
			ScrollBarImageColor3 = tbl4.line,
			BorderSizePixel = 0,
			Visible = false,
			ZIndex = 13,
		}

		local value81 = value80
		local scrollingFrame = Instance.new("ScrollingFrame")

		for k, value82 in pairs(tbl57) do
			scrollingFrame[k] = value82
		end

		if value81 then
			scrollingFrame.Parent = value81
		end

		if scrollingFrame then
			scrollingFrame:SetAttribute("th_scroll", "line")
			local line = tbl4.line

			if line and scrollingFrame:IsA("ScrollingFrame") then
				scrollingFrame.ScrollBarImageColor3 = line
			end
		end

		createUIPadding(scrollingFrame, 12, 4, 12, 14)

		local tbl58 = {
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, 8),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}

		local uiListLayout = Instance.new("UIListLayout")

		for k, value83 in pairs(tbl58) do
			uiListLayout[k] = value83
		end

		if scrollingFrame then
			uiListLayout.Parent = scrollingFrame
		end

		local tbl59 = { name = param34, subtitle = param35, scroll = scrollingFrame, items = {}, n = 0, card = nil, lastRule = nil }
		tbl12[param34] = tbl59
		list2[#list2 + 1] = param34
		return tbl59
	end

	local tbl60 = {}

	local function func54(param36, list7, num4)
		local tbl61 = {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 18),
			Font = tbl5.mono,
			Text = param36,
			TextColor3 = tbl4.mute,
			TextSize = 9,
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = num4,
			ZIndex = 12,
		}

		local value84 = value51
		local textLabel3 = Instance.new("TextLabel")

		for k, value85 in pairs(tbl61) do
			textLabel3[k] = value85
		end

		if value84 then
			textLabel3.Parent = value84
		end

		if textLabel3 then
			textLabel3:SetAttribute("th_text", "mute")
			local mute = tbl4.mute

			if mute then
				textLabel3.TextColor3 = mute
			end
		end

		for i, item5 in ipairs(list7) do
			local tbl62 = {
				BackgroundColor3 = tbl4.rail,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, not flag13 and 26 or 34),
				Text = "",
				AutoButtonColor = false,
				LayoutOrder = num4 + i,
				ZIndex = 12,
			}

			local value86 = value51
			local textButton2 = Instance.new("TextButton")

			for k, value87 in pairs(tbl62) do
				textButton2[k] = value87
			end

			if value86 then
				textButton2.Parent = value86
			end

			local value88 = textButton2
			local tbl63 = { CornerRadius = UDim.new(0, 6) }
			local uiCorner3 = Instance.new("UICorner")

			for k, value89 in pairs(tbl63) do
				uiCorner3[k] = value89
			end

			if value88 then
				uiCorner3.Parent = value88
			end

			local value90 = func34(value88, tbl8[item5] or "layers", tbl4.mute, 13)
			value90.Name = "Ico"
			value90.Position = UDim2.fromOffset(6, 5)

			local tbl64 = {
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(26, 0),
				Size = UDim2.new(1, -30, 1, 0),
				Font = tbl5.body,
				Text = item5,
				TextColor3 = tbl4.dim,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				ZIndex = 13,
			}

			local textLabel4 = Instance.new("TextLabel")

			for k, value91 in pairs(tbl64) do
				textLabel4[k] = value91
			end

			if value88 then
				textLabel4.Parent = value88
			end

			if textLabel4 then
				textLabel4:SetAttribute("th_text", "dim")
				local dim = tbl4.dim

				if dim then
					textLabel4.TextColor3 = dim
				end
			end

			tbl60[item5] = { btn = value88, lab = textLabel4, ico = value90 }

			value88.MouseEnter:Connect(function()
				if tbl60[item5].on then
					return
				end
				func31(value88, 0.12, { BackgroundTransparency = 0, BackgroundColor3 = tbl4.lift })
			end)

			value88.MouseLeave:Connect(function()
				if tbl60[item5].on then
					return
				end
				func31(value88, 0.12, { BackgroundTransparency = 1 })
			end)

			value88.Activated:Connect(function()
				setPage(item5)
			end)
		end
	end

	func38 = function(list8, imageColor3)
		for _, descendant in ipairs(list8:GetDescendants()) do
			if descendant:IsA("ImageLabel") then
				descendant.ImageColor3 = imageColor3
			elseif descendant:IsA("Frame") and descendant.BackgroundTransparency < 1 then
				descendant.BackgroundColor3 = imageColor3
			elseif descendant:IsA("UIStroke") then
				descendant.Color = imageColor3
			end
		end
	end

	setPage = function(text)
		local entry3 = tbl12[text]
		if not entry3 then
			return
		end
		value16 = entry3

		for k, value92 in pairs(tbl60) do
			local on = k == text
			value92.on = on
			value92.lab.TextColor3 = on and tbl4.text or tbl4.dim
			value92.lab.Font = on and tbl5.mid or tbl5.body
			value92.btn.BackgroundColor3 = on and tbl4.card or tbl4.rail
			value92.btn.BackgroundTransparency = not on and 1 or 0
			func38(value92.ico, on and tbl4.accent or tbl4.mute)
		end

		for _, value93 in pairs(tbl12) do
			value93.scroll.Visible = value93 == entry3

			if value93 == entry3 then
				value93.scroll.CanvasPosition = Vector2.zero
			end
		end

		obj8.Text = text
		obj9.Text = entry3.subtitle or ""
		func28(entry3, obj7.Text)
	end

	func28 = function(list9, flag35)
		local lowered = string.lower(flag35 or "")
		local inst = nil
		local flag36 = false

		for _, item in ipairs(list9.items) do
			if item.kind == "section" then
				if inst then
					inst.Visible = lowered == "" or flag36
				end

				inst = item.inst
				flag36 = false
			else
				local visible = lowered == "" or string.find(item.q, lowered, 1, true) ~= nil

				if visible then
					visible = not item.visibleIf or item.visibleIf() or false
				end

				item.inst.Visible = visible

				if visible then
					flag36 = true
				end
			end
		end

		if inst then
			inst.Visible = lowered == "" or flag36
		end
	end

	obj7:GetPropertyChangedSignal("Text"):Connect(function()
		if value16 then
			func28(value16, obj7.Text)
		end
	end)

	createFrame2 = function(list10, param37)
		list10.lastRule = nil

		local tbl65 = {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 0),
			BackgroundColor3 = tbl4.card,
			BorderSizePixel = 0,
		}

		list10.n = list10.n + 1
		tbl65.LayoutOrder = list10.n
		tbl65.ZIndex = 13
		local scroll = list10.scroll
		local frame3 = Instance.new("Frame")

		for k, value94 in pairs(tbl65) do
			frame3[k] = value94
		end

		if scroll then
			frame3.Parent = scroll
		end

		local tbl66 = { CornerRadius = UDim.new(0, 8) }
		local uiCorner3 = Instance.new("UICorner")

		for k, value95 in pairs(tbl66) do
			uiCorner3[k] = value95
		end

		if frame3 then
			uiCorner3.Parent = frame3
		end

		local tbl67 = { Color = tbl4.line or tbl4.line, Thickness = 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }
		local uiStroke3 = Instance.new("UIStroke")

		for k, value96 in pairs(tbl67) do
			uiStroke3[k] = value96
		end

		if frame3 then
			uiStroke3.Parent = frame3
		end

		uiStroke3:SetAttribute("th_stroke", "line")

		if frame3 then
			frame3:SetAttribute("th_bg", "card")
			local card = tbl4.card

			if card and frame3:IsA("GuiObject") then
				frame3.BackgroundColor3 = card
			end
		end

		local tbl68 = {
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, 0),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}

		local uiListLayout = Instance.new("UIListLayout")

		for k, value97 in pairs(tbl68) do
			uiListLayout[k] = value97
		end

		if frame3 then
			uiListLayout.Parent = frame3
		end

		local tbl69 = { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 26), LayoutOrder = 0, ZIndex = 14 }
		local frame4 = Instance.new("Frame")

		for k, value98 in pairs(tbl69) do
			frame4[k] = value98
		end

		if frame3 then
			frame4.Parent = frame3
		end

		local tbl70 = {
			BackgroundColor3 = tbl4.accent,
			BorderSizePixel = 0,
			Position = UDim2.fromOffset(12, 12),
			Size = UDim2.fromOffset(10, 2),
			ZIndex = 15,
		}

		local frame5 = Instance.new("Frame")

		for k, value99 in pairs(tbl70) do
			frame5[k] = value99
		end

		if frame4 then
			frame5.Parent = frame4
		end

		if frame5 then
			frame5:SetAttribute("th_bg", "accent")
			local accent = tbl4.accent

			if accent and frame5:IsA("GuiObject") then
				frame5.BackgroundColor3 = accent
			end
		end

		local tbl71 = {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(28, 0),
			Size = UDim2.new(1, -36, 1, 0),
			Font = tbl5.mono,
			Text = param37,
			TextColor3 = tbl4.dim,
			TextSize = 10,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 15,
		}

		local textLabel3 = Instance.new("TextLabel")

		for k, value100 in pairs(tbl71) do
			textLabel3[k] = value100
		end

		if frame4 then
			textLabel3.Parent = frame4
		end

		local textLabel4 = frame4:FindFirstChildWhichIsA("TextLabel")

		if textLabel4 then
			textLabel4:SetAttribute("th_text", "dim")
			local dim = tbl4.dim

			if dim then
				textLabel4.TextColor3 = dim
			end
		end

		list10.card = frame3
		list10.items[#list10.items + 1] = { kind = "section", inst = frame3, q = string.lower(param37) }
		return frame3
	end

	local function func55(list11, str5, flag37, flag38)
		local n = flag38 or not flag13 and 132 or 140
		local card = list11.card or list11.scroll
		local flag39 = not flag37
		local n5 = flag39 and 36 or 46

		if flag13 then
			n5 = not flag37 and 44 or 54
		end

		local tbl72 = { BackgroundColor3 = tbl4.card, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, n5) }
		list11.n = list11.n + 1
		tbl72.LayoutOrder = list11.n
		tbl72.ZIndex = 14
		local frame3 = Instance.new("Frame")

		for k, value101 in pairs(tbl72) do
			frame3[k] = value101
		end

		if card then
			frame3.Parent = card
		end

		local obj10 = frame3

		local tbl73 = {
			BackgroundColor3 = tbl4.line,
			BorderSizePixel = 0,
			Position = UDim2.new(0, 14, 0, 0),
			Size = UDim2.new(1, -28, 0, 1),
			Visible = list11.lastRule ~= nil,
			ZIndex = 15,
		}

		local frame4 = Instance.new("Frame")

		for k, value102 in pairs(tbl73) do
			frame4[k] = value102
		end

		if obj10 then
			frame4.Parent = obj10
		end

		list11.lastRule = frame4

		if frame4 then
			frame4:SetAttribute("th_bg", "line")
			local line = tbl4.line

			if line and frame4:IsA("GuiObject") then
				frame4.BackgroundColor3 = line
			end
		end

		if obj10 then
			obj10:SetAttribute("th_bg", "card")
			local card2 = tbl4.card

			if card2 and obj10:IsA("GuiObject") then
				obj10.BackgroundColor3 = card2
			end
		end

		obj10:SetAttribute("th_hover", "lift")
		obj10:SetAttribute("th_row", true)

		obj10.MouseEnter:Connect(function()
			obj10:SetAttribute("th_over", true)
			func31(obj10, 0.1, { BackgroundTransparency = 0, BackgroundColor3 = tbl4.lift })
		end)

		obj10.MouseLeave:Connect(function()
			obj10:SetAttribute("th_over", false)
			func31(obj10, 0.1, { BackgroundTransparency = 1, BackgroundColor3 = tbl4.card })
		end)

		local tbl74 = {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(12, flag39 and 10 or 6),
			Size = UDim2.new(1, -(n + 20), 0, 14),
			Font = tbl5.mid,
			Text = str5,
			TextColor3 = tbl4.text,
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextTruncate = Enum.TextTruncate.AtEnd,
			ZIndex = 15,
		}

		local textLabel3 = Instance.new("TextLabel")

		for k, value103 in pairs(tbl74) do
			textLabel3[k] = value103
		end

		if obj10 then
			textLabel3.Parent = obj10
		end

		if textLabel3 then
			textLabel3:SetAttribute("th_text", "text")
			local text = tbl4.text

			if text then
				textLabel3.TextColor3 = text
			end
		end

		local textLabel4 = nil

		if flag37 then
			local tbl75 = {
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(12, 22),
				Size = UDim2.new(1, -(n + 20), 0, 20),
				Font = tbl5.body,
				Text = flag37,
				TextColor3 = tbl4.dim,
				TextSize = 11,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextWrapped = true,
				ZIndex = 15,
			}

			textLabel4 = Instance.new("TextLabel")

			for k, value104 in pairs(tbl75) do
				textLabel4[k] = value104
			end

			if obj10 then
				textLabel4.Parent = obj10
			end

			if textLabel4 then
				textLabel4:SetAttribute("th_text", "dim")
				local dim = tbl4.dim

				if dim then
					textLabel4.TextColor3 = dim
				end
			end
		end

		local tbl76 = {
			AnchorPoint = Vector2.new(1, 0.5),
			BackgroundTransparency = 1,
			Position = UDim2.new(1, -10, 0.5, 0),
			Size = UDim2.fromOffset(n, not flag13 and 26 or 32),
			ZIndex = 16,
		}

		local frame5 = Instance.new("Frame")

		for k, value105 in pairs(tbl76) do
			frame5[k] = value105
		end

		if obj10 then
			frame5.Parent = obj10
		end

		list11.items[#list11.items + 1] = { kind = "row", inst = obj10, q = string.lower(str5 .. " " .. (flag37 or "")) }
		return obj10, frame5, textLabel4
	end

	flag33 = false
	flag34 = false
	local tbl77 = { ImportPaste = true, HopNearNight = true, CfgSaveName = true, FlightBind2 = true }
	gen = func26().gen or 1

	local function func56()
	end

	func39 = function(flag40)
		for k, value106 in pairs(tbl10) do
			if value106 and value106.kind == "input" and value106.box then
				pcall(function()
					local text = value106.box.Text
					if type(text) ~= "string" then
						return
					end

					if text ~= "" or tbl9[k] == nil or tbl9[k] == "" then
						tbl9[k] = text
					end
				end)
			end
		end

		local tbl78 = {}

		for k, value107 in pairs(tbl9) do
			local flag41 = not tbl77[k]

			if flag41 then
				flag41 = k ~= "HookUrl" or flag40 == true or tbl9.ExportUrl
			end

			if flag41 then
				local kind = type(value107)

				if kind == "boolean" or kind == "number" or kind == "string" then
					tbl78[k] = value107
				elseif kind == "table" then
					tbl78[k] = value107
				else
					local ok, result = pcall(function()
						return value107.Name
					end)

					if ok and type(result) == "string" then
						tbl78[k] = result
					end
				end
			end
		end

		return tbl78
	end

	local function func57(text7, param38)
		if type(text7) ~= "string" or text7 == "" then
			return false
		end

		if type(makefolder) == "function" then
			pcall(makefolder, "CokeboysUnified")
		end

		local str6 = "CokeboysUnified" .. "/" .. func21(str3.Game)

		if type(makefolder) == "function" then
			pcall(makefolder, str6)
		end

		local str7 = ("CokeboysUnified" .. "/" .. func21(str3.Game)) .. "/cache"

		if type(makefolder) == "function" then
			pcall(makefolder, str7)
		end

		local str8 = ("CokeboysUnified" .. "/" .. func21(str3.Game)) .. "/configs"

		if type(makefolder) == "function" then
			pcall(makefolder, str8)
		end

		local match = text7:match("^(.*)/[^/]+$")

		if match and type(makefolder) == "function" then
			pcall(makefolder, match)
		end

		local ok, result = pcall(writefile, text7, param38)

		if not ok then
			local func58 = func56
			local str9 = tostring(result)
			func58("write fail", text7, str9)
			return false
		end

		if type(readfile) == "function" then
			local ok2, result2 = pcall(readfile, text7)

			if not ok2 or result2 ~= param38 then
				local func59 = func56
				local str10 = tostring(result2)
				func59("verify fail", text7, str10)
				return false
			end
		end

		return true
	end

	func40 = function(flag42)
		if flag33 and not flag42 then
			return false
		end

		if not writefile then
			func56("writefile missing")
			return false
		end

		local ok, result = pcall(function()
			local jsonEncode = HttpService.JSONEncode
			local value108 = func39(true)
			return jsonEncode(HttpService, value108)
		end)

		if not ok or type(result) ~= "string" then
			local func60 = func56
			local str11 = tostring(result)
			func60("encode fail", str11)
			return false
		end

		return func57(str3.ConfigFile, result)
	end

	local function func61(flag43, flag44)
		local entry4 = tbl10[flag43]
		local flag45

		if entry4 then
			flag45 = entry4.kind == "keybind" and type(flag44) == "string"
		else
			flag45 = entry4
		end

		if flag45 then
			local ok, result = pcall(function()
				return Enum.KeyCode[flag44]
			end)

			if ok and result then
				return result
			end
		end

		if flag43 == "Theme" and (flag44 == "Dusk" or flag44 == "dusk") then
			return "Dark"
		end
		return flag44
	end

	func41 = function(list12, flag46)
		if type(list12) ~= "table" then
			return
		end
		flag33 = true

		local ok, result = pcall(function()
			if list12.NeverTraps == true then
				list12.AntiTrap = true
			end

			list12.NeverTraps = nil
			list12.RarityZones = nil
			list12.HopMinPlayers = nil
			list12.HopMaxPlayers = nil
			list12.AntiDie = nil

			if list12.StealMode == "Rarity snipe" then
				list12.StealMode = "Egg type filter"
			end

			if list12.StealMode == "Missing index" then
				list12.StealMode = "Best value"
				list12.AutoIndexSteal = true
			end

			for k, value109 in pairs(list12) do
				if k ~= "ImportPaste" then
					local value110 = func61(k, value109)
					local entry5 = tbl10[k]

					if entry5 and entry5.set then
						pcall(entry5.set, value110)

						if flag46 and entry5.on and entry5.kind ~= "slider" and k ~= "Flight" and k ~= "CfgPreset" then
							pcall(entry5.on, tbl9[k])
						end
					else
						tbl9[k] = value110
					end
				end
			end
		end)

		flag33 = false

		if not ok then
			local func62 = func56
			local str12 = tostring(result)
			func62("apply fail", str12)
		end
	end

	local function func63(flag47)
		if type(flag47) ~= "string" or flag47 == "" or not readfile then
			return
		end
		local ok, result = pcall(readfile, flag47)

		if ok and type(result) == "string" and result ~= "" then
			local ok2, result2 = pcall(function()
				return HttpService:JSONDecode(result)
			end)

			if ok2 and type(result2) == "table" then
				return result2, flag47
			end
		end
	end

	local function func64()
		local list13 = { "default" }
		local tbl79 = { default = true }

		if type(listfiles) == "function" then
			local ok, result = pcall(listfiles, ("CokeboysUnified" .. "/" .. func21(str3.Game)) .. "/configs")

			if ok and type(result) == "table" then
				for i = 1, #result do
					local match = tostring(result[i] or ""):gsub("\\", "/"):match("([^/]+)%.json$")

					if match and not tbl79[match] then
						tbl79[match] = true
						list13[#list13 + 1] = match
					end
				end
			end
		elseif type(isfile) == "function" then
			local str13 = tostring(tbl9.CfgPreset or ""):gsub("^%s+", ""):gsub("%s+$", "")
			local flag48

			if str13 ~= "" then
				flag48 = func21(str13)
			else
				flag48 = "default"
			end

			if flag48 ~= "default" and not tbl79[flag48] then
				list13[#list13 + 1] = flag48
			end
		end

		table.sort(list13, function(flag49, flag50)
			if flag49 == "default" then
				return true
			end

			if flag50 == "default" then
				return false
			end
			return flag49 < flag50
		end)

		return list13
	end

	func42 = function()
		local cfgPreset = tbl10.CfgPreset
		if not cfgPreset or not cfgPreset.options then
			return
		end
		local result16 = func64()

		for i = #cfgPreset.options, 1, -1 do
			cfgPreset.options[i] = nil
		end

		for i = 1, #result16 do
			cfgPreset.options[i] = result16[i]
		end

		local str14 = tostring(tbl9.CfgPreset or ""):gsub("^%s+", ""):gsub("%s+$", "")
		local flag51

		if str14 ~= "" then
			flag51 = func21(str14)
		else
			flag51 = "default"
		end

		local flag52 = false

		for i = 1, #result16 do
			if flag51 == result16[i] then
				flag52 = true
				break
			end
		end

		if not flag52 then
			tbl9.CfgPreset = "default"
			flag51 = "default"
		end

		if cfgPreset.set then
			pcall(cfgPreset.set, flag51)
			return
		end

		if cfgPreset.refresh then
			pcall(cfgPreset.refresh)
		end
	end

	func43 = function(flag53)
		local str15 = tostring(flag53 or ""):gsub("^%s+", ""):gsub("%s+$", "")
		local cfgPreset

		if str15 ~= "" then
			cfgPreset = func21(str15)
		else
			cfgPreset = "default"
		end

		local ok, result = pcall(function()
			local jsonEncode = HttpService.JSONEncode
			local result17 = func39()
			return jsonEncode(HttpService, result17)
		end)

		if not ok or type(result) ~= "string" then
			local func65 = func56
			local str16 = tostring(result)
			func65("named encode fail", str16)
			return false
		end

		local func66 = func57
		local str17 = ("CokeboysUnified" .. "/" .. func21(str3.Game)) .. "/configs"
		local str18 = tostring(cfgPreset or ""):gsub("^%s+", ""):gsub("%s+$", "")
		local str19

		if str18 ~= "" then
			str19 = func21(str18)
		else
			str19 = "default"
		end

		if not func66(str17 .. "/" .. str19 .. ".json", result) then
			return false
		end
		tbl9.CfgPreset = cfgPreset
		func42()
		func56("saved named", cfgPreset)
		return true
	end

	func44 = function(flag54, param39)
		local str20 = tostring(flag54 or ""):gsub("^%s+", ""):gsub("%s+$", "")
		local cfgPreset
		-- join us: https://discord.gg/x7YbZeezpm

		if str20 ~= "" then
			cfgPreset = func21(str20)
		else
			cfgPreset = "default"
		end

		local func67 = func63
		local str21 = ("CokeboysUnified" .. "/" .. func21(str3.Game)) .. "/configs"
		local str22 = tostring(cfgPreset or ""):gsub("^%s+", ""):gsub("%s+$", "")
		local str23

		if str22 ~= "" then
			str23 = func21(str22)
		else
			str23 = "default"
		end

		local flag55, value111 = func67(str21 .. "/" .. str23 .. ".json")
		if not flag55 then
			func56("no named config", cfgPreset)
			return false
		end
		func41(flag55, param39)
		tbl9.CfgPreset = cfgPreset
		setTheme(tbl9.Theme or "Dark")
		local uIScale = tonumber(tbl9.UIScale)

		if uIScale then
			value37.Scale = uIScale / 100
		end

		func40(true)
		func56("loaded named", value111)
		return true
	end

	func45 = function(param40)
		if not readfile then
			func56("readfile missing")
			return false
		end
		local flag56, flag57 = func63(str3.ConfigFile)

		if not flag56 then
			flag56, flag57 = func63((("CokeboysUnified" .. "/" .. func21(str3.Game)) .. "/cache") .. "/" .. func21(localPlayer and localPlayer.Name or "Player") .. "-config.json")
		end

		if not flag56 then
			local fileName2 = "/" .. cokeboysUnloadUid .. "-config.json"
			flag56, flag57 = func63((("CokeboysUnified" .. "/" .. func21(str3.Game)) .. "/cache") .. fileName2)
		end

		if not flag56 then
			local func68 = func63
			local str24 = ("CokeboysUnified" .. "/" .. func21(str3.Game)) .. "/configs"
			local str25 = tostring("default"):gsub("^%s+", ""):gsub("%s+$", "")
			local str26

			if str25 ~= "" then
				str26 = func21(str25)
			else
				str26 = "default"
			end

			flag56, flag57 = func68(str24 .. "/" .. str26 .. ".json")
		end

		if not flag56 then
			local str27 = ("CokeboysUnified" .. "/" .. func21(str3.Game)) .. "/config.json"
			local str28 = "CokeboysUnified" .. "/" .. str3.Game .. "/config.json"
			local str29 = ("CokeboysUnified" .. "/" .. func21(str3.Game)) .. "/default.json"
			local tbl80 = { str27, "CokeboysUnified/config.json", str28, str29, "CokeboysUnified/default.json" }

			for i = 1, #tbl80 do
				flag56, flag57 = func63(tbl80[i])
				if not flag56 then
					continue
				end
				break
			end
		end

		if not flag56 then
			func42()
			return false
		end
		func41(flag56, param40)
		setTheme(tbl9.Theme or "Dark")
		local uIScale2 = tonumber(tbl9.UIScale)

		if uIScale2 then
			value37.Scale = uIScale2 / 100
		end

		if tbl9.StartMin then
			setVisible(false)
		end

		for k, value112 in pairs(tbl10) do
			if value112 and value112.set and tbl9[k] ~= nil then
				if value112.kind == "toggle" then
					pcall(value112.set, tbl9[k] == true)
				elseif value112.kind == "choice" or value112.kind == "dropdown" or value112.kind == "input" or value112.kind == "slider" then
					pcall(value112.set, tbl9[k])
				end
			end
		end

		if tbl9.FlightBind then
			tbl9.FlightBind2 = tbl9.FlightBind

			if tbl10.FlightBind2 and tbl10.FlightBind2.set then
				pcall(tbl10.FlightBind2.set, tbl9.FlightBind)
			end
		end

		if tbl10.PhoneUI and tbl10.PhoneUI.on then
			pcall(tbl10.PhoneUI.on, tbl9.PhoneUI == true)
		end

		if value16 then
			func28(value16, obj7.Text)
		end

		func42()

		if flag57 ~= str3.ConfigFile then
			func40(true)
		end

		func56("loaded", flag57)
		return true
	end

	func46 = function(param41, param42, param43, param44, flag58, flag59)
		tbl9[param42] = not not flag58
		local n = (not flag59 or not flag59.options) and 132 or 214

		if flag13 then
			n = (not flag59 or not flag59.options) and 148 or 220
		end

		local value113, value114, value115 = func55(param41, param43, param44, n)

		if flag59 and flag59.options then
			tbl9[flag59.flag] = tbl9[flag59.flag] or flag59.options[1]

			local tbl81 = {
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundColor3 = tbl4.fill,
				Position = UDim2.new(1, -40, 0.5, 0),
				Size = UDim2.fromOffset(72, 22),
				Font = tbl5.mid,
				Text = tostring(tbl9[flag59.flag]) .. " ▾",
				TextColor3 = tbl4.text,
				TextSize = 10,
				TextTruncate = Enum.TextTruncate.AtEnd,
				AutoButtonColor = false,
				ZIndex = 17,
			}

			local textButton2 = Instance.new("TextButton")

			for k, value116 in pairs(tbl81) do
				textButton2[k] = value116
			end

			if value114 then
				textButton2.Parent = value114
			end

			local obj11 = textButton2
			local tbl82 = { CornerRadius = UDim.new(0, 6) }
			local uiCorner3 = Instance.new("UICorner")

			for k, value117 in pairs(tbl82) do
				uiCorner3[k] = value117
			end

			if obj11 then
				uiCorner3.Parent = obj11
			end

			local tbl83 = { Color = tbl4.line or tbl4.line, Thickness = 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }
			local uiStroke3 = Instance.new("UIStroke")

			for k, value118 in pairs(tbl83) do
				uiStroke3[k] = value118
			end

			if obj11 then
				uiStroke3.Parent = obj11
			end

			uiStroke3:SetAttribute("th_stroke", "line")

			if obj11 then
				obj11:SetAttribute("th_bg", "fill")
				local fill = tbl4.fill

				if fill and obj11:IsA("GuiObject") then
					obj11.BackgroundColor3 = fill
				end
			end

			if obj11 then
				obj11:SetAttribute("th_text", "text")
				local text = tbl4.text

				if text then
					obj11.TextColor3 = text
				end
			end

			obj11.Activated:Connect(function()
				if func27 then
					func27(obj11, flag59.flag, flag59.options)
				end
			end)

			tbl10[flag59.flag] = {
				kind = "choice",
				chip = obj11,
				set = function(param45)
					tbl9[flag59.flag] = param45
					obj11.Text = tostring(param45) .. " ▾"
					if flag33 then
						return
					end

					if flag34 then
						return
					end
					flag34 = true
					local flag60 = gen

					task.delay(0.35, function()
						flag34 = false
						if flag60 ~= (func26().gen or 0) then
							return
						end
						func40()
					end)
				end,
			}
		end

		local tbl84 = {
			AnchorPoint = Vector2.new(1, 0.5),
			BackgroundColor3 = tbl9[param42] and tbl4.accent or tbl4.fill,
			Position = UDim2.new(1, 0, 0.5, 0),
			Size = UDim2.fromOffset(not flag13 and 34 or 42, not flag13 and 18 or 24),
			Text = "",
			AutoButtonColor = false,
			ZIndex = 17,
		}

		local textButton2 = Instance.new("TextButton")

		for k, value119 in pairs(tbl84) do
			textButton2[k] = value119
		end

		if value114 then
			textButton2.Parent = value114
		end

		local value120 = textButton2
		local tbl85 = { CornerRadius = UDim.new(0, not flag13 and 9 or 12) }
		local uiCorner3 = Instance.new("UICorner")

		for k, value121 in pairs(tbl85) do
			uiCorner3[k] = value121
		end

		if value120 then
			uiCorner3.Parent = value120
		end

		local uIStroke = createUIStroke(value120, tbl9[param42] and tbl4.accent or tbl4.line, 1)
		local udim2 = flag13 and UDim2.new(1, -20, 0.5, -8) or UDim2.new(1, -16, 0.5, -6)
		local udim22 = UDim2.fromOffset(2, 2)
		local n5 = not flag13 and 14 or 16

		local tbl86 = {
			BackgroundColor3 = tbl9[param42] and tbl4.ink or tbl4.text,
			Position = tbl9[param42] and udim2 or udim22,
			Size = UDim2.fromOffset(n5, n5),
			ZIndex = 18,
		}

		local frame3 = Instance.new("Frame")

		for k, value122 in pairs(tbl86) do
			frame3[k] = value122
		end

		if value120 then
			frame3.Parent = value120
		end

		local value123 = frame3
		local tbl87 = { CornerRadius = UDim.new(0, not flag13 and 7 or 8) }
		local uiCorner4 = Instance.new("UICorner")

		if tbl87 then
			for k, value124 in pairs(tbl87) do
				uiCorner4[k] = value124
			end
		end

		if value123 then
			uiCorner4.Parent = value123
		end

		local function func69(flag61)
			func31(value120, 0.16, { BackgroundColor3 = flag61 and tbl4.accent or tbl4.fill }, Enum.EasingStyle.Quart)
			func31(value123, 0.16, { Position = flag61 and udim2 or udim22, BackgroundColor3 = flag61 and tbl4.ink or tbl4.text }, Enum.EasingStyle.Quart)
			func31(uIStroke, 0.16, { Color = flag61 and tbl4.accent or tbl4.line })
		end

		value120.Activated:Connect(function()
			local flag62 = not tbl9[param42]
			tbl9[param42] = flag62
			func69(flag62)

			if not flag33 and not flag34 then
				flag34 = true
				local flag63 = gen

				task.delay(0.35, function()
					flag34 = false
					if flag63 ~= (func26().gen or 0) then
						return
					end
					func40()
				end)
			end

			local entry6 = tbl10[param42]

			task.defer(function()
				if entry6 and entry6.on then
					pcall(entry6.on, flag62)
				end
			end)
		end)

		tbl10[param42] = {
			kind = "toggle",
			status = value115,
			set = function(flag64)
				tbl9[param42] = not not flag64
				func69(tbl9[param42])
			end,
		}
	end

	func47 = function(flag65, param46, param47, param48, num5, num6, num7, flag66)
		tbl9[param46] = num7
		local value125, value126, value127 = func55(flag65, param47, param48)
		value125.Size = UDim2.new(1, 0, 0, 72)
		value126.Size = UDim2.fromOffset(148, 48)

		local tbl88 = {
			BackgroundColor3 = tbl4.fill,
			Size = UDim2.new(1, 0, 0, 20),
			Font = tbl5.mono,
			Text = tostring(num7) .. (flag66 or ""),
			TextColor3 = tbl4.accent,
			TextSize = 12,
			ZIndex = 17,
		}

		local textLabel3 = Instance.new("TextLabel")

		for k, value128 in pairs(tbl88) do
			textLabel3[k] = value128
		end

		if value126 then
			textLabel3.Parent = value126
		end

		local obj12 = textLabel3
		local tbl89 = { CornerRadius = UDim.new(0, 5) }
		local uiCorner3 = Instance.new("UICorner")

		for k, value129 in pairs(tbl89) do
			uiCorner3[k] = value129
		end

		if obj12 then
			uiCorner3.Parent = obj12
		end

		if obj12 then
			obj12:SetAttribute("th_bg", "fill")
			local fill = tbl4.fill

			if fill and obj12:IsA("GuiObject") then
				obj12.BackgroundColor3 = fill
			end
		end

		if obj12 then
			obj12:SetAttribute("th_text", "accent")
			local accent = tbl4.accent

			if accent then
				obj12.TextColor3 = accent
			end
		end

		local tbl90 = {
			BackgroundColor3 = tbl4.fill,
			Position = UDim2.fromOffset(0, 32),
			Size = UDim2.new(1, 0, 0, 10),
			ZIndex = 17,
			Active = true,
		}

		local frame3 = Instance.new("Frame")

		for k, value130 in pairs(tbl90) do
			frame3[k] = value130
		end

		if value126 then
			frame3.Parent = value126
		end

		local num8 = frame3
		local tbl91 = { CornerRadius = UDim.new(0, 5) }
		local uiCorner4 = Instance.new("UICorner")

		for k, value131 in pairs(tbl91) do
			uiCorner4[k] = value131
		end

		if num8 then
			uiCorner4.Parent = num8
		end

		local tbl92 = {
			BackgroundColor3 = tbl4.accent,
			Size = UDim2.new((num7 - num5) / math.max(num6 - num5, 1), 0, 1, 0),
			ZIndex = 18,
		}

		local frame4 = Instance.new("Frame")

		for k, value132 in pairs(tbl92) do
			frame4[k] = value132
		end

		if num8 then
			frame4.Parent = num8
		end

		local value133 = frame4
		local tbl93 = { CornerRadius = UDim.new(0, 5) }
		local uiCorner5 = Instance.new("UICorner")

		for k, value134 in pairs(tbl93) do
			uiCorner5[k] = value134
		end

		if value133 then
			uiCorner5.Parent = value133
		end

		local tbl94 = {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundColor3 = tbl4.text,
			Position = UDim2.new((num7 - num5) / math.max(num6 - num5, 1), 0, 0.5, 0),
			Size = UDim2.fromOffset(18, 18),
			ZIndex = 19,
		}

		local frame5 = Instance.new("Frame")

		for k, value135 in pairs(tbl94) do
			frame5[k] = value135
		end

		if num8 then
			frame5.Parent = num8
		end

		local value136 = frame5
		local tbl95 = { CornerRadius = UDim.new(0, 9) }
		local uiCorner6 = Instance.new("UICorner")

		for k, value137 in pairs(tbl95) do
			uiCorner6[k] = value137
		end

		if value136 then
			uiCorner6.Parent = value136
		end

		local tbl96 = {
			Color = tbl4.accentDeep or tbl4.line,
			Thickness = 1,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		}

		local uiStroke3 = Instance.new("UIStroke")

		for k, value138 in pairs(tbl96) do
			uiStroke3[k] = value138
		end

		if value136 then
			uiStroke3.Parent = value136
		end

		uiStroke3:SetAttribute("th_stroke", "accentDeep")

		local tbl97 = {
			BackgroundTransparency = 1,
			Text = "",
			AutoButtonColor = false,
			Active = true,
			Position = UDim2.fromOffset(0, 20),
			Size = UDim2.new(1, 0, 0, 32),
			ZIndex = 21,
		}

		local textButton2 = Instance.new("TextButton")

		for k, value139 in pairs(tbl97) do
			textButton2[k] = value139
		end

		if value126 then
			textButton2.Parent = value126
		end

		local function set2(...) end
		local flag67 = false

		textButton2.InputBegan:Connect(function(input)
			local userInputType = input.UserInputType

			if userInputType == Enum.UserInputType.MouseButton1 or userInputType == Enum.UserInputType.Touch then
				flag67 = true

				if flag65 and flag65.scroll then
					flag65.scroll.ScrollingEnabled = false
				end

				if value51 then
					value51.ScrollingEnabled = false
				end

				local n = num6 - num5
				set2(num5 + math.clamp((input.Position.X - num8.AbsolutePosition.X) / math.max(num8.AbsoluteSize.X, 1), 0, 1) * n)
			end
		end)

		local connection = UserInputService.InputChanged:Connect(function(...) end)

		if connection then
			list3[#list3 + 1] = connection
		end

		local connection2 = UserInputService.InputEnded:Connect(function(input)
			if flag67 then
				local userInputType = input.UserInputType

				if userInputType == Enum.UserInputType.MouseButton1 or userInputType == Enum.UserInputType.Touch then
					flag67 = false

					if flag65 and flag65.scroll then
						flag65.scroll.ScrollingEnabled = true
					end

					if value51 then
						value51.ScrollingEnabled = true
					end
				end
			end
		end)

		if connection2 then
			list3[#list3 + 1] = connection2
		end

		tbl10[param46] = { kind = "slider", status = value127, set = set2 }
	end

	local Frame = func32("Frame", {
		Name = "Drops",
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
		Visible = false,
		ZIndex = 90,
	}, obj1)

	func48 = function()
		Frame:ClearAllChildren()
		Frame.Visible = false
	end

	value35.Activated:Connect(function()
		func48()
		value35.Visible = false
	end)

	func27 = function(param49, param50, list14)
		func48()
		value35.Visible = true
		value35.ZIndex = 85
		Frame.Visible = true
		local absolutePosition = param49.AbsolutePosition
		local absoluteSize = param49.AbsoluteSize

		local tbl98 = {
			BackgroundColor3 = tbl4.card,
			Position = UDim2.fromOffset(absolutePosition.X, absolutePosition.Y + absoluteSize.Y + 6),
			Size = UDim2.fromOffset(math.max(absoluteSize.X, 120), #list14 * 28 + 10),
			ZIndex = 95,
		}

		local value140 = Frame
		local frame3 = Instance.new("Frame")

		for k, value141 in pairs(tbl98) do
			frame3[k] = value141
		end

		if value140 then
			frame3.Parent = value140
		end

		local tbl99 = { CornerRadius = UDim.new(0, 10) }
		local uiCorner3 = Instance.new("UICorner")

		for k, value142 in pairs(tbl99) do
			uiCorner3[k] = value142
		end

		if frame3 then
			uiCorner3.Parent = frame3
		end

		local tbl100 = { Color = tbl4.line or tbl4.line, Thickness = 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }
		local uiStroke3 = Instance.new("UIStroke")

		for k, value143 in pairs(tbl100) do
			uiStroke3[k] = value143
		end

		if frame3 then
			uiStroke3.Parent = frame3
		end

		uiStroke3:SetAttribute("th_stroke", "line")

		if frame3 then
			frame3:SetAttribute("th_bg", "card")
			local card = tbl4.card

			if card and frame3:IsA("GuiObject") then
				frame3.BackgroundColor3 = card
			end
		end

		local tbl101 = { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder }
		local uiListLayout = Instance.new("UIListLayout")

		for k, value144 in pairs(tbl101) do
			uiListLayout[k] = value144
		end

		if frame3 then
			uiListLayout.Parent = frame3
		end

		createUIPadding(frame3, 5, 5, 5, 5)

		for i, item6 in ipairs(list14) do
			local flag68 = item6 == tbl9[param50]

			local tbl102 = {
				BackgroundColor3 = flag68 and tbl4.lift or tbl4.card,
				Size = UDim2.new(1, 0, 0, 24),
				Font = tbl5.body,
				Text = "  " .. item6,
				TextColor3 = flag68 and tbl4.accent or tbl4.text,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutoButtonColor = false,
				LayoutOrder = i,
				ZIndex = 97,
			}

			local textButton2 = Instance.new("TextButton")

			for k, value145 in pairs(tbl102) do
				textButton2[k] = value145
			end

			if frame3 then
				textButton2.Parent = frame3
			end

			local tbl103 = { CornerRadius = UDim.new(0, 6) }
			local uiCorner4 = Instance.new("UICorner")

			for k, value146 in pairs(tbl103) do
				uiCorner4[k] = value146
			end

			if textButton2 then
				uiCorner4.Parent = textButton2
			end

			textButton2.Activated:Connect(function()
				tbl9[param50] = item6
				local entry7 = tbl10[param50]

				if entry7 and entry7.set then
					entry7.set(item6)
				end

				if entry7 and entry7.on then
					pcall(entry7.on, item6)
				end

				func48()
				value35.Visible = false
				if flag33 then
					return
				end

				if flag34 then
					return
				end
				flag34 = true
				local flag69 = gen

				task.delay(0.35, function()
					flag34 = false
					if flag69 ~= (func26().gen or 0) then
						return
					end
					func40()
				end)
			end)
		end
	end

	local function func70(list15, list16)
		if type(list15) ~= "table" then
			return "none"
		end
		local n = #list16
		local tbl104 = {}

		for _, item7 in ipairs(list15) do
			tbl104[item7] = true
		end

		local n5 = 0

		for _, item8 in ipairs(list16) do
			if tbl104[item8] then
				n5 += 1
			end
		end

		if n5 == 0 then
			return "none"
		end

		if n5 == n then
			return "all · " .. n
		end
		return n5 .. " / " .. n
	end

	local function createTextButton(parent, param51)
		local tbl105 = {
			BackgroundColor3 = tbl4.fill,
			Size = UDim2.new(1, 0, 0, 24),
			Font = tbl5.mid,
			Text = param51,
			TextColor3 = tbl4.text,
			TextSize = 11,
			TextTruncate = Enum.TextTruncate.AtEnd,
			AutoButtonColor = false,
			ZIndex = 17,
		}

		local textButton2 = Instance.new("TextButton")

		for k, value147 in pairs(tbl105) do
			textButton2[k] = value147
		end

		if parent then
			textButton2.Parent = parent
		end

		local tbl106 = { CornerRadius = UDim.new(0, 7) }
		local uiCorner3 = Instance.new("UICorner")

		for k, value148 in pairs(tbl106) do
			uiCorner3[k] = value148
		end

		if textButton2 then
			uiCorner3.Parent = textButton2
		end

		local tbl107 = { Color = tbl4.line or tbl4.line, Thickness = 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }
		local uiStroke3 = Instance.new("UIStroke")

		for k, value149 in pairs(tbl107) do
			uiStroke3[k] = value149
		end

		if textButton2 then
			uiStroke3.Parent = textButton2
		end

		uiStroke3:SetAttribute("th_stroke", "line")
		func33(textButton2, "fill", "lift")

		if textButton2 then
			textButton2:SetAttribute("th_text", "text")
			local text = tbl4.text
			if not text then
				return textButton2
			end
			textButton2.TextColor3 = text
		end

		return textButton2
	end

	func49 = function(param52, param53, param54, param55, list17, flag70, flag71)
		if flag71 then
			local tbl108 = tbl9
			flag70 = flag70 or { unpack(list17) }
			tbl108[param53] = flag70
		else
			tbl9[param53] = flag70 or list17[1]
		end

		local value150, value151, value152 = func55(param52, param54, param55)
		local textButton4 = createTextButton(value151, flag71 and func70(tbl9[param53], list17) or tostring(tbl9[param53]))

		local tbl109 = {
			AnchorPoint = Vector2.new(1, 0.5),
			BackgroundTransparency = 1,
			Position = UDim2.new(1, -6, 0.5, 0),
			Size = UDim2.fromOffset(12, 12),
			Font = tbl5.mid,
			Text = "▾",
			TextColor3 = tbl4.mute,
			TextSize = 11,
			ZIndex = 18,
		}

		local textLabel3 = Instance.new("TextLabel")

		for k, value153 in pairs(tbl109) do
			textLabel3[k] = value153
		end

		if textButton4 then
			textLabel3.Parent = textButton4
		end

		textButton4.Text = (flag71 and func70(tbl9[param53], list17) or tostring(tbl9[param53])) .. "   "

		textButton4.Activated:Connect(function()
			func48()
			value35.Visible = true
			value35.ZIndex = 85
			Frame.Visible = true
			local absolutePosition = textButton4.AbsolutePosition
			local absoluteSize = textButton4.AbsoluteSize
			local n = math.min(7, #list17) * 28 + 10

			local tbl110 = {
				BackgroundColor3 = tbl4.card,
				Position = UDim2.fromOffset(absolutePosition.X, absolutePosition.Y + absoluteSize.Y + 6),
				Size = UDim2.fromOffset(math.max(absoluteSize.X, 180), n),
				ZIndex = 95,
			}

			local value154 = Frame
			local frame3 = Instance.new("Frame")

			for k, value155 in pairs(tbl110) do
				frame3[k] = value155
			end

			if value154 then
				frame3.Parent = value154
			end

			local tbl111 = { CornerRadius = UDim.new(0, 10) }
			local uiCorner3 = Instance.new("UICorner")

			for k, value156 in pairs(tbl111) do
				uiCorner3[k] = value156
			end

			if frame3 then
				uiCorner3.Parent = frame3
			end

			local tbl112 = {
				Color = tbl4.accentDeep or tbl4.line,
				Thickness = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}

			local uiStroke3 = Instance.new("UIStroke")

			for k, value157 in pairs(tbl112) do
				uiStroke3[k] = value157
			end

			if frame3 then
				uiStroke3.Parent = frame3
			end

			uiStroke3:SetAttribute("th_stroke", "accentDeep")

			local tbl113 = {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				CanvasSize = UDim2.new(0, 0, 0, #list17 * 28),
				ScrollBarThickness = 3,
				BorderSizePixel = 0,
				ZIndex = 96,
			}

			local scrollingFrame = Instance.new("ScrollingFrame")

			for k, value158 in pairs(tbl113) do
				scrollingFrame[k] = value158
			end

			if frame3 then
				scrollingFrame.Parent = frame3
			end

			createUIPadding(scrollingFrame, 5, 5, 5, 5)
			local tbl114 = { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder }
			local uiListLayout = Instance.new("UIListLayout")

			for k, value159 in pairs(tbl114) do
				uiListLayout[k] = value159
			end

			if scrollingFrame then
				uiListLayout.Parent = scrollingFrame
			end

			local tbl115 = {}

			if flag71 and type(tbl9[param53]) == "table" then
				for _, item9 in ipairs(tbl9[param53]) do
					tbl115[item9] = true
				end
			end

			for i, item10 in ipairs(list17) do
				local flag72 = flag71 and tbl115[item10] or item10 == tbl9[param53]

				local tbl116 = {
					BackgroundColor3 = flag72 and tbl4.lift or tbl4.card,
					Size = UDim2.new(1, 0, 0, 26),
					Font = tbl5.body,
					Text = "   " .. item10,
					TextColor3 = flag72 and tbl4.accent or tbl4.text,
					TextSize = 12,
					TextXAlignment = Enum.TextXAlignment.Left,
					AutoButtonColor = false,
					LayoutOrder = i,
					ZIndex = 97,
				}

				local textButton2 = Instance.new("TextButton")

				for k, value160 in pairs(tbl116) do
					textButton2[k] = value160
				end

				if scrollingFrame then
					textButton2.Parent = scrollingFrame
				end

				local tbl117 = { CornerRadius = UDim.new(0, 6) }
				local uiCorner4 = Instance.new("UICorner")

				for k, value161 in pairs(tbl117) do
					uiCorner4[k] = value161
				end

				if textButton2 then
					uiCorner4.Parent = textButton2
				end

				func33(textButton2, flag72 and tbl4.lift or tbl4.card, tbl4.fill)

				textButton2.Activated:Connect(function()
					if flag71 then
						local list18 = {}
						tbl115[item10] = not tbl115[item10]

						for _, item11 in ipairs(list17) do
							if tbl115[item11] then
								list18[#list18 + 1] = item11
							end
						end

						tbl9[param53] = list18
						local entry8 = tbl115[item10]
						textButton2.BackgroundColor3 = entry8 and tbl4.lift or tbl4.card
						textButton2.TextColor3 = entry8 and tbl4.accent or tbl4.text
						textButton2:SetAttribute("locked", false)
						textButton4.Text = (flag71 and func70(tbl9[param53], list17) or tostring(tbl9[param53])) .. "   "
						local entry9 = tbl10[param53]

						if entry9 and entry9.on then
							pcall(entry9.on, list18)
						end

						if flag33 then
							return
						end

						if flag34 then
							return
						end
						flag34 = true
						local flag73 = gen

						task.delay(0.35, function()
							flag34 = false
							if flag73 ~= (func26().gen or 0) then
								return
							end
							func40()
						end)

						return
					end

					tbl9[param53] = item10
					local entry10 = tbl10[param53]

					if entry10 and entry10.on then
						pcall(entry10.on, item10)
					end

					func48()
					value35.Visible = false
					textButton4.Text = (flag71 and func70(tbl9[param53], list17) or tostring(tbl9[param53])) .. "   "
					if flag33 then
						return
					end

					if flag34 then
						return
					end
					flag34 = true
					local flag74 = gen

					task.delay(0.35, function()
						flag34 = false
						if flag74 ~= (func26().gen or 0) then
							return
						end
						func40()
					end)
				end)
			end
		end)

		tbl10[param53] = {
			kind = "dropdown",
			status = value152,
			options = list17,
			refresh = function()
				textButton4.Text = (flag71 and func70(tbl9[param53], list17) or tostring(tbl9[param53])) .. "   "
			end,
			set = function(param56)
				local tbl118

				if flag71 and type(param56) ~= "table" then
					if type(param56) == "string" and table.find(list17, param56) then
						tbl118 = { param56 }
					else
						tbl118 = {}
					end
				else
					tbl118 = param56
				end

				tbl9[param53] = tbl118
				textButton4.Text = (flag71 and func70(tbl9[param53], list17) or tostring(tbl9[param53])) .. "   "
			end,
		}
	end

	func50 = function(list19, param57, param58, param59, flag75, flag76, flag77)
		tbl9[param57] = flag76 or ""
		local value162, value163, value164 = func55(list19, param58, param59)

		local tbl119 = {
			BackgroundColor3 = tbl4.fill,
			Size = UDim2.new(1, 0, 0, 24),
			Font = tbl5.mono,
			Text = tbl9[param57],
			PlaceholderText = flag75 or "",
			PlaceholderColor3 = tbl4.mute,
			TextColor3 = tbl4.text,
			TextSize = 11,
			TextXAlignment = Enum.TextXAlignment.Left,
			ClearTextOnFocus = false,
			ZIndex = 17,
		}

		local textBox2 = Instance.new("TextBox")

		for k, value165 in pairs(tbl119) do
			textBox2[k] = value165
		end

		if value163 then
			textBox2.Parent = value163
		end

		local obj13 = textBox2
		local tbl120 = { CornerRadius = UDim.new(0, 7) }
		local uiCorner3 = Instance.new("UICorner")

		for k, value166 in pairs(tbl120) do
			uiCorner3[k] = value166
		end

		if obj13 then
			uiCorner3.Parent = obj13
		end

		if obj13 then
			obj13:SetAttribute("th_bg", "fill")
			local fill = tbl4.fill

			if fill and obj13:IsA("GuiObject") then
				obj13.BackgroundColor3 = fill
			end
		end

		if obj13 then
			obj13:SetAttribute("th_text", "text")
			local text = tbl4.text

			if text then
				obj13.TextColor3 = text
			end
		end

		if obj13 then
			obj13:SetAttribute("th_placeholder", "mute")
			local mute = tbl4.mute

			if mute and obj13:IsA("TextBox") then
				obj13.PlaceholderColor3 = mute
			end
		end

		local tbl121 = { Color = tbl4.line or tbl4.line, Thickness = 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }
		local uiStroke3 = Instance.new("UIStroke")

		for k, value167 in pairs(tbl121) do
			uiStroke3[k] = value167
		end

		if obj13 then
			uiStroke3.Parent = obj13
		end

		uiStroke3:SetAttribute("th_stroke", "line")
		local value168 = uiStroke3
		createUIPadding(obj13, 8, 0, 8, 0)

		obj13.Focused:Connect(function()
			func31(value168, 0.12, { Color = tbl4.accent })
		end)

		obj13.FocusLost:Connect(function()
			func31(value168, 0.12, { Color = tbl4.line })
			tbl9[param57] = obj13.Text
			local entry11 = tbl10[param57]

			if entry11 and entry11.on then
				pcall(entry11.on, obj13.Text)
			end

			if flag33 then
				return
			end

			if flag34 then
				return
			end
			flag34 = true
			local flag78 = gen

			task.delay(0.35, function()
				flag34 = false
				if flag78 ~= (func26().gen or 0) then
					return
				end
				func40()
			end)
		end)

		obj13:GetPropertyChangedSignal("Text"):Connect(function()
			tbl9[param57] = obj13.Text
			if flag33 then
				return
			end

			if flag34 then
				return
			end
			flag34 = true
			local flag79 = gen

			task.delay(0.35, function()
				flag34 = false
				if flag79 ~= (func26().gen or 0) then
					return
				end
				func40()
			end)
		end)

		tbl10[param57] = {
			kind = "input",
			status = value164,
			box = obj13,
			set = function(param60)
				tbl9[param57] = param60
				obj13.Text = tostring(param60)
			end,
		}

		local value169 = list19.items[#list19.items]

		if flag77 and flag77.visibleIf and value169 then
			value169.visibleIf = flag77.visibleIf
		end
	end

	func51 = function(param61, param62, param63, param64, param65, param66, flag80)
		local value170, value171, value172 = func55(param61, param63, param64)

		local tbl122 = {
			Size = UDim2.new(1, 0, 0, 24),
			Font = tbl5.mid,
			Text = param65,
			TextSize = 11,
			AutoButtonColor = false,
			ZIndex = 17,
		}

		local textButton2 = Instance.new("TextButton")

		for k, value173 in pairs(tbl122) do
			textButton2[k] = value173
		end

		if value171 then
			textButton2.Parent = value171
		end

		local tbl123 = { CornerRadius = UDim.new(0, 7) }
		local uiCorner3 = Instance.new("UICorner")

		for k, value174 in pairs(tbl123) do
			uiCorner3[k] = value174
		end

		if textButton2 then
			uiCorner3.Parent = textButton2
		end

		local flag81 = not flag80

		if flag81 then
			local tbl124 = { Color = tbl4.line or tbl4.line, Thickness = 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }
			local uiStroke3 = Instance.new("UIStroke")

			for k, value175 in pairs(tbl124) do
				uiStroke3[k] = value175
			end

			if textButton2 then
				uiStroke3.Parent = textButton2
			end

			uiStroke3:SetAttribute("th_stroke", "line")
		end

		func33(textButton2, flag81 and "fill" or "accent", flag81 and "lift" or "accentHover")
		flag81 = flag81 and "text" or "ink"

		if textButton2 and flag81 then
			textButton2:SetAttribute("th_text", flag81)
			local entry12 = tbl4[flag81]

			if entry12 then
				textButton2.TextColor3 = entry12
			end
		end

		tbl10[param62] = { kind = "button", status = value172, btn = textButton2 }

		textButton2.Activated:Connect(function()
			if param66 then
				pcall(param66)
			end

			local entry13 = tbl10[param62]

			if entry13 and entry13.on then
				pcall(entry13.on)
			end
		end)
	end

	func52 = function(param67, param68, param69, param70, param71)
		tbl9[param68] = param71
		local value176, value177, value178 = func55(param67, param69, param70)
		local flag82 = false
		local textButton5 = createTextButton(value177, param71.Name)
		textButton5.Font = tbl5.mono

		textButton5.MouseButton1Click:Connect(function()
			flag82 = true
			textButton5.Text = "press"
			textButton5.TextColor3 = tbl4.accent
		end)

		local connection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
			if not flag82 then
				return
			end

			if input.UserInputType ~= Enum.UserInputType.Keyboard then
				return
			end

			if gameProcessed then
				return
			end
			flag82 = false
			tbl9[param68] = input.KeyCode
			textButton5.Text = input.KeyCode.Name
			textButton5.TextColor3 = tbl4.text
			local entry14 = tbl10[param68]

			if entry14 and entry14.on then
				pcall(entry14.on, input.KeyCode)
			end

			if flag33 then
				return
			end

			if flag34 then
				return
			end
			flag34 = true
			local flag83 = gen

			task.delay(0.35, function()
				flag34 = false
				if flag83 ~= (func26().gen or 0) then
					return
				end
				func40()
			end)
		end)

		if connection then
			list3[#list3 + 1] = connection
		end

		tbl10[param68] = {
			kind = "keybind",
			status = value178,
			set = function(param72)
				if type(param72) == "string" then
					local ok, result = pcall(function()
						return Enum.KeyCode[param72]
					end)

					if ok then
						param72 = result
					end
				end

				tbl9[param68] = param72

				local ok, result = pcall(function()
					return param72.Name
				end)

				textButton5.Text = ok and result or tostring(param72)
			end,
		}
	end

	local function func71(text8)
		return type(text8) == "string" and text8:match("%S") ~= nil
	end

	local function func72()
		return nil
	end

	createTextLabel = function(list20, str30, str31)
		local card = list20.card or list20.scroll

		local tbl125 = {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundColor3 = tbl4.card,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 0),
		}

		list20.n = list20.n + 1
		tbl125.LayoutOrder = list20.n
		tbl125.ZIndex = 14
		local frame3 = Instance.new("Frame")

		for k, value179 in pairs(tbl125) do
			frame3[k] = value179
		end

		if card then
			frame3.Parent = card
		end

		local obj14 = frame3

		local tbl126 = {
			BackgroundColor3 = tbl4.line,
			BorderSizePixel = 0,
			Position = UDim2.new(0, 14, 0, 0),
			Size = UDim2.new(1, -28, 0, 1),
			Visible = list20.lastRule ~= nil,
			ZIndex = 15,
		}

		local frame4 = Instance.new("Frame")

		for k, value180 in pairs(tbl126) do
			frame4[k] = value180
		end

		if obj14 then
			frame4.Parent = obj14
		end

		list20.lastRule = frame4

		if frame4 then
			frame4:SetAttribute("th_bg", "line")
			local line = tbl4.line

			if line and frame4:IsA("GuiObject") then
				frame4.BackgroundColor3 = line
			end
		end

		if obj14 then
			obj14:SetAttribute("th_bg", "card")
			local card2 = tbl4.card
			-- 𝚂𝚘𝚞𝚛𝚌𝚎 𝙻𝚎𝚊𝚔 | https://discord.gg/x7YbZeezpm

			if card2 and obj14:IsA("GuiObject") then
				obj14.BackgroundColor3 = card2
			end
		end

		obj14:SetAttribute("th_hover", "lift")
		obj14:SetAttribute("th_row", true)

		obj14.MouseEnter:Connect(function()
			obj14:SetAttribute("th_over", true)
			func31(obj14, 0.1, { BackgroundTransparency = 0, BackgroundColor3 = tbl4.lift })
		end)

		obj14.MouseLeave:Connect(function()
			obj14:SetAttribute("th_over", false)
			func31(obj14, 0.1, { BackgroundTransparency = 1, BackgroundColor3 = tbl4.card })
		end)

		local tbl127 = {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(14, 8),
			Size = UDim2.new(1, -28, 0, 14),
			Font = tbl5.mid,
			Text = str30,
			TextColor3 = tbl4.text,
			TextSize = 12,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 15,
		}

		local textLabel3 = Instance.new("TextLabel")

		for k, value181 in pairs(tbl127) do
			textLabel3[k] = value181
		end

		if obj14 then
			textLabel3.Parent = obj14
		end

		if textLabel3 then
			textLabel3:SetAttribute("th_text", "text")
			local text = tbl4.text

			if text then
				textLabel3.TextColor3 = text
			end
		end

		local tbl128 = {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(14, 24),
			Size = UDim2.new(1, -28, 0, 0),
			Font = tbl5.body,
			Text = str31,
			TextColor3 = tbl4.dim,
			TextSize = 11,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			ZIndex = 15,
		}

		local textLabel4 = Instance.new("TextLabel")

		for k, value182 in pairs(tbl128) do
			textLabel4[k] = value182
		end

		if obj14 then
			textLabel4.Parent = obj14
		end

		if textLabel4 then
			textLabel4:SetAttribute("th_text", "dim")
			local dim = tbl4.dim

			if dim then
				textLabel4.TextColor3 = dim
			end
		end

		local tbl129 = { PaddingBottom = UDim.new(0, 10) }
		local uiPadding = Instance.new("UIPadding")

		for k, value183 in pairs(tbl129) do
			uiPadding[k] = value183
		end

		if obj14 then
			uiPadding.Parent = obj14
		end

		list20.items[#list20.items + 1] = { kind = "row", inst = obj14, q = string.lower(str30 .. " " .. str31) }
		return textLabel4
	end

	local About = func53("About", "Cokeboys for Steal an Egg")
	local autoSteal = func53("Auto Steal", "targeting, filters, travel")
	Plot = func53("Plot", "eggs, pets, upgrades, selling")
	Serverhop = func53("Serverhop", "fill a reason, then turn Auto hop on")
	Misc = func53("Misc", "esp, defence, flight")
	Webhook = func53("Webhook", "outbound messages")
	Settings = func53("Settings", "window and config")
	local Events = func53("Events", "limited events and event automation")
	func54("About", { "About" }, 0)
	func54("Autofarm", { "Auto Steal" }, 10)
	func54("Other stuff", { "Plot", "Serverhop", "Misc", "Events" }, 30)
	func54("Config", { "Webhook", "Settings" }, 50)

	local function createFrame3(list21)
		local tbl130 = {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 0),
			BackgroundColor3 = tbl4.card,
			BorderSizePixel = 0,
		}

		list21.n = list21.n + 1
		tbl130.LayoutOrder = list21.n
		tbl130.ZIndex = 13
		local scroll = list21.scroll
		local frame3 = Instance.new("Frame")

		for k, value184 in pairs(tbl130) do
			frame3[k] = value184
		end

		if scroll then
			frame3.Parent = scroll
		end

		local tbl131 = { CornerRadius = UDim.new(0, 8) }
		local uiCorner3 = Instance.new("UICorner")

		for k, value185 in pairs(tbl131) do
			uiCorner3[k] = value185
		end

		if frame3 then
			uiCorner3.Parent = frame3
		end

		local tbl132 = { Color = tbl4.line or tbl4.line, Thickness = 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }
		local uiStroke3 = Instance.new("UIStroke")

		for k, value186 in pairs(tbl132) do
			uiStroke3[k] = value186
		end

		if frame3 then
			uiStroke3.Parent = frame3
		end

		uiStroke3:SetAttribute("th_stroke", "line")

		if frame3 then
			frame3:SetAttribute("th_bg", "card")
			local card = tbl4.card

			if card and frame3:IsA("GuiObject") then
				frame3.BackgroundColor3 = card
			end
		end

		createUIPadding(frame3, 14, 14, 14, 14)

		local tbl133 = {
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, 10),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}

		local uiListLayout = Instance.new("UIListLayout")

		for k, value187 in pairs(tbl133) do
			uiListLayout[k] = value187
		end

		if frame3 then
			uiListLayout.Parent = frame3
		end

		local tbl134 = { BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 48), LayoutOrder = 1, ZIndex = 14 }
		local frame4 = Instance.new("Frame")

		for k, value188 in pairs(tbl134) do
			frame4[k] = value188
		end

		if frame3 then
			frame4.Parent = frame3
		end

		createFrame(frame4, 15, 44).Position = UDim2.fromOffset(0, 2)

		local tbl135 = {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(54, 2),
			Size = UDim2.new(1, -54, 0, 20),
			Font = tbl5.title,
			Text = str3.Title .. " " .. str3.Product,
			TextColor3 = tbl4.text,
			TextSize = 18,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextTruncate = Enum.TextTruncate.AtEnd,
			ZIndex = 15,
		}

		local textLabel3 = Instance.new("TextLabel")

		for k, value189 in pairs(tbl135) do
			textLabel3[k] = value189
		end

		if frame4 then
			textLabel3.Parent = frame4
		end

		if textLabel3 then
			textLabel3:SetAttribute("th_text", "text")
			local text = tbl4.text

			if text then
				textLabel3.TextColor3 = text
			end
		end

		local tbl136 = {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(54, 26),
			Size = UDim2.new(1, -54, 0, 20),
			ZIndex = 15,
		}

		local frame5 = Instance.new("Frame")

		for k, value190 in pairs(tbl136) do
			frame5[k] = value190
		end

		if frame4 then
			frame5.Parent = frame4
		end

		local tbl137 = {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 6),
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}

		local uiListLayout2 = Instance.new("UIListLayout")

		for k, value191 in pairs(tbl137) do
			uiListLayout2[k] = value191
		end

		if frame5 then
			uiListLayout2.Parent = frame5
		end

		local function createTextLabel3(str32, param73, flag84)
			local tbl138 = {
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundColor3 = tbl4.fill,
				Size = UDim2.fromOffset(0, 18),
				Font = tbl5.mono,
				Text = "  " .. str32 .. "  ",
				TextColor3 = tbl4[flag84] or tbl4.dim,
				TextSize = 10,
				LayoutOrder = param73,
				ZIndex = 16,
			}

			local value192 = frame5
			local textLabel4 = Instance.new("TextLabel")

			for k, value193 in pairs(tbl138) do
				textLabel4[k] = value193
			end

			if value192 then
				textLabel4.Parent = value192
			end

			local tbl139 = { CornerRadius = UDim.new(0, 5) }
			local uiCorner4 = Instance.new("UICorner")

			for k, value194 in pairs(tbl139) do
				uiCorner4[k] = value194
			end

			if textLabel4 then
				uiCorner4.Parent = textLabel4
			end

			if textLabel4 then
				textLabel4:SetAttribute("th_bg", "fill")
				local fill = tbl4.fill

				if fill and textLabel4:IsA("GuiObject") then
					textLabel4.BackgroundColor3 = fill
				end
			end

			flag84 = flag84 or "dim"

			if textLabel4 then
				if not flag84 then
					return textLabel4
				end
				textLabel4:SetAttribute("th_text", flag84)
				local entry15 = tbl4[flag84]
				if not entry15 then
					return textLabel4
				end
				textLabel4.TextColor3 = entry15
			end

			return textLabel4
		end

		createTextLabel3("v" .. tostring(str3.Version), 1, "accent")
		local status = str3.Status

		if type(status) == "string" and status:match("%S") ~= nil then
			createTextLabel3(str3.Status, 2, "dim")
		end

		local game_ = str3.Game

		if type(game_) == "string" and game_:match("%S") ~= nil then
			createTextLabel3(str3.Game, 3, "dim")
		end

		local tagline = str3.Tagline
		local tagline2 = type(tagline) == "string" and tagline:match("%S") ~= nil and str3.Tagline or "Autofarm, hatch eggs and other stuff"

		local tbl140 = {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 0),
			Font = tbl5.body,
			Text = tagline2,
			TextColor3 = tbl4.dim,
			TextSize = 12,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = 2,
			ZIndex = 15,
		}

		local textLabel4 = Instance.new("TextLabel")

		for k, value195 in pairs(tbl140) do
			textLabel4[k] = value195
		end

		if frame3 then
			textLabel4.Parent = frame3
		end

		if textLabel4 then
			textLabel4:SetAttribute("th_text", "dim")
			local dim = tbl4.dim

			if dim then
				textLabel4.TextColor3 = dim
			end
		end

		list21.items[#list21.items + 1] = { kind = "section", inst = frame3, q = string.lower(textLabel3.Text .. " " .. tagline2) }
		list21.card = nil
		list21.lastRule = nil
		return frame3
	end

	createFrame3(About)
	createFrame2(About, "Features")
	createTextLabel(About, "Auto Steal", "Snatch eggs and bring them to safe zone")
	createTextLabel(About, "Plot", "Place, hatch eggs, auto sell")
	createTextLabel(About, "Serverhop", "Idle, time, or night spawn — Auto hop only leaves if one of those boxes has a number")
	createTextLabel(About, "Misc", "ESP, stats, index claim, anti trap / ragdoll, bat aura, flight, bypass speed, optimizer")
	createTextLabel(About, "Webhook", "Discord embeds with the pet/egg icon on steal, hatch, and sell")
	local result18 = func72()
	local website = func71(str3.Website)
	local changelog = func71(str3.Changelog)

	if result18 or website or changelog then
		createFrame2(About, "Links")

		if website then
			func51(About, "CopySite", "Website", str3.Website, "Copy", function()
				if setclipboard then
					pcall(setclipboard, str3.Website)
				end
			end, false)
		end

		if changelog then
			createTextLabel(About, "What's new", str3.Changelog)
		end
	end

	createFrame2(About, "Credits")
	createTextLabel(About, "Made by", func71(str3.Author) and str3.Author or str3.Title)

	if func71(str3.Credits) then
		createTextLabel(About, "With", str3.Credits)
	end

	if func71(str3.Support) then
		local result19 = func72()

		if not result19 or not string.find(str3.Support, result19, 1, true) then
			createTextLabel(About, "Support", str3.Support)
		end
	end

	createFrame2(About, "Disclaimer")
	createTextLabel(About, "Not official", "Not affiliated with " .. (str3.Game or "this game") .. ". I'm not responsible for any bans, use at your own risk !")
	createFrame2(autoSteal, "Auto steal")
	func46(autoSteal, "AutoSteal", "Auto steal", "idle · took 0 · lost 0 · re-grabbed 0", false, { flag = "StealTravel", options = { "Speed", "Flight" } })
	func46(autoSteal, "AutoIndexSteal", "Auto fill index", "Targets egg types missing from your personal index", false)
	func46(autoSteal, "ForestBaitJump", "Instant steal", "Uses a bait egg from your selected area to speed up supported steals.", false)
	func49(autoSteal, "InstantStealBaitArea", "Instant Steal bait area", "Choose which of the first three areas supplies the temporary bait egg for Instant Steal.", { "Forest", "Lake", "Desert" }, "Forest", false)
	func47(autoSteal, "StealSpeed", "Travel speed", "Studs/s — can pullback if this is too high", 50, 1300, 300, " studs/s")
	createFrame2(autoSteal, "Targeting")
	func49(autoSteal, "StealMode", "What to take", "Filters being used from below", { "Best value", "Egg type filter", "Gen ($/s) snipe" }, "Best value", false)

	func50(autoSteal, "GenSnipeFloor", "Egg ($/s) snipe", "What the pet inside of the egg will pay", "any · e.g. 100m", "", { visibleIf = function()
		return tbl9.StealMode == "Gen ($/s) snipe"
	end })

	createFrame2(autoSteal, "Where to look")
	func49(autoSteal, "Areas", "Areas", "which zones to steal from", list1, { unpack(list1) }, true)
	createFrame2(autoSteal, "What qualifies")
	func46(autoSteal, "UseRarity", "Egg type filter", "off = any egg type counts", false)
	func49(autoSteal, "Rarities", "Egg types", "an egg counts if it is one of these", tbl6, { unpack(tbl6) }, true)
	func46(autoSteal, "UseMutation", "Use mutation filter", "off = mutated or not, both fine", false)
	func49(autoSteal, "Mutations", "Mutations", "an egg counts if it carries one of these", tbl7, { unpack(tbl7) }, true)
	func50(autoSteal, "MinWeight", "Minimum weight (Kg)", "the same Kg the game shows — blank for any", "any", "")
	createFrame2(Events, "Great Bloom")
	func46(Events, "AutoGreatBloom", "Auto Great Bloom", "Equips your bat, hits every tree in range and vacuums crystals before they rot.", false)
	func47(Events, "BloomTreeRange", "Tree range", "The game's own reach is added to this radius.", 25, 250, 90, " studs")
	func46(Events, "CrystalVacuum", "Crystal Vacuum", "Collects available Great Bloom crystals before they expire.", false)
	func46(Events, "AutoDepositCrystals", "Auto Deposit Crystals", "Feeds collected crystals into the Sakura incubator.", false)
	greatBloomStatus = createTextLabel(Events, "Great Bloom status", "Waiting for the next bloom.")

	func51(Events, "BloomRefresh", "Refresh", "Refresh Great Bloom status.", "Refresh", function()
		local cokeboysRefreshEvents = (getgenv and getgenv() or _G).CokeboysRefreshEvents

		if type(cokeboysRefreshEvents) == "function" then
			cokeboysRefreshEvents()
		end
	end, false)

	func51(Events, "BloomRollMutation", "Roll mutation", "Use the available Sakura mutation roll.", "Roll", function()
		local cokeboysRollBloomMutation = (getgenv and getgenv() or _G).CokeboysRollBloomMutation

		if type(cokeboysRollBloomMutation) == "function" then
			task.spawn(cokeboysRollBloomMutation)
		end
	end, false)

	createFrame2(Events, "Rift")
	func46(Events, "ShatteredRiftFarm", "Shattered Rift helper", "Collects the Shattered Rift sacrifice pool and completes its live recipe during safe downtime.", false)
	func46(Events, "AutoRift", "Auto Rift", "Reads the live recipe and contributes the cheapest matching pets you own.", false)
	func46(Events, "RiftRerollShort", "Reroll When Short", "Uses a free reroll when you cannot complete the current recipe.", false)
	riftStatus = createTextLabel(Events, "Rift status", "Waiting for the live Rift recipe.")

	func51(Events, "RiftRefresh", "Refresh", "Read the current Rift recipe.", "Refresh", function()
		local cokeboysRefreshEvents = (getgenv and getgenv() or _G).CokeboysRefreshEvents

		if type(cokeboysRefreshEvents) == "function" then
			cokeboysRefreshEvents()
		end
	end, false)

	createFrame2(Events, "Hungry Monster")
	func46(Events, "AutoEvent", "Auto Feed Monster", "Grabs eligible parasite eggs, feeds the monster and handles its reward chest.", false)
	func46(Events, "AutoEventChests", "Auto Open Chests", "Opens the Hungry Monster reward chest when it appears.", true)
	func47(Events, "EventKeepParasites", "Keep N parasite eggs", "The monster eats the parasite but keeps the egg, so reserve this many.", 0, 20, 0, " eggs")
	func50(Events, "EventKeepGen", "Don't feed if egg makes ($/s)", "Keeps high-pay eggs · blank means feed any.", "feed any · e.g. 5m", "")
	hungryMonsterStatus = createTextLabel(Events, "Hungry Monster status", "Waiting for the Hungry Monster event.")

	func51(Events, "EventRefresh", "Refresh", "Refresh Hungry Monster status.", "Refresh", function()
		local cokeboysRefreshEvents = (getgenv and getgenv() or _G).CokeboysRefreshEvents

		if type(cokeboysRefreshEvents) == "function" then
			cokeboysRefreshEvents()
		end
	end, false)

	func51(Events, "EventOpenChests", "Open chests now", "Open currently available event chests.", "Open", function()
		local cokeboysOpenMonsterChests = (getgenv and getgenv() or _G).CokeboysOpenMonsterChests

		if type(cokeboysOpenMonsterChests) == "function" then
			task.spawn(cokeboysOpenMonsterChests)
		end
	end, false)

	createFrame2(Events, "Boss & Light vs Darkness")
	boss = createTextLabel(Events, "Boss", "Read the live boss arena status and entry window.")

	func51(Events, "BossRefresh", "Refresh", "Refresh the boss arena status.", "Refresh", function()
		local cokeboysRefreshEvents = (getgenv and getgenv() or _G).CokeboysRefreshEvents

		if type(cokeboysRefreshEvents) == "function" then
			cokeboysRefreshEvents()
		end
	end, false)

	func51(Events, "BossEnter", "Enter arena", "Enter while the boss arena is open.", "Enter", function()
		local cokeboysEnterBoss = (getgenv and getgenv() or _G).CokeboysEnterBoss

		if type(cokeboysEnterBoss) == "function" then
			task.spawn(cokeboysEnterBoss)
		end
	end, false)

	func46(Events, "AutoCollectRings", "Auto Collect Rings", "Sweeps up Light vs Darkness rings and power-ups while the event is active.", false)
	func47(Events, "RingCollectRange", "Collect range", "How far to search for rings and orbs.", 25, 400, 140, " studs")
	lightVsDarkness = createTextLabel(Events, "Light vs Darkness", "Score, collected rings and power-ups will appear here.")

	func51(Events, "LightDarkRead", "Read score", "Refresh the Light vs Darkness score.", "Read", function()
		local cokeboysRefreshEvents = (getgenv and getgenv() or _G).CokeboysRefreshEvents

		if type(cokeboysRefreshEvents) == "function" then
			cokeboysRefreshEvents()
		end
	end, false)

	createFrame2(Events, "Dr. Scramble Experiment")
	func46(Events, "AutoScramble", "Auto Dr. Scramble", "Automatically handles Dr. Scramble robots.", false)
	func46(Events, "ScrambleWeaponSwitch", "Switch weapons", "Switch between available swing weapons during Dr. Scramble. Turn off to keep using one equipped weapon.", true)
	func47(Events, "ScrambleSwitchDelay", "Weapon switch delay", "Time between alternate weapon switches.", 200, 1000, 450, " ms")
	func46(Events, "ScrambleRealClicks", "⚠ Real mouse clicks", "BEWARE: Faster Dr. Scramble input, but it clicks your screen and may activate game UI or other windows. Off by default.", false)
	func46(Events, "AutoScrambleParts", "Collect Lost Vault Parts", "Automatically collects available Lost Vault Parts.", false)
	func49(Events, "ScrambleHealthTarget", "Robot health targets", "Choose which robot tiers to target.", { "All robots", "3 HP", "5 HP", "10 HP" }, { "All robots" }, true)
	value64 = createTextLabel(Events, "Dr. Scramble status", "Waiting for the next experiment window.")

	func51(Events, "ScrambleRefresh", "Refresh", "Refresh the experiment timer and remaining drone count.", "Refresh", function()
		local cokeboysRefreshEvents = (getgenv and getgenv() or _G).CokeboysRefreshEvents

		if type(cokeboysRefreshEvents) == "function" then
			cokeboysRefreshEvents()
		end
	end, false)
end

createFrame2(Plot, "Eggs & pets")
func46(Plot, "AutoPlaceEggs", "Auto place eggs", "idle · placed 0 · hatched 0", false)
func46(Plot, "NightEggLoop", "Place & hatch eggs at night", "Travels to your pen, places eggs and hatches ready eggs during nighttime", false)
func46(Plot, "DontPlaceRiftEggs", "Don't place Shattered Rift eggs", "Keeps Shattered Rift reward eggs in inventory; sacrifice eggs can still be placed.", false)
func49(Plot, "NeverPlaceRarity", "Never place rarer", "Keeps better eggs in inventory", { "Place all", unpack(tbl6) }, "Place all", false)
func50(Plot, "PlaceMinGen", "Only place eggs worth ($/s)", "pen fills with the best first — blank for any", "any · e.g. 1.5m", "")
func46(Plot, "AutoHatch", "Auto hatch", "hatches every egg the moment its timer is up", false)
func46(Plot, "EquipBest", "Auto place best pets", "uses the game's own equip-best", false)
createFrame2(Plot, "Upgrades")
func46(Plot, "UpgTrails", "Auto upgrade trails", "idle · bought 0 · sold 0", false)
func46(Plot, "UpgTreadmill", "Auto upgrade treadmill", "buys the next treadmill when you can afford it", false)
func46(Plot, "UpgPen", "Auto upgrade pen", "more room for pets", false)
func50(Plot, "KeepMoney", "Keep this much money", "never spend below this — blank to spend freely", "spend it all · e.g. 500m", "")
createFrame2(Plot, "Selling")
func51(Plot, "SellPreview", "Preview what will sell", "opens a window under the stats panel — Hover icon to display stats", "Preview", nil, false)
func50(Plot, "SellUnderGen", "Sell anything earning under ($/s)", "blank = nothing sells", "nothing sells · e.g. 250k", "")
func46(Plot, "AutoSellPets", "Auto sell pets", "Sells eligible low-earning pets.", false)
func46(Plot, "AutoSellEggs", "Auto sell eggs", "Sells eligible spare eggs.", false)
createFrame2(Plot, "Selling filters")
func46(Plot, "SellNonRiftRecipeEggs", "Protect pets needed for the Shattered Rift pool", "When enabled, auto sell keeps every pet and egg in the Shattered Rift sacrifice pool. Sell-under still applies to everything else.", false)
createFrame2(Plot, "Treadmill training")
func46(Plot, "AutoTreadmill", "Auto treadmill", "not training · 0/s · earned 0 this session", false)
func46(Plot, "GhostTreadmill", "Ghost treadmill", "Keeps training active while you move.", false)
func46(Plot, "TrainWhenIdle", "Train when nothing to steal", "Trains during safe downtime.", true)
func47(Plot, "ReadyEarly", "Get ready early", "Step earlier to steal", 0, 15, 4, "s before reset")
createFrame2(Serverhop, "Auto hop")
func46(Serverhop, "AutoHop", "Auto hop", "off · 0 hops this session", false)
createFrame2(Serverhop, "Leave when")
func50(Serverhop, "HopIdle", "No steal for (seconds)", "Counts time since the last successful bank. Night does not count. Min 5. Blank = off.", "off · 90", "")
func50(Serverhop, "HopAfter", "Been here (minutes)", "leave after this long no matter what. Min 1. Blank = off.", "off · 20", "")
createFrame2(Serverhop, "Leave now")

func51(Serverhop, "HopNow", "Hop now", "one hop. Auto hop can stay off.", "Hop", function()
end, true)

createFrame2(Serverhop, "Which servers")
func47(Serverhop, "HopPages", "Pages to fetch", "3 is enough. more pages is slower.", 1, 10, 3, " pages")
func46(Serverhop, "HopSkipFull", "Skip full servers", "a full server just dumps you back here", true)
func49(Serverhop, "HopPlayers", "Players", "Lowest = emptier, Highest = fuller", { "Lowest", "Highest" }, "Lowest", false)

local function func73(list22, param74)
	local card = list22.card or list22.scroll
	local tbl141 = { AutomaticSize = Enum.AutomaticSize.Y, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 0) }
	list22.n = list22.n + 1
	tbl141.LayoutOrder = list22.n
	tbl141.ZIndex = 14
	local frame = Instance.new("Frame")

	for k, value196 in pairs(tbl141) do
		frame[k] = value196
	end

	if card then
		frame.Parent = card
	end

	local tbl142 = {
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		Position = UDim2.fromOffset(14, 6),
		Size = UDim2.new(1, -28, 0, 0),
		Font = tbl5.body,
		Text = param74,
		TextColor3 = tbl4.mute,
		TextSize = 12,
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 15,
	}

	local textLabel = Instance.new("TextLabel")

	for k, value197 in pairs(tbl142) do
		textLabel[k] = value197
	end

	if frame then
		textLabel.Parent = frame
	end

	local tbl143 = { PaddingBottom = UDim.new(0, 10), PaddingTop = UDim.new(0, 6) }
	local uiPadding = Instance.new("UIPadding")

	for k, value198 in pairs(tbl143) do
		uiPadding[k] = value198
	end

	if frame then
		uiPadding.Parent = frame
	end

	if textLabel then
		textLabel:SetAttribute("th_text", "mute")
		local mute = tbl4.mute

		if mute then
			textLabel.TextColor3 = mute
		end
	end

	list22.items[#list22.items + 1] = { kind = "row", inst = frame, q = string.lower(param74) }
end

func73(Serverhop, "skips this job and recent servers — shared across accounts in this workspace")
createFrame2(Misc, "Eggs on the map")
func46(Misc, "EggESP", "Egg ESP", nil, false)
func46(Misc, "PlayerESP", "Player ESP", "clean semi-transparent player labels", false)
func49(Misc, "ESPFilter", "Show ESP on", nil, { "All eggs", "Eggs matching my filters", "Stolen target only" }, "All eggs", false)
func46(Misc, "ESPBeam", "Beam to current target", "line to the egg auto steal picked", false)
createFrame2(Misc, "Eggs on your plot")
func46(Misc, "PlotESP", "Plot egg ESP", "payout and hatch timer — green when ready", false)
createFrame2(Misc, "Stats")
func46(Misc, "StatsPanel", "Show stats panel", "draggable: money, income, pen, best pet, best egg, speed, session", false)
func46(Misc, "ClaimIndex", "Auto claim index", "redeems every completed index entry in one sweep", false)
createFrame2(Misc, "Defence")
func46(Misc, "AntiTrap", "Anti trap", "Disables traps", false)
func46(Misc, "AntiMob", "Anti ragdoll", "guards and other players' bats cannot flop or knock you; your bat still swings", false)
createFrame2(Misc, "Bat")
func46(Misc, "BatAura", "Bat aura", "Automatically protects you from nearby players.", false)
createFrame2(Misc, "Walking")
func46(Misc, "BypassSpeed", "Bypass speed", "Use the Bypass keybind below. Off = normal walk; on = Bypass cap.", false)
func47(Misc, "BypassCap", "Bypass speed cap", "studs per second while walking with bypass on", 150, 1300, 880, " studs/s")
func52(Misc, "BypassBind", "Bypass keybind", "toggles bypass speed without opening the window", str3.BypassBind)
createFrame2(Misc, "Flight")
func46(Misc, "Flight", "Flight", "Desktop: WASD · Space/Ctrl vertical. Touch: thumbstick · on-screen Up/Down.", false)
func47(Misc, "FlightSpeed", "Flight speed", "studs per second while flying", 150, 1300, 880, " studs/s")
func52(Misc, "FlightBind", "Flight keybind", "toggles flight without opening the window", str3.FlightBind)
createFrame2(Misc, "Performance")
func46(Misc, "Optimizer", "Game optimizer", "Improves performance by reducing visual effects.", false)
func46(Misc, "HideOtherPenPets", "Hide other players' pen pets", "Hides other players' pen pets on your screen.", false)
func46(Misc, "HideOwnPenPets", "Hide my pen pets", "Hides your pen pets on your screen.", false)
func47(Misc, "FPSCap", "FPS cap", "0 - no fps cap", 0, 240, 0, "")
createFrame2(Webhook, "Connection")
func46(Webhook, "HookEnabled", "Send outbound", "", false)
func50(Webhook, "HookUrl", "Endpoint URL", "Enter your Discord webhook URL.", "https://", "")

func51(Webhook, "HookTest", "Test send", "Checks your webhook setup.", "Send", function()
end, true)

createFrame2(Webhook, "What to send")
func46(Webhook, "HookStolen", "Egg stolen", "icon, $/s, rarity, mutations, where it came from", true)
func46(Webhook, "HookHatched", "Egg hatched", "icon, $/s, rarity, weight", true)
func46(Webhook, "HookSold", "Sold pets or eggs", "icon and what it was earning", false)
func46(Webhook, "HookRewards", "Rewards claimed", "index redeem count", false)
createFrame2(Webhook, "How much noise")
func50(Webhook, "HookMinGen", "Only eggs earning over ($/s)", "stolen and hatched — blank for everything", "everything · e.g. 50m", "")
func49(Webhook, "HookRarityFloor", "Rarity floor", "stolen and hatched below this rarity are skipped", { "Any", unpack(tbl6) }, "Any", false)
func46(Webhook, "SessionDigest", "Session recap", "every 10 minutes — stolen, lost, hatched, sold, cash. not a steal ping", false)
createFrame2(Webhook, "The message")
func49(Webhook, "HookPing", "Ping", "", { "No ping", "Here", "User id" }, "No ping", false)
func50(Webhook, "HookUserId", "User id", "optional", "0", "")
func46(Webhook, "HookUsername", "Show my Roblox name and headshot", "", false)
func46(Webhook, "ExportUrl", "Let exported configs carry the URL", "off by default", false)
createFrame2(Settings, "Appearance")
func46(Settings, "PhoneUI", "Phone layout", "compact hub for phones / emulators — leave off on PC", flag13)
func47(Settings, "UIScale", "UI scale", "zooms the hub — does not crush the layout", 75, 125, 100, "%")
func49(Settings, "Theme", "Theme", "dark or light — mark swaps with the theme", { "Dark", "Light" }, "Dark", false)
createFrame2(Settings, "Keybinds")
func52(Settings, "OpenBind", "Open / close", "press this any time to show or hide", str3.OpenBind)
func52(Settings, "FlightBind2", "Toggle flight", "same bind as the movement page", str3.FlightBind)
func46(Settings, "StartMin", "Start minimised", nil, false)
createFrame2(Settings, "Config")
func49(Settings, "CfgPreset", "Load config", "new accounts use default", { "default" }, "default", false)
func50(Settings, "CfgSaveName", "Save as", "blank = default", "name · or leave blank", "")

func51(Settings, "SaveCfgAs", "Save config", "Saves these settings as a preset.", "Save", function()
	func43(tbl9.CfgSaveName)
end, true)

func51(Settings, "ExportCfg", "Export settings", "copies config to clipboard", "Copy", function()
	func40()

	local ok, result = pcall(function()
		local jsonEncode = HttpService.JSONEncode
		local result20 = func39()
		return jsonEncode(HttpService, result20)
	end)

	if not ok then
		return
	end

	if setclipboard then
		pcall(setclipboard, result)
	end
end, true)

func50(Settings, "ImportPaste", "Import settings", "load config from clipboard", "paste, then press Import", "")

func51(Settings, "ImportCfg", "Import", nil, "Import", function()
	local importPaste = tbl9.ImportPaste
	if type(importPaste) ~= "string" or importPaste == "" then
		return
	end

	local ok, result = pcall(function()
		return HttpService:JSONDecode(importPaste)
	end)

	if not ok or type(result) ~= "table" then
		return
	end
	func41(result, true)
	setTheme(tbl9.Theme or "Dark")
	func40(true)
end, false)

createFrame2(Settings, "Window")

do
	local value199 = nil

	func51(Settings, "ResetWin", "Reset position & size", "window and orb back to the middle at default size", "Reset", function()
		obj4.Position = UDim2.fromScale(0.5, 0.5)
		obj4.Size = UDim2.fromOffset(n2, n3)
		value37.Scale = 1

		if tbl10.UIScale and tbl10.UIScale.set then
			tbl10.UIScale.set(100)
		end

		if flag13 then
			Orb.Position = UDim2.new(0, 36, 1, -88)
		else
			Orb.Position = UDim2.new(0, 40, 0.5, 0)
		end

		value199()
	end, false)

	tbl10.UIScale.on = function(num9)
		value37.Scale = num9 / 100
	end

	tbl10.PhoneUI.on = function(flag85)
		flag14 = true
		flag13 = not not flag85

		if func24 then
			func24()
		end
	end

	tbl10.Theme.on = function(param75)
		setTheme(param75)
	end

	tbl10.FlightBind.on = function(flightBind2)
		tbl9.FlightBind2 = flightBind2

		if tbl10.FlightBind2 and tbl10.FlightBind2.set then
			pcall(tbl10.FlightBind2.set, flightBind2)
		end
	end

	tbl10.FlightBind2.on = function(flightBind)
		tbl9.FlightBind = flightBind

		if tbl10.FlightBind and tbl10.FlightBind.set then
			pcall(tbl10.FlightBind.set, flightBind)
		end
	end

	tbl10.CfgPreset.on = function(param76)
		func44(param76, true)
		func42()
	end

	local tbl144 = {
		Name = "Orb",
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = flag13 and UDim2.new(0, 36, 1, -88) or UDim2.new(0, 40, 0.5, 0),
	}

	local udim2 = UDim2.fromOffset
	local flag86 = not flag13
	tbl144.Size = udim2(flag86 and 34 or 48, flag86 and 34 or 48)
	tbl144.BackgroundColor3 = tbl4.rail
	tbl144.Text = ""
	tbl144.AutoButtonColor = false
	tbl144.Visible = false
	tbl144.ZIndex = 20
	local TextButton = func32("TextButton", tbl144, obj1)

	local function createUICorner(parent, flag87)
		local tbl145 = { CornerRadius = UDim.new(0, flag87 or 8) }
		local uiCorner = Instance.new("UICorner")

		for k, value200 in pairs(tbl145) do
			uiCorner[k] = value200
		end

		if parent then
			uiCorner.Parent = parent
		end

		return uiCorner
	end

	createUICorner(TextButton, flag86 and 14 or 18)
	createUIStroke(TextButton, "accent", 1.4)

	local function func74(instance3, str33, flag88)
		if not instance3 or not flag88 then
			return instance3
		end
		instance3:SetAttribute("th_" .. str33, flag88)
		local entry16 = tbl4[flag88]
		if not entry16 then
			return instance3
		end

		if str33 == "bg" and instance3:IsA("GuiObject") then
			instance3.BackgroundColor3 = entry16
			return instance3
		end

		if str33 == "text" then
			instance3.TextColor3 = entry16
			return instance3
		end

		if str33 == "placeholder" and instance3:IsA("TextBox") then
			instance3.PlaceholderColor3 = entry16
			return instance3
		end

		if str33 == "stroke" and instance3:IsA("UIStroke") then
			instance3.Color = entry16
			return instance3
		end

		if str33 == "scroll" and instance3:IsA("ScrollingFrame") then
			instance3.ScrollBarImageColor3 = entry16
		end

		return instance3
	end

	func74(TextButton, "bg", "rail")
	local frame8 = createFrame(TextButton, 21, 20)
	frame8.AnchorPoint = Vector2.new(0.5, 0.5)
	frame8.Position = UDim2.fromScale(0.5, 0.5)
	local visible = true

	setVisible = function(flag89)
		visible = not not flag89
		obj4.Visible = visible
		TextButton.Visible = not visible

		if not visible then
			func48()
			value35.Visible = false
		end
	end

	obj6.Activated:Connect(function()
		setVisible(false)
	end)

	TextButton.Activated:Connect(function()
		setVisible(true)
	end)

	local value201 = nil
	local value202 = nil
	local position = nil
	local position2 = nil
	local absoluteSize = nil

	value59.InputBegan:Connect(function(input)
		local userInputType = input.UserInputType

		if userInputType == Enum.UserInputType.MouseButton1 or userInputType == Enum.UserInputType.Touch then
			value201 = true
			value202 = "win"
			position = input.Position
			position2 = obj4.Position
		end
	end)

	obj5.InputBegan:Connect(function(input)
		local userInputType = input.UserInputType

		if userInputType == Enum.UserInputType.MouseButton1 or userInputType == Enum.UserInputType.Touch then
			value201 = true
			value202 = "win"
			position = input.Position
			position2 = obj4.Position
		end
	end)

	TextButton.InputBegan:Connect(function(input)
		local userInputType = input.UserInputType

		if userInputType == Enum.UserInputType.MouseButton1 or userInputType == Enum.UserInputType.Touch then
			value201 = true
			value202 = "orb"
			position = input.Position
			position2 = TextButton.Position
		end
	end)

	local Frame = func32("Frame", {
		AnchorPoint = Vector2.new(1, 1),
		BackgroundTransparency = 1,
		Position = UDim2.new(1, 0, 1, 0),
		Size = UDim2.fromOffset(flag86 and 18 or 32, flag86 and 18 or 32),
		ZIndex = 30,
		Active = true,
	}, obj4)

	for i = 0, 1 do
		func32("Frame", {
			AnchorPoint = Vector2.new(1, 1),
			Position = UDim2.new(1, -4 - i * 4, 1, -4),
			Size = UDim2.fromOffset(8 - i * 2, 1),
			BackgroundColor3 = tbl4.mute,
			BorderSizePixel = 0,
			ZIndex = 31,
		}, Frame)
	end

	Frame.InputBegan:Connect(function(input)
		local userInputType = input.UserInputType

		if userInputType == Enum.UserInputType.MouseButton1 or userInputType == Enum.UserInputType.Touch then
			value201 = true
			value202 = "resize"
			position = input.Position
			absoluteSize = obj4.AbsoluteSize
			position2 = obj4.Position
		end
	end)

	func29(UserInputService.InputChanged:Connect(function(...) end))

	func29(UserInputService.InputEnded:Connect(function(input)
		local userInputType = input.UserInputType

		if userInputType == Enum.UserInputType.MouseButton1 or userInputType == Enum.UserInputType.Touch then
			value201 = false
		end
	end))

	value199 = function()
		local currentCamera = workspace.CurrentCamera
		local vector2

		if not currentCamera then
			vector2 = Vector2.new(1280, 720)
		else
			vector2 = currentCamera.ViewportSize
		end

		if vector2.X < 80 or vector2.Y < 80 then
			return
		end
		local offset = obj4.Size.X.Offset
		local offset2 = obj4.Size.Y.Offset

		if offset <= 0 then
			offset = n2
		end

		if offset2 <= 0 then
			offset2 = n3
		end

		local n = not flag13 and 520 or 400
		local n5 = not flag13 and 360 or 320
		local n6 = math.clamp(offset, n, math.max(n, vector2.X - 24))
		local n7 = math.clamp(offset2, n5, math.max(n5, vector2.Y - 24))

		if n6 ~= obj4.Size.X.Offset or n7 ~= obj4.Size.Y.Offset then
			obj4.Size = UDim2.fromOffset(n6, n7)
		end
	end

	value37.Scale = (tonumber(tbl9.UIScale) or 100) / 100

	if flag13 then
		local value203, value204 = func23()
		n2 = value203
		n3 = value204
		obj4.Size = UDim2.fromOffset(value203, value204)
	end

	value199()

	func24 = function()
		local flag90 = not not flag13
		local flag91 = not flag90
		n4 = flag91 and 152 or 128
		obj5.Size = UDim2.new(0, n4, 1, 0)
		value57.Position = UDim2.fromOffset(n4, 2)
		value57.Size = UDim2.new(1, -n4, 1, -2)
		obj6.Size = UDim2.fromOffset(flag91 and 22 or 32, flag91 and 22 or 32)
		TextButton.Size = UDim2.fromOffset(flag91 and 34 or 48, flag91 and 34 or 48)
		Frame.Size = UDim2.fromOffset(flag91 and 18 or 32, flag91 and 18 or 32)

		if flag90 then
			TextButton.Position = UDim2.new(0, 36, 1, -88)
			local value205, value206 = func23()
			n2 = value205
			n3 = value206
			obj4.Size = UDim2.fromOffset(value205, value206)
		else
			n2 = 620
			n3 = 430
			obj4.Size = UDim2.fromOffset(n2, n3)
		end

		if value199 then
			value199()
		end
	end

	local function func75()
		if flag14 then
			return
		end

		if func22() and not flag13 then
			flag13 = true
			func24()

			if tbl10.PhoneUI and tbl10.PhoneUI.set then
				pcall(tbl10.PhoneUI.set, true)
			end
		end
	end

	task.defer(func75)

	for _, item12 in ipairs({ 0.2, 0.6, 1.2, 2.5 }) do
		task.delay(item12, func75)
	end

	task.spawn(function()
		local playerGui = localPlayer:FindFirstChild("PlayerGui")
		local flag92 = not playerGui

		if flag92 then
			pcall(function()
				playerGui = localPlayer:WaitForChild("PlayerGui", 8)
			end)
		end

		if flag92 then
			return
		end

		local connection = playerGui.ChildAdded:Connect(function(child)
			if child.Name == "TouchGui" or child.Name == "TouchControlFrame" then
				if flag14 then
					return
				end

				if func22() and not flag13 then
					flag13 = true
					func24()

					if tbl10.PhoneUI and tbl10.PhoneUI.set then
						pcall(tbl10.PhoneUI.set, true)
					end
				end
			end
		end)

		if connection then
			list3[#list3 + 1] = connection
		end

		if not flag14 and func22() and not flag13 then
			flag13 = true
			func24()

			if tbl10.PhoneUI and tbl10.PhoneUI.set then
				pcall(tbl10.PhoneUI.set, true)
			end
		end
	end)

	pcall(function()
		local connection = UserInputService:GetPropertyChangedSignal("TouchEnabled"):Connect(func75)

		if connection then
			list3[#list3 + 1] = connection
		end

		local connection2 = UserInputService:GetPropertyChangedSignal("GyroscopeEnabled"):Connect(func75)

		if connection2 then
			list3[#list3 + 1] = connection2
		end

		local connection3 = UserInputService:GetPropertyChangedSignal("AccelerometerEnabled"):Connect(func75)

		if connection3 then
			list3[#list3 + 1] = connection3
		end
	end)

	local connection = nil

	pcall(function()
		local function func76()
			if not flag14 and func22() and not flag13 then
				flag13 = true
				func24()

				if tbl10.PhoneUI and tbl10.PhoneUI.set then
					pcall(tbl10.PhoneUI.set, true)
				end
			end

			value199()
		end

		local function func77()
			if connection then
				connection:Disconnect()
				connection = nil
			end

			local currentCamera = workspace.CurrentCamera

			if currentCamera then
				connection = currentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(func76)
				func76()
			end
		end

		func77()
		local connection2 = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(func77)

		if connection2 then
			list3[#list3 + 1] = connection2
		end
	end)

	func29(UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if (getgenv and getgenv() or _G).CokeboysLinoriaActive then
			return
		end

		if gameProcessed then
			return
		end

		if input.UserInputType ~= Enum.UserInputType.Keyboard then
			return
		end

		if (tbl9.OpenBind or str3.OpenBind) == input.KeyCode then
			setVisible(not visible)
		end
	end))

	local n5 = 0
	local now = os.clock()
	local connection2 = nil

	local function func78()
		if not obj4.Visible then
			if connection2 then
				connection2:Disconnect()
				connection2 = nil
			end

			n5 = 0
			now = os.clock()
			return
		end

		if connection2 then
			return
		end
		connection2 = RunService.RenderStepped:Connect(function(...) end)
	end

	func29(obj4:GetPropertyChangedSignal("Visible"):Connect(func78))
	func78()

	local function destroy()
		if connection then
			connection:Disconnect()
			connection = nil
		end

		if connection2 then
			connection2:Disconnect()
			connection2 = nil
		end

		if func48 then
			pcall(func48)
		end

		for i = 1, #list3 do
			local entry17 = list3[i]
			list3[i] = nil

			if entry17 then
				pcall(function()
					entry17:Disconnect()
				end)
			end
		end

		if obj1 then
			pcall(function()
				obj1:Destroy()
			end)
		end
	end

	if tbl9.StartMin then
		setVisible(false)
	end

	setTheme = function(flag93)
		if flag93 == "Dusk" or flag93 == "dusk" then
			flag93 = "Dark"
		end

		local dark = tbl3[flag93] or tbl3.Dark
		local theme

		if dark == tbl3.Light then
			theme = "Light"
		else
			dark = tbl3.Dark
			theme = "Dark"
		end

		tbl9.Theme = theme

		for k, value207 in pairs(dark) do
			tbl4[k] = value207
		end

		local function func79(instance4)
			local attribute = instance4:GetAttribute("th_bg")

			if attribute and tbl4[attribute] and instance4:IsA("GuiObject") then
				local entry18 = obj[instance4]

				if entry18 then
					pcall(function()
						entry18:Cancel()
					end)

					obj[instance4] = nil
				end

				local attribute2 = instance4:GetAttribute("th_hover")
				local flag94 = instance4:GetAttribute("th_over") == true
				instance4.BackgroundColor3 = flag94 and not not attribute2 and tbl4[attribute2] or tbl4[attribute]

				if instance4:GetAttribute("th_row") then
					instance4.BackgroundTransparency = not flag94 and 1 or 0
				end
			end

			local attribute2 = instance4:GetAttribute("th_text")

			if attribute2 and tbl4[attribute2] then
				pcall(function()
					instance4.TextColor3 = tbl4[attribute2]
				end)
			end

			if instance4:IsA("TextBox") then
				local attribute3 = instance4:GetAttribute("th_placeholder")

				if attribute3 and tbl4[attribute3] then
					instance4.PlaceholderColor3 = tbl4[attribute3]
				end
			end

			if instance4:IsA("UIStroke") then
				local attribute3 = instance4:GetAttribute("th_stroke")

				if attribute3 and tbl4[attribute3] then
					instance4.Color = tbl4[attribute3]
				end
			end

			if instance4:IsA("ImageLabel") then
				local attribute3 = instance4:GetAttribute("th_img")

				if attribute3 and tbl4[attribute3] then
					instance4.ImageColor3 = tbl4[attribute3]
				end
			end

			if instance4:IsA("ScrollingFrame") then
				local attribute3 = instance4:GetAttribute("th_scroll")

				if attribute3 and tbl4[attribute3] then
					instance4.ScrollBarImageColor3 = tbl4[attribute3]
				end
			end
		end

		func79(obj4)
		func79(TextButton)

		for _, descendant in ipairs(obj1:GetDescendants()) do
			func79(descendant)
		end

		func30()
		func38(value63, tbl4.mute)

		for _, value208 in pairs(tbl12) do
			local scroll = value208.scroll

			if scroll then
				local canvasPosition = scroll.CanvasPosition
				scroll.CanvasPosition = canvasPosition + Vector2.new(0, 1)
				scroll.CanvasPosition = canvasPosition
			end
		end

		if value16 then
			setPage(value16.name)
		end

		for k, value209 in pairs(tbl10) do
			if value209.kind == "toggle" and value209.set then
				value209.set(tbl9[k] == true)
			end
		end
	end

	setPage("Auto Steal")
	local result21 = func25()
	local result22 = func26()
	result22.alive = true

	local ui = {
		Flags = tbl9,
		Widgets = tbl10,
		SetPage = setPage,
		SetVisible = setVisible,
		SetTheme = setTheme,
		Destroy = destroy,
		SetStatus = function(param77, text)
			local entry19 = tbl10[param77]

			if entry19 and entry19.status then
				entry19.status.Text = text
			end
		end,
		On = function(param78, on)
			local entry20 = tbl10[param78]

			if entry20 then
				entry20.on = on
			end
		end,
	}

	result22.UI = ui
	result21.CokeboysUI = type(result21.CokeboysUI) == "table" and result21.CokeboysUI or {}
	result21.CokeboysUI[cokeboysUnloadUid] = ui
	local uI = type(result21.UI) ~= "table"
	local flag95

	if uI then
		flag95 = uI
	else
		local function func80()
			local cokeboysHub = (getgenv and getgenv() or _G).CokeboysHub
			local slots = type(cokeboysHub) == "table" and cokeboysHub.slots
			if type(slots) ~= "table" then
				return false
			end

			for k, slot in pairs(slots) do
				if tostring(k) ~= cokeboysUnloadUid and type(slot) == "table" and slot.alive == true then
					return true
				end
			end

			return false
		end

		flag95 = not func80()
	end

	if flag95 then
		result21.UI = ui
	end

	local function func81()
		local func82

		func82 = function()
		end

		local flag96
		flag96 = nil
		local directory
		directory = nil
		local directory2
		directory2 = nil

		do
			local ok, result = pcall(function()
				return require(ReplicatedStorage.Client.EggState)
			end)

			if ok then
				flag96 = result
			else
				local str34 = tostring(result)
				func82("modules", "EggState require failed", str34)
			end
		end

		do
			local ok, result = pcall(function()
				return require(ReplicatedStorage.Data.Assets)
			end)

			if ok and type(result) == "table" then
				directory = result.Directory
			else
				local str35 = tostring(result)
				func82("modules", "Assets require failed", str35)
			end
		end

		do
			local ok, result = pcall(function()
				return require(ReplicatedStorage.Data.Areas)
			end)

			if ok and type(result) == "table" then
				directory2 = result.Directory

				if type(directory2) == "table" then
					func82("modules", "areas dir", "ok")
				end
			else
				local str36 = tostring(result)
				func82("modules", "Areas require failed", str36)
			end
		end

		local func83
		func83 = function(...) end
		local flag97, flag98, obj15, obj16, tbl146, list23, tbl147, flag99, flag100, walkSpeed
		local func84, func85, func86, str37, flag101, flag102, tbl148, tbl149, flag103, flag104
		local flag105, func87, func88, func89, func90, func91, func92, func93, flag106, func94
		local func95, func96, func97, func98, n6, jumpHeight, flag107, func99, tbl150, func100
		local func101, func102, func103, func104, func105, func106, func107

		do
			local tbl151 = {
				"VerticalTrajectory",
				"CorrectionContext",
				"PivotTo",
				"Relocate",
				"Authoritative WalkSpeed",
				"BeginImpulse",
				"LastValidatedGroundedSample",
				groundRayParams = RaycastParams.new(),
			}

			tbl151.groundRayParams.FilterType = Enum.RaycastFilterType.Exclude
			tbl151.groundRayFilter = {}
			flag97 = false
			flag98 = true
			obj15 = nil
			obj16 = nil
			local value210 = nil
			tbl146 = {}
			local list24 = {}
			list23 = {}
			tbl147 = {}
			local n = 0
			flag99 = nil
			flag100 = false
			walkSpeed = 16
			func84 = nil
			func85 = nil
			func86 = nil
			str37 = nil
			flag101 = nil
			flag102 = nil
			tbl148 = {}

			for _, item13 in ipairs({
				"Dodo",
				"Pterodactyl",
				"Centapede",
				"Cosmic Gecko",
				"Crane",
				"Salamander",
				"Spideron",
				"Crustacia",
				"Ankylosaurus",
				"Cosmic Gorilla",
				"Red Panda",
				"Snowy Owl",
				"Bladehide",
				"Mantaris",
				"Triceratops",
				"Bronto",
				"La Vacca Saturno Saturnita",
				"Koi",
				"Rhinotaur",
			}) do
				tbl148[string.lower(item13):gsub("[^%w]", "")] = true
			end

			tbl149 = {}
			flag103 = false
			flag104 = false
			flag105 = false

			func87 = function(param79, player)
				local function func108(flag108)
					if type(flag108) ~= "string" or flag108 == "" then
						return false
					end
					return tbl148[string.lower(flag108):gsub("[^%w]", "")] == true
				end

				local flag109 = func108(param79)

				if not flag109 then
					flag109 = type(player) == "table"

					if flag109 then
						flag109 = func108(player.DisplayName) or func108(player.Name) or func108(player._id)
					end
				end

				return flag109
			end

			tbl148.rewardCategories = {
				Shardling = true,
				["Shattered Ram"] = true,
				Shardwing = true,
				["Shattered Drake"] = true,
				["Shattered Colossus"] = true,
			}

			tbl148.isRewardEgg = function(obj)
				local eggSkin = obj.EggSkin == "ShatteredRift" or obj.Skin == "ShatteredRift"

				if not eggSkin then
					eggSkin = tbl148.rewardCategories[obj.AssetCategory or obj.Category] == true
				end

				return eggSkin
			end

			func88 = function(...) end

			func89 = function(param80)
				if param80 then
					tbl146[param80] = true
				end

				return param80
			end

			func90 = function()
				for k in pairs(tbl146) do
					tbl146[k] = nil

					pcall(function()
						k:Disconnect()
					end)
				end
			end

			local function func109(param81, flag110)
				local n7 = flag110 or 16
				if not debug or not debug.getconstants then
					return {}
				end
				local ok, result = pcall(debug.getconstants, param81)
				if not ok or type(result) ~= "table" then
					return {}
				end
				local list25 = {}
				local value211, value212, value213 = pairs(result)
				local n8 = 0

				for _, value214 in value211, value212, value213 do
					n8 += 1

					if n8 <= n7 then
						list25[#list25 + 1] = tostring(value214)
					end
				end

				return list25
			end

			local function func110(param82)
				local joined = table.concat(func109(param82, 50), "|")

				for _, item14 in ipairs(tbl151) do
					if joined:find(item14, 1, true) then
						return true, item14
					end
				end

				if joined:find("WalkSpeed", 1, true) and joined:find("AssemblyLinearVelocity", 1, true) and joined:find("Magnitude", 1, true) then
					return true, "ALVvsWalkSpeed"
				end
				return false
			end

			func91 = function()
				list24 = {}
				if not getconnections then
					func82("engine", "no getconnections — wraps skipped")
					return 0
				end
				local tbl152 = {}

				for _, getconnection in ipairs(getconnections(RunService.PostSimulation)) do
					if not tbl146[getconnection] and func110(getconnection.Function) then
						pcall(function()
							getconnection:Enable()
						end)

						for i = 1, 24 do
							local ok, result, result2 = pcall(debug.getupvalue, getconnection.Function, i)

							if ok then
								if result2 == nil then
									result2 = result
								end
							else
								result2 = nil
							end

							if result2 ~= nil then
								if type(result2) == "table" and not tbl152[result2] then
									tbl152[result2] = true
									list24[#list24 + 1] = result2
								end

								continue
							end

							break
						end
					end
				end

				return #list24
			end

			func92 = function()
				local tbl153 = {}
				local list26 = {}

				for i = 1, #list24 do
					local entry21 = list24[i]
					local flag111

					if type(entry21) ~= "table" then
						flag111 = false
					else
						local result
						flag111, result = pcall(rawget, entry21, "LastGoodSample")
						local ok, result2 = pcall(rawget, entry21, "SafeGroundCheckpoints")
						flag111 = flag111 and type(result) == "table" and ok and type(result2) == "table"
					end

					if flag111 and not tbl153[entry21] then
						tbl153[entry21] = true
						list26[#list26 + 1] = entry21
					end
				end

				for i = 1, #list23 do
					local entry22 = list23[i]
					local flag112

					if type(entry22) ~= "table" then
						flag112 = false
					else
						local ok, result = pcall(rawget, entry22, "LastGoodSample")
						local ok2, result2 = pcall(rawget, entry22, "SafeGroundCheckpoints")

						if ok then
							flag112 = type(result) == "table" and ok2 and type(result2) == "table"
						else
							flag112 = ok
						end
					end
					-- Source Leak | https://discord.gg/x7YbZeezpm

					flag112 = flag112 and not tbl153[entry22]

					if flag112 then
						tbl153[entry22] = true
						list26[#list26 + 1] = entry22
					end
				end

				if #list26 > 0 then
					list23 = list26
				end

				return #list23
			end

			func93 = function()
				value210 = nil
				local flag113 = obj16 ~= nil

				if obj16 then
					pcall(function()
						obj16:Destroy()
					end)

					obj16 = nil
				end

				if flag113 then
					for _, child in ipairs(workspace:GetChildren()) do
						if child.Name == "CokeboysSupport" or child.Name == "Hub45Support" then
							pcall(function()
								child:Destroy()
							end)
						end
					end
				end
			end

			flag106 = false

			func94 = function(humanoid3, flag114, param83)
				func93()

				if not humanoid3 or not flag114 then
					local character = localPlayer.Character
					local humanoidRootPart, humanoid

					if not character then
						humanoidRootPart = nil
						humanoid = nil
					else
						humanoid = character:FindFirstChildOfClass("Humanoid")
						humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

						if not humanoid or not humanoidRootPart or humanoid.Health <= 0 then
							humanoidRootPart = nil
							humanoid = nil
						end
					end

					humanoid3 = humanoid3 or humanoid
					flag114 = flag114 or humanoidRootPart
				end

				if not humanoid3 then
					return
				end

				pcall(function()
					humanoid3.PlatformStand = false
					humanoid3.Sit = false
					humanoid3.AutoRotate = true
					humanoid3.AutoJumpEnabled = true
					humanoid3.Jump = false

					if type(humanoid3.WalkSpeed) == "number" and humanoid3.WalkSpeed > 0 and humanoid3.WalkSpeed <= 36 then
						walkSpeed = humanoid3.WalkSpeed
					end

					humanoid3.WalkSpeed = walkSpeed

					if param83 then
						humanoid3:ChangeState(Enum.HumanoidStateType.Freefall)
					end
				end)

				if flag114 then
					pcall(function()
						flag114.Anchored = false

						if param83 then
							flag114.AssemblyLinearVelocity = Vector3.new(0, math.min(flag114.AssemblyLinearVelocity.Y, -22), 0)
						end

						flag114.AssemblyAngularVelocity = Vector3.zero
					end)
				end
			end

			func95 = function(...) end
			local function func111(...) end
			local function func112(...) end

			func96 = function(param84)
				if param84 then
					if not hookfunction or not getconnections then
						func82("engine", "cannot wrap PostSim validators")
						return 0
					end
					local n7 = 0

					for _, getconnection2 in ipairs(getconnections(RunService.PostSimulation)) do
						if not tbl146[getconnection2] then
							local flag115, value215 = func110(getconnection2.Function)
							local function_ = getconnection2.Function

							if flag115 and not tbl147[function_] then
								local tbl154 = { old = function_ }
								local function func113(...) end

								if type(newcclosure) == "function" then
									func113 = newcclosure(func113)
								end

								local ok, old = pcall(hookfunction, function_, func113)

								if ok then
									old = old or function_
									tbl154.old = old
									tbl147[function_] = tbl154.old
									n7 += 1
								else
									local func114 = func82
									local str38 = tostring(old)
									func114("engine", "wrap fail", value215, str38)
								end
							end
						end
					end

					return n7
				end

				local value216 = restorefunction

				for k, value217 in pairs(tbl147) do
					if value216 then
						pcall(value216, k)
					elseif hookfunction and value217 then
						pcall(hookfunction, k, value217)
					end
				end

				tbl147 = {}
				func82("engine", "validator wraps restored")
				return 0
			end

			local function func115()
				if not (str37 and str37.running and str37.state == "Chase" and typeof(flag99) == "Vector3") then
					return nil
				end
				local n7 = math.clamp(tonumber(tbl9.StealSpeed) or 300, 50, 1300)
				local character = localPlayer.Character
				local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
				if not humanoidRootPart then
					return n7
				end
				local magnitude = Vector3.new(flag99.X - humanoidRootPart.Position.X, 0, flag99.Z - humanoidRootPart.Position.Z).Magnitude
				if magnitude > 35 then
					return n7
				end

				if magnitude > 14 then
					return math.min(n7, 850)
				end
				return math.min(n7, 260)
			end

			local function func116(...) end
			func84 = function(...) end
			local n7 = 0
			local value218 = nil
			local tbl155 = {}
			local tbl156 = {}
			local function func117(...) end

			func97 = function()
				n7 = 0

				for k, value219 in pairs(tbl156) do
					tbl156[k] = nil
					tbl155[k] = nil

					pcall(function()
						value219:Disconnect()
					end)
				end

				if value218 then
					pcall(function()
						value218:Destroy()
					end)

					value218 = nil
				end
			end

			func98 = function(flag116)
				func97()
				if not flag116 or not flag98 or not UserInputService.TouchEnabled then
					return
				end
				local playerGui = localPlayer:FindFirstChild("PlayerGui")
				local flag117

				if type(gethui) == "function" then
					local ok, result = pcall(gethui)

					if ok and result then
						flag117 = result
					else
						flag117 = playerGui
					end
				else
					flag117 = playerGui
				end

				if not flag117 then
					return
				end
				local screenGui = Instance.new("ScreenGui")
				screenGui.Name = "CokeboysFlightTouch"
				screenGui.ResetOnSpawn = false
				screenGui.IgnoreGuiInset = true
				screenGui.DisplayOrder = 1001
				screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				screenGui.Parent = flag117
				value218 = screenGui
				local frame = Instance.new("Frame")
				frame.Name = "VerticalControls"
				frame.AnchorPoint = Vector2.new(1, 0.5)
				frame.Position = UDim2.new(1, -18, 0.5, 0)
				frame.Size = UDim2.fromOffset(58, 122)
				frame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
				frame.BackgroundTransparency = 0.15
				frame.BorderSizePixel = 0
				frame.Parent = screenGui
				local uiCorner = Instance.new("UICorner")
				uiCorner.CornerRadius = UDim.new(0, 8)
				uiCorner.Parent = frame
				local uiStroke = Instance.new("UIStroke")
				uiStroke.Color = Color3.fromRGB(247, 199, 0)
				uiStroke.Thickness = 1
				uiStroke.Parent = frame

				local function func118(param85)
					tbl155[param85] = nil
					local entry23 = tbl156[param85]
					tbl156[param85] = nil

					if entry23 then
						entry23:Disconnect()
					end

					func117()
				end

				local function createTextButton(name2, text, param86, param87)
					local textButton = Instance.new("TextButton")
					textButton.Name = name2
					textButton.AutoButtonColor = false
					textButton.BackgroundColor3 = Color3.fromRGB(32, 32, 30)
					textButton.BorderSizePixel = 0
					textButton.Position = UDim2.fromOffset(4, param86)
					textButton.Size = UDim2.fromOffset(50, 54)
					textButton.Font = Enum.Font.BuilderSansBold
					textButton.Text = text
					textButton.TextColor3 = Color3.fromRGB(247, 199, 0)
					textButton.TextSize = 24
					textButton.Parent = frame
					local uiCorner2 = Instance.new("UICorner")
					uiCorner2.CornerRadius = UDim.new(0, 6)
					uiCorner2.Parent = textButton

					textButton.InputBegan:Connect(function(input)
						local userInputType = input.UserInputType
						if userInputType ~= Enum.UserInputType.Touch and userInputType ~= Enum.UserInputType.MouseButton1 then
							return
						end
						tbl155[input] = param87
						func117()

						tbl156[input] = input.Changed:Connect(function()
							local userInputState = input.UserInputState

							if userInputState == Enum.UserInputState.End or userInputState == Enum.UserInputState.Cancel then
								func118(input)
							end
						end)
					end)

					return textButton
				end

				createTextButton("Up", "↑", 4, 1)
				createTextButton("Down", "↓", 64, -1)
			end

			n6 = 0
			jumpHeight = 7.2
			flag107 = false
			local tbl157 = { saved = {}, char = nil, at = 0 }
			func99 = function(...) end

			local tbl158 = {
				saved = {},
				on = false,
				char = nil,
				parts = {},
				partIndexes = {},
				added = nil,
				removing = nil,
				rayParams = RaycastParams.new(),
				rayFilter = {},
			}

			tbl158.rayParams.FilterType = Enum.RaycastFilterType.Exclude

			tbl158.clearPartCache = function()
				if tbl158.added then
					tbl146[tbl158.added] = nil
					tbl158.added:Disconnect()
					tbl158.added = nil
				end

				if tbl158.removing then
					tbl146[tbl158.removing] = nil
					tbl158.removing:Disconnect()
					tbl158.removing = nil
				end

				tbl158.char = nil
				tbl158.parts = {}
				tbl158.partIndexes = {}
			end

			func89(localPlayer.CharacterRemoving:Connect(function(character)
				if character == tbl158.char then
					tbl158.clearPartCache()
				end
			end))

			local function func119(...) end

			tbl150 = {
				saved = {},
				at = 0,
				ragOff = false,
				patched = {},
				muted = {},
				groups = false,
				strikeWrapped = false,
				components = {},
				runtimes = {},
				hitArmed = false,
			}

			func100 = function()
				for k, value220 in pairs(tbl150.saved) do
					if k.Parent then
						pcall(function()
							k.CanCollide = value220.collide
							k.CanTouch = value220.touch

							if value220.group then
								k.CollisionGroup = value220.group
							end
						end)
					end

					tbl150.saved[k] = nil
				end
			end

			local function func120(list27)
				for _, descendant in ipairs(list27:GetDescendants()) do
					local ok, result = pcall(function()
						return descendant:IsA("BasePart")
					end)

					if ok and result then
						if tbl150.saved[descendant] == nil then
							tbl150.saved[descendant] = { collide = descendant.CanCollide, touch = descendant.CanTouch, group = descendant.CollisionGroup }
						end

						pcall(function()
							descendant.CanTouch = false
							descendant.CanCollide = false
						end)

						pcall(function()
							descendant.CollisionGroup = "GuardsNoCollide"
						end)
					end
				end
			end

			func101 = function(flag118)
				local PhysicsService = game:GetService("PhysicsService")

				pcall(function()
					PhysicsService:RegisterCollisionGroup("Guards")
					PhysicsService:RegisterCollisionGroup("Players")
					PhysicsService:RegisterCollisionGroup("GuardsNoCollide")
				end)

				pcall(function()
					PhysicsService:CollisionGroupSetCollidable("Guards", "Players", not flag118)
					PhysicsService:CollisionGroupSetCollidable("Players", "Guards", not flag118)
					PhysicsService:CollisionGroupSetCollidable("GuardsNoCollide", "Players", false)
					PhysicsService:CollisionGroupSetCollidable("Players", "GuardsNoCollide", false)
					PhysicsService:CollisionGroupSetCollidable("GuardsNoCollide", "Default", false)
					PhysicsService:CollisionGroupSetCollidable("GuardsNoCollide", "Guards", false)
				end)

				tbl150.groups = flag118 == true
			end

			func102 = function(childName)
				local shared = ReplicatedStorage:FindFirstChild("Shared")

				for i = 1, #childName do
					if not shared then
						return
					end
					shared = shared:FindFirstChild(childName[i])
				end

				if shared and shared:IsA("ModuleScript") then
					local ok, result = pcall(require, shared)
					if ok then
						return result
					end
				end
			end

			local function func121(tbl159, param88, callback2)
				if type(tbl159) ~= "table" or type(tbl159[param88]) ~= "function" then
					return false
				end
				local str39 = tostring(tbl159) .. "." .. tostring(param88)
				if tbl150.patched[str39] then
					return true
				end
				local entry24 = tbl159[param88]
				local func122 = callback2(entry24)

				local function result23(...)
					if not flag98 then
						return entry24(...)
					end
					return func122(...)
				end

				local value221 = nil
				local ok = nil
				local result = nil

				while true do
					if value221 or type(newcclosure) == "function" then
						if not value221 then
							ok, result = pcall(newcclosure, result23)
						end

						if value221 or ok and type(result) == "function" then
							tbl159[param88] = result
							tbl150.moduleRestores = tbl150.moduleRestores or {}
							table.insert(tbl150.moduleRestores, { owner = tbl159, key = param88, original = entry24, replacement = result })
							tbl150.patched[str39] = true
							return true
						end
					end

					value221 = true
					if not true then
						break
					end
					result = result23
				end
			end

			func103 = function(tbl160)
				if typeof(tbl160) == "Instance" then
					return tbl160
				end

				if type(tbl160) ~= "table" then
					return nil
				end

				for _, item15 in ipairs({ "Remote", "remote", "Instance", "_remote", "_instance", "Event" }) do
					local entry25 = tbl160[item15]
					if typeof(entry25) == "Instance" then
						return entry25
					end
				end
			end

			local function func123(param89)
				local flag119 = func103(param89) or typeof(param89) == "Instance" and param89
				if not flag119 or tbl150.muted[flag119] then
					return
				end
				local onClientEvent = flag119.OnClientEvent
				if not onClientEvent or not getconnections then
					return
				end
				local ok, result = pcall(getconnections, onClientEvent)
				if not ok or type(result) ~= "table" then
					return
				end
				local list28 = {}

				for _, item16 in ipairs(result) do
					pcall(function()
						if item16.Disable then
							item16:Disable()
						end
					end)

					list28[#list28 + 1] = item16
				end

				tbl150.muted[flag119] = list28
			end

			func104 = function(flag120)
				if not flag120 then
					for k, component in pairs(tbl150.components) do
						pcall(function()
							if component.handler then
								k._attackHandler = component.handler
							end

							k._enabled = component.enabled ~= false
						end)

						tbl150.components[k] = nil
					end

					for k in pairs(tbl150.runtimes) do
						pcall(function()
							k:SetEnabled(true)
						end)

						tbl150.runtimes[k] = nil
					end

					return
				end

				tbl150.noopAttack = tbl150.noopAttack or function()
				end

				for k in pairs(tbl150.components) do
					k._attackHandler = tbl150.noopAttack
					k._enabled = false
				end
			end

			func105 = function()
				for k, value222 in pairs(tbl150.muted) do
					for _, item17 in ipairs(value222) do
						pcall(function()
							if item17.Enable then
								item17:Enable()
							end
						end)
					end

					tbl150.muted[k] = nil
				end
			end

			local function func124()
				return str37 and (str37.state == "BaitJump" or str37.baitWanted and str37.target and str37.target.isForestBait)
			end

			local function func125()
				return tbl9.AntiMob == true and not func124()
			end

			local function func126()
				tbl150.noopAttack = tbl150.noopAttack or function()
				end

				for k in pairs(tbl150.components) do
					k._attackHandler = tbl150.noopAttack
					k._enabled = false
				end

				local xz = func121(func102({ "Modules", "GuardAreas", "GuardDistance" }), "XZ", function(callback3)
					return function(param90, param91)
						if func125() then
							return 1e9
						end
						return callback3(param90, param91)
					end
				end)

				local value223 = func102({ "Modules", "GuardAreas", "GuardComponent" })

				local flag121 = func121(value223, "_attemptAttack", function(callback4)
					return function(...)
						if func125() then
							return
						end
						return callback4(...)
					end
				end)

				func121(value223, "Step", function(callback5)
					return function(param92, ...)
						if func125() then
							return nil
						end
						return callback5(param92, ...)
					end
				end)

				local value224 = func102({ "Modules", "Ragdoll" })

				func121(value224, "IsRagdolled", function(callback6)
					return function(flag122, ...)
						if func125() and flag122 == localPlayer.Character then
							return false
						end
						return callback6(flag122, ...)
					end
				end)

				for _, item18 in ipairs({ "TimedRagdoll", "TimedRagdollAsync", "ApplyClientRagdoll", "Ragdoll" }) do
					func121(value224, item18, function(callback7)
						return function(flag123, ...)
							if func125() then
								if flag123 == nil or flag123 == localPlayer.Character then
									return
								end
							end

							return callback7(flag123, ...)
						end
					end)
				end

				func121(func102({ "Modules", "RagdollJoints" }), "Bind", function(callback8)
					return function(...)
						if func125() then
							return
						end
						return callback8(...)
					end
				end)

				pcall(function()
					local guardPatrol = func102({ "Remotes" })
					guardPatrol = guardPatrol and guardPatrol.GuardPatrol
					if type(guardPatrol) ~= "table" then
						return
					end

					for k, value225 in pairs(guardPatrol) do
						local str40 = tostring(k)
						local value226 = func103(value225)
						local flag124

						if value226 then
							flag124 = value226
						else
							flag124 = typeof(value225) == "Instance" and value225
						end

						if str40:find("Strike", 1, true) or str40:find("Handoff", 1, true) then
							local str41 = "gpfs." .. str40

							if not tbl150.patched[str41] then
								if flag124 and typeof(flag124) == "Instance" then
									guardPatrol[k] = setmetatable({ FireServer = function(...)
										if func125() then
											return
										end
										local fireServer = flag124.FireServer
										local packed1 = table.pack(select(2, ...))
										return fireServer(flag124, table.unpack(packed1, 1, packed1.n))
									end }, { __index = flag124 })

									tbl150.patched[str41] = true
									tbl150.moduleRestores = tbl150.moduleRestores or {}
									table.insert(tbl150.moduleRestores, { owner = guardPatrol, key = k, original = value225, replacement = guardPatrol[k] })
								elseif type(value225) == "table" and type(value225.FireServer) == "function" then
									func121(value225, "FireServer", function(callback9)
										return function(...)
											if func125() then
												return
											end
											return callback9(...)
										end
									end)
								end
							end
						end

						if str40:find("Strike", 1, true) or str40:find("Handoff", 1, true) or str40:find("SpeedToll", 1, true) or str40:find("SpeedHit", 1, true) or str40:find("Ragdoll", 1, true) or str40:find("Limp", 1, true) or str40:find("Slap", 1, true) or str40:find("Jolt", 1, true) then
							local func127 = func123
							value225 = flag124 or value225
							func127(value225)
						end
					end
				end)

				pcall(function()
					local value227 = func102({ "Remotes" })
					if type(value227) ~= "table" then
						return
					end
					local limpness = value227.Limpness
					func123(limpness and limpness.WriteLimpness)
					local sharedFx = value227.SharedFx
					func123(sharedFx and sharedFx.JoltOnce)
				end)

				pcall(function()
					local list29 = {}
					local network = ReplicatedStorage:FindFirstChild("Network")

					if network then
						list29[#list29 + 1] = network
					end

					local packages = ReplicatedStorage:FindFirstChild("Packages")
					packages = packages and packages:FindFirstChild("Networking")

					if packages then
						list29[#list29 + 1] = packages
					end

					for _, item19 in ipairs(list29) do
						for _, descendant in ipairs(item19:GetDescendants()) do
							if descendant:IsA("RemoteEvent") then
								local name2 = descendant.Name

								if name2:find("Strike", 1, true) or name2:find("SpeedToll", 1, true) or name2:find("SpeedHit", 1, true) or name2:find("Handoff", 1, true) or name2:find("Ragdoll", 1, true) or name2:find("Limp", 1, true) or name2:find("Slap", 1, true) or name2:find("Jolt", 1, true) then
									func123(descendant)
								end
							end
						end
					end
				end)

				pcall(function()
					if not flag96 or tbl150.patched["EggState.DropFieldEgg"] then
						return
					end

					func121(flag96, "DropFieldEgg", function(callback10)
						return function(flag125, ...)
							local flag126 = flag125 == "GuardHit" and func124()
							if func125() and (flag125 == "GuardHit" or flag125 == "PlayerSlap") and not flag126 then
								return
							end

							if func88() and str37 and str37.running and not str37.baitReleaseAllowed and not flag126 then
								return
							end
							return callback10(flag125, ...)
						end
					end)
				end)

				pcall(function()
					local eggWorld = func102({ "Remotes" })
					eggWorld = eggWorld and eggWorld.EggWorld
					local askFieldEggDrop = eggWorld and eggWorld.AskFieldEggDrop
					local value228 = func103(askFieldEggDrop)
					local flag127

					if value228 then
						flag127 = value228
					else
						flag127 = typeof(askFieldEggDrop) == "Instance" and askFieldEggDrop
					end

					if flag127 and typeof(flag127) == "Instance" and not tbl150.patched.AskFieldEggDrop then
						eggWorld.AskFieldEggDrop = setmetatable({ InvokeServer = function(param93, param94, ...)
							local reason = type(param94) == "table" and param94.Reason
							local flag128 = reason == "GuardHit" and func124()
							if func125() and (reason == "GuardHit" or reason == "PlayerSlap") and not flag128 then
								return
							end

							if func88() and str37 and str37.running and not str37.baitReleaseAllowed and not flag128 then
								return
							end
							local value229 = flag127
							local invokeServer = value229.InvokeServer
							local packed2 = table.pack(...)
							packed2.n = 3 + packed2.n - 1
							table.move(packed2, 1, packed2.n, 3, packed2)
							packed2[1] = value229
							packed2[2] = param94
							return invokeServer(table.unpack(packed2, 1, packed2.n))
						end }, { __index = flag127 })

						tbl150.patched.AskFieldEggDrop = true
						tbl150.moduleRestores = tbl150.moduleRestores or {}
						table.insert(tbl150.moduleRestores, { owner = eggWorld, key = "AskFieldEggDrop", original = askFieldEggDrop, replacement = eggWorld.AskFieldEggDrop })
						return
					end

					if type(askFieldEggDrop) == "table" then
						func121(askFieldEggDrop, "InvokeServer", function(param95)
							return function(param96, param97, ...)
								local reason = type(param97) == "table" and param97.Reason
								local flag129 = reason == "GuardHit" and func124()
								if func125() and (reason == "GuardHit" or reason == "PlayerSlap") and not flag129 then
									return
								end

								if func88() and str37 and str37.running and not str37.baitReleaseAllowed and not flag129 then
									return
								end
								local packed3 = table.pack(...)
								local func128 = param95
								packed3.n = 3 + packed3.n - 1
								table.move(packed3, 1, packed3.n, 3, packed3)
								packed3[1] = param96
								packed3[2] = param97
								return func128(table.unpack(packed3, 1, packed3.n))
							end
						end)
					end
				end)

				if not tbl150.attrConn then
					local value230 = tbl150

					local connection3 = localPlayer:GetAttributeChangedSignal("RagdollEndTime"):Connect(function()
						if func125() then
							func85()
						end
					end)

					if connection3 then
						tbl146[connection3] = true
					end

					value230.attrConn = connection3
				end

				local logged = (not xz and "no-xz" or "xz") .. " " .. (not flag121 and "no-atk" or "atk")

				if logged ~= tbl150.logged then
					tbl150.logged = logged
					func82("engine", "anti ragdoll patch", logged)
				end
			end

			func85 = function(...) end
			func106 = function(...) end

			tbl150.cleanupCharacterDeath = function(obj)
				if obj then
					pcall(function()
						obj:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
						obj.PlatformStand = false
					end)
				end

				if str37 and type(str37.clearBaitRoute) == "function" then
					pcall(str37.clearBaitRoute)
				end

				if str37 then
					str37.deathPaused = true
					str37.target = nil
					str37.pendingCarry = nil
					str37.carrying = false
					str37.carryUid = nil
					str37.heldUid = nil
					str37.state = "Respawn"
					str37.since = os.clock()
				end

				flag100 = false
				flag99 = nil
				obj = obj and obj.Parent
				local character = obj or localPlayer.Character
				local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

				if humanoidRootPart then
					pcall(function()
						humanoidRootPart.Anchored = false
					end)
				end

				flag106 = false
				flag99 = nil
				func93()
			end

			local connection3 = localPlayer.CharacterRemoving:Connect(function()
				tbl150.cleanupCharacterDeath(localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid"))
			end)

			if connection3 then
				tbl146[connection3] = true
			end

			local connection4 = localPlayer.CharacterAdded:Connect(function(character)
				tbl157.saved = {}
				tbl157.char = nil
				flag106 = false
				flag99 = nil

				if str37 then
					str37.deathPaused = true
					str37.target = nil
					str37.lastPos = nil
					str37.stillFor = 0
					str37.pendingCarry = nil
				end

				task.spawn(function()
					if not flag98 then
						return
					end
					local humanoid = character:WaitForChild("Humanoid", 15)
					if not flag98 or not humanoid then
						return
					end

					local connection4 = humanoid.Died:Connect(function()
						tbl150.cleanupCharacterDeath(humanoid)
					end)

					if connection4 then
						tbl146[connection4] = true
					end

					local humanoidRootPart = character:FindFirstChild("HumanoidRootPart") or character:WaitForChild("HumanoidRootPart", 15)
					if not humanoid or not humanoidRootPart then
						return
					end
					task.wait(0.55)
					if not flag98 or character.Parent == nil or humanoid.Health <= 0 then
						return
					end
					func93()
					func99()
					func106()

					if str37 then
						str37.deathPaused = false

						if str37.running and func88() then
							str37.state = "Scan"
							str37.since = os.clock()
							str37.target = nil
							str37.pendingCarry = nil
							flag100 = false
							flag99 = nil
						end
					end

					if str37 and str37.running then
						str37.state = "Scan"
						str37.since = os.clock()
						flag100 = false
						flag99 = nil
					end

					if type(humanoid.WalkSpeed) == "number" and humanoid.WalkSpeed > 0 and humanoid.WalkSpeed <= 36 then
						walkSpeed = humanoid.WalkSpeed
					end

					if func84() and humanoidRootPart then
						func111(humanoidRootPart, 0)
					end
				end)
			end)

			if connection4 then
				tbl146[connection4] = true
			end

			local character = localPlayer.Character
			local humanoid = character and character:FindFirstChildOfClass("Humanoid")

			if humanoid then
				local connection5 = humanoid.Died:Connect(function()
					tbl150.cleanupCharacterDeath(humanoid)
				end)

				if connection5 then
					tbl146[connection5] = true
				end
			end

			local function func129(...) end

			func107 = function(flag130)
				local flag131 = not not flag130

				if flag131 == flag97 then
					if not flag97 then
						return
					end
					local flag132 = (tbl9.Flight or tbl9.BypassSpeed) and true

					if not flag132 then
						flag132 = func88() or flag12 or flag11 or (tbl9.AutoPlaceEggs or tbl9.NightEggLoop or tbl9.AutoTreadmill) and true or tbl9.AutoHatch or flag100 and tbl9.StealTravel == "Flight"
					end

					if flag132 then
						func91()
						func92()
						func96(true)
						return
					end

					if next(tbl147) then
						func96(false)
					end

					return
				end

				if flag131 then
					func91()
					func92()
					func82("engine", "movementStates=", #list23)
					local flag133 = (tbl9.Flight or tbl9.BypassSpeed) and true

					if not flag133 then
						flag133 = func88() or flag12 or flag11 or (tbl9.AutoPlaceEggs or tbl9.NightEggLoop or tbl9.AutoTreadmill) and true or tbl9.AutoHatch or flag100 and tbl9.StealTravel == "Flight"
					end

					if flag133 then
						func96(true)
					end

					if obj15 then
						obj15:Disconnect()
					end

					local connection5 = RunService.Stepped:Connect(function(...) end)

					if connection5 then
						tbl146[connection5] = true
					end

					obj15 = connection5
					flag97 = true

					if func84() then
						local character2 = localPlayer.Character
						local value231

						if not character2 then
							value231 = nil
						else
							local humanoid2 = character2:FindFirstChildOfClass("Humanoid")
							local humanoidRootPart = character2:FindFirstChild("HumanoidRootPart")

							if humanoid2 and humanoidRootPart and not (humanoid2.Health <= 0) then
								value231 = humanoidRootPart
							else
								value231 = nil
							end
						end

						if value231 then
							func111(value231, 0)
						end
					end

					local func130 = func82
					local result24 = func116()
					local result25 = func84()
					local flag134 = (tbl9.Flight or tbl9.BypassSpeed) and true

					if not flag134 then
						flag134 = func88() or flag12 or flag11 or (tbl9.AutoPlaceEggs or tbl9.NightEggLoop or tbl9.AutoTreadmill) and true or not not tbl9.AutoHatch or flag100 and tbl9.StealTravel == "Flight"
					end

					func130("engine", "ON speed=", result24, "fly=", result25, "wrap=", flag134)
					return
				end

				local flag135 = flag106 or obj16 ~= nil
				flag97 = false
				flag100 = false
				flag99 = nil
				flag106 = false
				func96(false)

				if obj15 then
					obj15:Disconnect()
					obj15 = nil
				end

				local character2 = localPlayer.Character
				local humanoid2, humanoidRootPart

				if not character2 then
					humanoid2 = nil
					humanoidRootPart = nil
				else
					humanoid2 = character2:FindFirstChildOfClass("Humanoid")
					humanoidRootPart = character2:FindFirstChild("HumanoidRootPart")

					if not humanoid2 or not humanoidRootPart or humanoid2.Health <= 0 then
						humanoid2 = nil
						humanoidRootPart = nil
					end
				end

				func94(humanoid2, humanoidRootPart, flag135)
				func119(false)
				func82("engine", "OFF")
			end
		end

		local func131

		func131 = function()
			if func88() or flag12 or flag11 or tbl9.AntiTrap or tbl9.AntiMob then
				return true
			end

			if flag102 and flag102.wanted and flag102.wanted() then
				return true
			end

			if flag102 and flag102.driving and flag102.driving() then
				return true
			end

			if flag102 and flag102.leaving and flag102.leaving() then
				return true
			end
			return tbl9.BypassSpeed or tbl9.Flight
		end

		local value232
		value232 = fireproximityprompt or fireproximityprompttrigger
		local flag136, func132, func133, func134, func135
		local value233 = nil
		flag136 = nil

		func132 = function(instance5)
			if typeof(instance5) ~= "Instance" then
				return
			end

			local ok, result = pcall(function()
				return instance5:IsA("ProximityPrompt")
			end)

			if not ok or not result then
				return
			end

			if instance5.Name == "ClaimLostPart" then
				pcall(function()
					instance5.HoldDuration = math.max(1.25, tonumber(instance5.HoldDuration) or 0)
				end)

				return
			end

			local str42 = ""

			pcall(function()
				str42 = string.lower(tostring(instance5.Name) .. " " .. tostring(instance5.ActionText) .. " " .. tostring(instance5.ObjectText))
			end)

			if not (instance5.Name == "CarryAreaEgg" or str42:find("steal", 1, true) ~= nil or str42:find("carry", 1, true) ~= nil) then
				return
			end

			pcall(function()
				instance5.HoldDuration = 0
				instance5.RequiresLineOfSight = false
				instance5.ClickablePrompt = true
			end)

			if instance5.Name == "CarryAreaEgg" then
				value233 = instance5
			end
		end

		func133 = function(flag137)
			if not flag137 then
				return false
			end

			if flag137.Name == "CarryAreaEgg" then
				return true
			end
			local str43 = ""

			pcall(function()
				str43 = string.lower(tostring(flag137.Name) .. " " .. tostring(flag137.ActionText) .. " " .. tostring(flag137.ObjectText))
			end)

			return str43:find("steal", 1, true) ~= nil or str43:find("carry", 1, true) ~= nil
		end

		func134 = function(obj17)
			if not obj17 then
				return
			end
			func132(obj17)

			if value232 then
				if pcall(value232, obj17, 0) then
					return true
				end
			end

			return pcall(function()
				obj17:InputHoldBegin()
				obj17:InputHoldEnd()
			end)
		end

		func135 = function()
			if flag136 and flag136.Parent and func133(flag136) then
				return flag136
			end

			if value233 and value233.Parent then
				return value233
			end
			local smartPromptPart = workspace:FindFirstChild("SmartPromptPart")
			smartPromptPart = smartPromptPart and smartPromptPart:FindFirstChild("CarryAreaEgg")
			if smartPromptPart and smartPromptPart:IsA("ProximityPrompt") then
				value233 = smartPromptPart
				return smartPromptPart
			end
		end

		local func136, func137, flag138, func138, func139, func140, func141, func142, flag139, func143
		local func144, func145, func146, func147, func148, func149

		do
			local function func150(I,z)if type(I)~="table"then return nil;end;local z=I.Rarity;if type(z)=="table"then I=z.DefaultRarityValue;if type(I)=="string"and I~=""then local z=string.gsub(I,",","");local I=string.gsub(z,"1 in ","1/");z=string.gsub(I," ","");if string.sub(z,1,2)=="1/"then I=tonumber(string.sub(z,3));if I and I>=1000000000000 then return string.format("1/%.2ft",I/1000000000000);end;if I and I>=1000000000 then return string.format("1/%.2fb",I/1000000000);end;if I and I>=1000000 then return string.format("1/%.2fm",I/1000000);end;if I and I>=1000 then return string.format("1/%.0fk",I/1000);end;return z;end;end;end;return nil;end
			func136 = function(...) end
			func137 = function(I)if type(I)~="string"then return 0;end;local z=string.lower(I:gsub(",",""):gsub("%s+",""));if z==""or z=="any"or(z:find("blank"))then return 0;end;local I,n=z:match("([%d%.]+)([kmb]?)");z=tonumber(I);if not z then return 0;end;if n=="k"then return z*1000;end;if n=="m"then return z*1000000;end;return if n=="b"then z*1000000000 else z;end

			local function func151()
				local now2 = os.clock()
				local now3 = os.clock()
				local tbl161 = {}

				local tbl162 = {
					"IndexImage",
					"IndexIcon",
					"Icon",
					"Image",
					"ImageId",
					"IconImage",
					"Thumbnail",
					"AssetImage",
					"PetImage",
					"EggImage",
					"RenderImage",
					"Picture",
				}

				local tbl163 = {
					common = 9807270,
					uncommon = 3066993,
					rare = 3447003,
					epic = 10181046,
					legendary = 15844367,
					mythic = 15158332,
					cosmic = 5793266,
					secret = 2303786,
					eternal = 16766720,
					divine = 16738740,
					titan = 16777215,
				}

				local function func152(param98)
					local n = tonumber(param98) or 0
					local n7 = math.abs(n)
					if n7 >= 1e12 then
						return string.format("%.2fT", n / 1e12)
					end

					if n7 >= 1e9 then
						return string.format("%.2fB", n / 1e9)
					end

					if n7 >= 1000000 then
						return string.format("%.2fm", n / 1000000)
					end

					if n7 >= 1000 then
						return string.format("%.1fk", n / 1000)
					end
					return string.format("%.0f", n)
				end

				local function func153(flag140)
					local hookRarityFloor = tbl9.HookRarityFloor
					if not hookRarityFloor or hookRarityFloor == "Any" then
						return true
					end
					local lower = string.lower
					local str44 = tostring(flag140 or "")
					local value234 = lower(str44)
					local lower2 = string.lower
					local str45 = tostring(hookRarityFloor)
					local value235 = lower2(str45)
					local n = 0
					local n7 = 0

					for i, item20 in ipairs(tbl6) do
						local lowered2 = string.lower(item20)

						if lowered2 == value235 then
							n = i
						end

						if lowered2 == value234 then
							n7 = i
						end
					end

					return n <= n7
				end

				local function func154()
					local n = math.max(0, math.floor(os.clock() - now3))
					local n7 = math.floor(n / 3600)
					local n8 = math.floor(n % 3600 / 60)
					local n9 = n % 60
					if n7 > 0 then
						return string.format("%d:%02d:%02d", n7, n8, n9)
					end
					return string.format("%d:%02d", n8, n9)
				end

				local value236 = nil

				value236 = function(instance6)
					if instance6 == nil then
						return
					end
					local kind = typeof(instance6)

					if kind == "number" then
						if instance6 > 100 then
							return "rbxassetid://" .. tostring(math.floor(instance6))
						end
						return
					end

					if kind == "string" then
						if instance6 == "" or instance6 == "0" or instance6 == "rbxassetid://0" then
							return
						end

						if string.find(instance6, "http", 1, true) or string.find(instance6, "rbxasset", 1, true) or string.find(instance6, "rbxthumb", 1, true) then
							return instance6
						end
						local num10 = tonumber(instance6)
						if num10 and num10 > 100 then
							return "rbxassetid://" .. tostring(math.floor(num10))
						end
					end

					if kind == "Instance" then
						if instance6:IsA("ImageLabel") or instance6:IsA("ImageButton") then
							return value236(instance6.Image)
						end

						if instance6:IsA("Decal") or instance6:IsA("Texture") then
							return value236(instance6.Texture)
						end
						local imageLabel = instance6:FindFirstChildWhichIsA("ImageLabel", true)
						local imageButton

						if imageLabel then
							imageButton = imageLabel
						else
							imageButton = instance6:FindFirstChildWhichIsA("ImageButton", true) or instance6:FindFirstChildWhichIsA("Decal", true)
						end
						--[[ 𝐒𝐋 | 𝐒𝐨𝐮𝐫𝐜𝐞 𝐋𝐞𝐚𝐤 :: discord.gg/x7YbZeezpm ]]

						if imageButton then
							return value236(imageButton)
						end
						return
					end

					if kind == "table" then
						return value236(instance6.Image) or value236(instance6.ImageId) or value236(instance6.Icon) or value236(instance6.Id)
					end
				end

				local function func155(tbl164)
					if type(tbl164) ~= "table" then
						return
					end

					for i = 1, #tbl162 do
						local value237 = value236(tbl164[tbl162[i]])
						if value237 then
							return value237
						end
					end

					if type(tbl164.Egg) == "table" then
						for i = 1, #tbl162 do
							local value238 = value236(tbl164.Egg[tbl162[i]])
							if value238 then
								return value238
							end
						end
					end
				end

				local function func156(param99, param100, param101)
					if flag101 and flag101.scanIcons then
						pcall(flag101.scanIcons, true)
					end

					if flag101 and flag101.liveIcon then
						local ok, result = pcall(flag101.liveIcon, param99, param100, param101)
						if ok and type(result) == "string" and result ~= "" then
							return result
						end
					end

					if flag101 and flag101.icon then
						local ok, result = pcall(flag101.icon, param99, param100)
						if ok and type(result) == "string" and result ~= "" then
							return result
						end
					end

					return func155(param99)
				end

				local function func157(text9)
					if type(text9) ~= "string" or text9 == "" then
						return
					end
					local str46 = text9:gsub("^http://", "https://")
					if not string.find(str46, "^https://") then
						return
					end

					if string.find(str46, "rbxcdn.com", 1, true) then
						return str46
					end
				end

				local function func158(param102)
					local obj18 = func157(param102)
					local value239 = nil

					repeat
						if value239 or obj18 then
							value239 = value239 or type(obj18) ~= "string" or string.find(obj18, "PrivateImage", 1, true) == nil

							if value239 then
								if not obj18 then
									return
								end

								if obj18:find("/Image/", 1, true) or obj18:find("/AvatarHeadshot/", 1, true) or obj18:find("/Avatar/", 1, true) or obj18:find("/Outfit/", 1, true) then
									return obj18
								end
								return
							end
						end

						value239 = true
						obj18 = nil
					until not true
				end

				local function func159(text10)
					if type(text10) ~= "string" or text10 == "" then
						return
					end
					local value240 = func157(text10)
					if value240 then
						return { cdn = value240 }
					end
					local match, flag141 = text10:match("rbxthumb://type=([%w]+)&id=(%d+)")

					if not flag141 then
						match, flag141 = text10:match("rbxthumb://[^%s]*type=([%w]+)[^%s]*id=(%d+)")
					end

					if flag141 then
						local lower = string.lower
						local str47 = tostring(match or "asset")
						local flag142 = lower(str47)
						if flag142 == "avatarheadshot" or flag142 == "avatarbust" or flag142 == "avatar" then
							return { kind = "user", id = flag141 }
						end

						if flag142 == "bundlethumbnail" or flag142 == "bundle" then
							return { kind = "bundle", id = flag141 }
						end
						return { kind = "asset", id = flag141 }
					end

					local match2 = text10:match("rbxassetid://(%d+)")
					local match3

					if match2 then
						match3 = match2
					else
						local match4 = text10:match("[?&]assetId=(%d+)")

						if match4 then
							match3 = match4
						else
							local match5 = text10:match("[?&]assetid=(%d+)")

							if match5 then
								match3 = match5
							else
								match3 = text10:match("/asset/%?id=(%d+)") or text10:match("[?&]id=(%d+)")
							end
						end
					end

					if match3 then
						return { kind = "asset", id = match3 }
					end
				end

				local function func160(param103)
					local request_ = syn and syn.request or http_request or request or http and http.request or fluxus and fluxus.request
					if not request_ then
						return
					end

					for i = 1, 3 do
						local ok, result = pcall(request_, { Url = param103, Method = "GET", Headers = { Accept = "application/json" } })
						local flag143

						if ok then
							flag143 = type(result) == "table"

							if flag143 then
								flag143 = tonumber(result.StatusCode or result.status_code or result.Status)
							end
						else
							flag143 = ok
						end

						if flag143 ~= 429 then
							if not ok or type(result) ~= "table" then
								return
							end
							local body = result.Body or result.body
							if type(body) == "table" then
								return body
							end

							if type(body) ~= "string" or body == "" then
								return
							end
							local data = nil

							pcall(function()
								data = HttpService:JSONDecode(body)
							end)

							return data, body
						end

						task.wait(i * 0.45)
					end
				end

				local function func161(text11)
					if type(text11) ~= "string" then
						return
					end
					local n = nil
					local value241 = nil
					local value242 = nil
					local n7 = nil
					local value243 = nil
					local value244 = nil

					for match, match2 in text11:gsub("\\/", "/"):gmatch("\"targetId\":(%d+).-?\"imageUrl\":\"(https://[^\"]+)\"") do
						local str48 = tostring(match or "")
						local flag144 = func157(match2)

						if not (str48 == "" or not flag144) then
							local entry26 = tbl161[str48]

							if entry26 then
								if func158(flag144) then
									n = 3
									value241 = true
								end

								if not value241 then
									local flag145 = func157(flag144)

									while true do
										if not value242 and flag145 then
											if type(flag145) == "string" and string.find(flag145, "PrivateImage", 1, true) ~= nil then
												value242 = true
											end
										else
											value242 = false
											flag145 = nil
										end

										if value242 then
											continue
										end
										break
									end

									if not flag145 then
										n = not (type(flag144) == "string" and string.find(flag144, "PrivateImage", 1, true) ~= nil) and 0 or 1
									else
										n = 2
									end
								end

								if func158(entry26) then
									n7 = 3
									value243 = true
								end

								if not value243 then
									local flag146 = func157(entry26)

									while true do
										if not value244 and flag146 then
											if type(flag146) == "string" and string.find(flag146, "PrivateImage", 1, true) ~= nil then
												value244 = true
											end
										else
											value244 = false
											flag146 = nil
										end

										if value244 then
											continue
										end
										break
									end

									if not flag146 then
										n7 = not (type(entry26) == "string" and string.find(entry26, "PrivateImage", 1, true) ~= nil) and 0 or 1
									else
										n7 = 2
									end
								end

								value241 = false
								value243 = false
								local flag147 = false
								local flag148 = false
								if not (n7 < n) then
									continue
								end
								value241 = flag147
								value243 = flag148
							end

							tbl161[str48] = flag144
						end
					end
				end

				local function func162(list30, list31)
					list30 = list30 and list30.data
					if type(list30) ~= "table" then
						return
					end
					local n = nil
					local value245 = nil
					local value246 = nil
					local value247 = nil
					local value248 = nil
					local n7

					for i = 1, #list30 do
						local entry27 = list30[i]
						local func163 = tostring
						local targetId = entry27.targetId
						local targetid

						if targetId then
							targetid = targetId
						else
							targetid = entry27.targetid or ""
						end

						local flag149 = func163(targetid)

						if flag149 ~= "" then
							local lower = string.lower
							local str49 = tostring(entry27.state or entry27.State or "")
							local flag150 = lower(str49)
							local value249

							if type(entry27) ~= "table" then
								value249 = nil
							else
								local lower2 = string.lower
								local str50 = tostring(entry27.state or entry27.State or "")
								local flag151 = lower2(str50)

								if flag151 == "" or flag151 == "completed" then
									value249 = func157(entry27.imageUrl or entry27.imageurl or entry27.ImageUrl)
								else
									value249 = nil
								end
							end

							if value249 then
								local func164 = tostring
								flag149 = flag149 or ""
								local flag152 = func164(flag149)
								local flag153 = func157(value249)

								if not (flag152 == "" or not flag153) then
									local entry28 = tbl161[flag152]

									if entry28 then
										if func158(flag153) then
											n = 3
											value245 = true
										end

										if not value245 then
											local flag154 = func157(flag153)

											while true do
												if not value246 and flag154 then
													if type(flag154) == "string" and string.find(flag154, "PrivateImage", 1, true) ~= nil then
														value246 = true
													end
												else
													value246 = false
													flag154 = nil
												end

												if value246 then
													continue
												end
												break
											end

											if not flag154 then
												n = not (type(flag153) == "string" and string.find(flag153, "PrivateImage", 1, true) ~= nil) and 0 or 1
											else
												n = 2
											end
										end

										if func158(entry28) then
											n7 = 3
											value247 = true
										end

										if not value247 then
											local flag155 = func157(entry28)

											while true do
												if not value248 and flag155 then
													if type(flag155) == "string" and string.find(flag155, "PrivateImage", 1, true) ~= nil then
														value248 = true
													end
												else
													value248 = false
													flag155 = nil
												end

												if value248 then
													continue
												end
												break
											end

											if not flag155 then
												n7 = not (type(entry28) == "string" and string.find(entry28, "PrivateImage", 1, true) ~= nil) and 0 or 1
											else
												n7 = 2
											end
										end

										value245 = false
										value247 = false
										local flag156 = false
										local flag157 = false
										if not (n7 < n) then
											continue
										end
										value245 = flag156
										value247 = flag157
									end

									tbl161[flag152] = flag153
								end
							elseif list31 and flag150 == "pending" then
								list31[#list31 + 1] = flag149
							end
						end
					end
				end

				local function func165(list32)
					if type(list32) ~= "table" or #list32 == 0 then
						return
					end

					local function func166(list33, str51, str52)
						if type(list33) ~= "table" or #list33 == 0 then
							return {}
						end
						local tbl165 = {}
						local value250, obj19 = func160("https://thumbnails.roblox.com/v1/" .. str51 .. table.concat(list33, ",") .. "&size=" .. str52 .. "&format=Png&isCircular=false")
						func161(obj19)
						func162(value250, tbl165)

						if #list33 == 1 and type(obj19) == "string" then
							local match = obj19:gsub("\\/", "/"):match("\"imageUrl\":\"(https://[^\"]+)\"")
							if not match then
								return tbl165
							end
							local str53 = tostring(list33[1] or "")
							local flag158 = func157(match)

							if str53 ~= "" then
								if not flag158 then
									return tbl165
								end
								local entry29 = tbl161[str53]
								local value251 = nil
								local n = nil
								local value252 = nil
								local value253 = nil
								local value254 = nil
								local n7 = nil
								local value255 = nil
								local value256 = nil
								local value257 = nil

								while true do
									if value251 or not entry29 then
										tbl161[str53] = flag158
										return tbl165
									end

									if func158(flag158) then
										n = 3
										value252 = true
									end

									if not value252 then
										value253 = func157(flag158)
									end

									while true do
										if value252 or value254 or value253 then
											if value252 or value254 or type(value253) ~= "string" or string.find(value253, "PrivateImage", 1, true) == nil then
												if not value252 then
													if not value253 then
														n = not (type(flag158) == "string" and string.find(flag158, "PrivateImage", 1, true) ~= nil) and 0
														value254 = false
														n = n or 1
													else
														value254 = false
														n = 2
													end
												end

												if func158(entry29) then
													n7 = 3
													value255 = true
												end

												local flag159

												if not value255 then
													value256 = func157(entry29)
													flag159 = value257
												else
													flag159 = value257
												end

												while true do
													if value255 or flag159 or value256 then
														if value255 or flag159 or type(value256) ~= "string" or string.find(value256, "PrivateImage", 1, true) == nil then
															if not value255 then
																if not value256 then
																	n7 = not (type(entry29) == "string" and string.find(entry29, "PrivateImage", 1, true) ~= nil) and 0
																	value257 = false
																	n7 = n7 or 1
																else
																	value257 = false
																	n7 = 2
																end
															else
																value257 = flag159
															end

															if n7 < n then
																value251 = true
															end

															value255 = false
															if not value251 then
																return tbl165
															end
														else
															value257 = flag159
														end
													else
														value257 = flag159
													end

													value252 = false
													if value251 then
														break
													end
													value256 = nil
													value257 = true
													flag159 = true
													local value258 = nil
													if not true then
														break
													end
													value256 = value258
												end
											end
										end

										if value251 then
											break
										end
										local flag160 = true
										local value259 = nil
										value254 = true
										value253 = nil

										if not true then
											value254 = flag160
											value253 = value259
											break
										end
									end

									if not value251 then
										return tbl165
									end
								end
							end
						end

						return tbl165
					end

					local list34 = func166(list32, "assets?assetIds=", "150x150")
					local list35 = {}

					for i = 1, #list32 do
						if not func158(tbl161[tostring(list32[i])]) then
							list35[#list35 + 1] = tostring(list32[i])
						end
					end

					if #list35 > 0 then
						func166(list35, "assets?assetIds=", "420x420")
					end

					if type(list34) == "table" and #list34 > 0 then
						task.wait(0.4)
						func166(list34, "assets?assetIds=", "150x150")
					end

					local function func167()
						local list36 = {}
						local tbl166 = {}

						for i = 1, #list32 do
							local str54 = tostring(list32[i])

							if str54 ~= "" and not tbl166[str54] and type(tbl161[str54]) ~= "string" then
								tbl166[str54] = true
								list36[#list36 + 1] = str54
							end
						end

						return list36
					end

					local result26 = func167()

					if #result26 > 0 then
						func166(result26, "bundles/thumbnails?bundleIds=", "150x150")
					end
				end

				local function func168(tbl167, param104, flag161)
					local list37 = {}
					local tbl168 = {}
					local flag162 = func156(tbl167, param104)
					local flag163 = type(flag162) == "string"
					local flag164

					if flag163 then
						flag164 = flag162 ~= "" and not tbl168[flag162]
					else
						flag164 = flag163
					end

					if flag164 then
						tbl168[flag162] = true
						list37[#list37 + 1] = flag162
					end

					if type(flag161) == "string" and flag161 ~= "" and not tbl168[flag161] then
						tbl168[flag161] = true
						list37[#list37 + 1] = flag161
					end

					if type(tbl167) == "table" then
						local icon2 = value236(tbl167.Icon)

						if type(icon2) == "string" and icon2 ~= "" and not tbl168[icon2] then
							tbl168[icon2] = true
							list37[#list37 + 1] = icon2
						end

						for i = 1, #tbl162 do
							local flag165 = value236(tbl167[tbl162[i]])

							if type(flag165) == "string" and flag165 ~= "" and not tbl168[flag165] then
								tbl168[flag165] = true
								list37[#list37 + 1] = flag165
							end
						end
					end

					return list37
				end

				local function func169(param105, param106, param107)
					local list38 = func168(param106, param107, param105)
					local list39 = {}
					local tbl169 = {}
					local value260 = nil
					local value261 = nil

					local function func170(param108)
						local flag166 = func157(param108)
						if not flag166 then
							return
						end
						local flag167 = type(flag166) == "string" and string.find(flag166, "PrivateImage", 1, true) ~= nil
						local value262 = nil
						local n = nil
						local value263 = nil
						local value264 = nil
						local value265 = nil
						local n7 = nil
						local value266 = nil
						local value267 = nil
						local value268 = nil

						if flag167 then
							local value269 = nil
							local n8 = nil
							local value270 = nil
							local value271 = nil
							local value272 = nil
							local n9 = nil
							local value273 = nil
							local value274 = nil
							local value275 = nil

							repeat
								if value269 or not value261 then
									value261 = flag166
									return
								end

								if func158(flag166) then
									n8 = 3
									value270 = true
								end

								if not value270 then
									value271 = func157(flag166)
								end

								while true do
									if value270 or value272 or value271 then
										if value270 or value272 or type(value271) ~= "string" or string.find(value271, "PrivateImage", 1, true) == nil then
											if not value270 then
												if not value271 then
													n8 = not (type(flag166) == "string" and string.find(flag166, "PrivateImage", 1, true) ~= nil) and 0 or 1
												else
													n8 = 2
												end
											end

											local value276 = value261

											if func158(value261) then
												n9 = 3
												value273 = true
											end

											if not value273 then
												value274 = func157(value276)
											end

											while true do
												if value273 or value275 or value274 then
													if value273 or value275 or type(value274) ~= "string" or string.find(value274, "PrivateImage", 1, true) == nil then
														if not value273 then
															if not value274 then
																n9 = not (type(value276) == "string" and string.find(value276, "PrivateImage", 1, true) ~= nil) and 0 or 1
															else
																n9 = 2
															end
														end

														if n9 < n8 then
															value269 = true
														end

														value273 = false
														if not value269 then
															return
														end
													end
												end

												value270 = false
												if value269 then
													break
												end
												value274 = nil
												value275 = true
												local flag168 = true
												local value277 = nil
												if not true then
													break
												end
												value275 = flag168
												value274 = value277
											end
										end
									end

									if value269 then
										break
									end
									local flag169 = true
									local value278 = nil
									value272 = true
									value271 = nil

									if not true then
										value272 = flag169
										value271 = value278
										break
									end
								end

								value262 = nil
								n = nil
								value263 = nil
								value264 = nil
								value265 = nil
								n7 = nil
								value266 = nil
								value267 = nil
								value268 = nil
							until not value269
						end

						repeat
							if value262 or not value260 then
								value260 = flag166
								return
							end

							if func158(flag166) then
								n = 3
								value263 = true
							end

							if not value263 then
								value264 = func157(flag166)
							end

							while true do
								if value263 or value265 or value264 then
									if value263 or value265 or type(value264) ~= "string" or string.find(value264, "PrivateImage", 1, true) == nil then
										if not value263 then
											if not value264 then
												n = not (type(flag166) == "string" and string.find(flag166, "PrivateImage", 1, true) ~= nil) and 0
												value265 = false
												n = n or 1
											else
												value265 = false
												n = 2
											end
										end

										local value279 = value260

										if func158(value260) then
											n7 = 3
											value266 = true
										end

										local flag170

										if not value266 then
											value267 = func157(value279)
											flag170 = value268
										else
											flag170 = value268
										end

										while true do
											if value266 or flag170 or value267 then
												local flag171

												if value266 then
													flag171 = value266
												elseif flag170 then
													flag171 = flag170
												else
													flag171 = type(value267) ~= "string" or string.find(value267, "PrivateImage", 1, true) == nil
												end

												if flag171 then
													if not value266 then
														if not value267 then
															n7 = not (type(value279) == "string" and string.find(value279, "PrivateImage", 1, true) ~= nil) and 0
															value268 = false
															n7 = n7 or 1
														else
															value268 = false
															n7 = 2
														end
													else
														value268 = flag170
													end

													if not (n7 < n) then
														return
													end
													value266 = false
													value262 = true
												else
													value268 = flag170
												end
											else
												value268 = flag170
											end

											value263 = false
											if value262 then
												break
											end
											value267 = nil
											value268 = true
											flag170 = true
											local value280 = nil
											if not true then
												break
											end
											value267 = value280
										end
									end
								end

								if value262 then
									break
								end
								local flag172 = true
								local value281 = nil
								value265 = true
								value264 = nil

								if not true then
									value265 = flag172
									value264 = value281
									break
								end
							end
						until not value262
					end

					for i = 1, #list38 do
						local value282 = func159(list38[i])

						if value282 then
							if value282.cdn then
								func170(value282.cdn)
							end

							if value282.id and not tbl169[value282.id] then
								tbl169[value282.id] = true
								list39[#list39 + 1] = value282.id
								func170(tbl161[value282.id])
							end
						end
					end

					func165(list39)

					for i = 1, #list39 do
						func170(tbl161[list39[i]])
					end

					local value283 = func158(value260) or value260
					local value284

					if not func158(value283) then
						local value285 = nil

						for i = 1, #list39 do
							local flag173 = func158(tbl161[list39[i]])

							if not flag173 then
								flag173 = func157(tbl161[list39[i]])

								while true do
									if not value285 and flag173 then
										if type(flag173) == "string" and string.find(flag173, "PrivateImage", 1, true) ~= nil then
											value285 = true
										end
									else
										value285 = false
										flag173 = nil
									end

									if value285 then
										continue
									end
									break
								end
							end

							if flag173 then
								if func158(flag173) then
									value283 = flag173
									break
								else
									value283 = flag173
								end
							end
						end

						value284 = value283
					else
						value284 = value283
					end

					return value284, list39, value260, value261
				end

				local tbl170 = {}

				local function func171(flag174)
					local str55 = tostring(flag174 or "")
					if str55 == "" or str55 == "0" then
						return
					end

					if type(tbl170[str55]) == "string" then
						return tbl170[str55]
					end
					local value286 = func160("https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. str55 .. "&size=150x150&format=Png&isCircular=false")
					local data

					if value286 then
						data = value286.data and value286.data[1]
					else
						data = value286
					end

					local value287

					if type(data) ~= "table" then
						value287 = nil
					else
						local lower = string.lower
						local str56 = tostring(data.state or data.State or "")
						local flag175 = lower(str56)

						if flag175 == "" or flag175 == "completed" then
							value287 = func157(data.imageUrl or data.imageurl or data.ImageUrl)
						else
							value287 = nil
						end
					end

					if value287 then
						tbl170[str55] = value287
					end

					return value287
				end

				local function func172(param109, param110)
					local value288 = nil

					if type(param109) == "table" then
						value288 = tonumber(param109.Weight) or tonumber(param109.ModelWeight) or tonumber(param109.Kg) or tonumber(param109.BaseWeight)
					end

					if (not value288 or value288 <= 0) and type(param110) == "table" then
						local weight2 = tonumber(param110.Weight)

						if weight2 then
							value288 = weight2
						else
							value288 = tonumber(param110.BaseWeight) or tonumber(param110.ModelWeight)
						end
					end

					if not value288 or value288 <= 0 then
						return
					end

					if value288 >= 100 then
						return string.format("%.0f kg", value288)
					end
					return string.format("%.1f kg", value288)
				end

				local function func173(list40)
					if type(list40) ~= "table" or type(list40.Mutations) ~= "table" or #list40.Mutations == 0 then
						return
					end
					return table.concat(list40.Mutations, " · ")
				end

				local function func174()
					local playerGui = localPlayer:FindFirstChild("PlayerGui")
					playerGui = playerGui and playerGui:FindFirstChild("HUD")
					playerGui = playerGui and playerGui:FindFirstChild("GameHUD")
					playerGui = playerGui and playerGui:FindFirstChild("BottomLeft")
					local money = playerGui and playerGui:FindFirstChild("Money")
					money = money and money:FindFirstChild("Value")
					if money and (money:IsA("TextLabel") or money:IsA("TextButton")) and money.Text ~= "" then
						return money.Text
					end
					local leaderstats = localPlayer:FindFirstChild("leaderstats")
					local cash

					if leaderstats then
						local money2 = leaderstats:FindFirstChild("Money")

						if money2 then
							cash = money2
						else
							cash = leaderstats:FindFirstChild("Cash") or leaderstats:FindFirstChild("Coins")
						end
					else
						cash = leaderstats
					end

					if cash and cash:IsA("ValueBase") then
						return "$" .. func152(cash.Value)
					end
					return "—"
				end

				local function func175()
					local leaderstats = localPlayer:FindFirstChild("leaderstats")
					local moneyS

					if leaderstats then
						moneyS = leaderstats:FindFirstChild("Money/s") or leaderstats:FindFirstChild("Income")
					else
						moneyS = leaderstats
					end

					if moneyS and moneyS:IsA("ValueBase") then
						return func152(moneyS.Value) .. "/s"
					end
					return "—"
				end

				local function func176(param111, flag176, flag177)
					if flag176 == nil or flag176 == "" then
						return
					end
					return { name = tostring(param111), value = tostring(flag176), inline = flag177 ~= false }
				end

				local function func177(...)
					local packed4 = table.pack(...)
					local list41 = {}

					for i = 1, select("#", ...) do
						local value289 = select(i, table.unpack(packed4, 1, packed4.n))

						if value289 then
							list41[#list41 + 1] = value289
						end
					end

					if #list41 == 0 then
						return
					end
					return list41
				end

				local function func178()
					if tbl9.HookUsername == true then
						local tbl171 = {
							name = tostring(localPlayer.DisplayName or localPlayer.Name),
							url = "https://www.roblox.com/users/" .. tostring(localPlayer.UserId) .. "/profile",
						}

						local userId2 = func171(localPlayer.UserId)

						if userId2 then
							tbl171.icon_url = userId2
						end

						return tbl171
					end

					return { name = "COKEBOYS" }
				end

				local function func179(param112)
					if type(param112) ~= "table" then
						return true
					end

					if param112.Success == false or param112.success == false then
						return false
					end
					local num11 = tonumber(param112.StatusCode or param112.status_code or param112.Status)
					if num11 and num11 >= 400 then
						return false, num11
					end
					return true, num11
				end

				local function func180(list42)
					if type(list42) ~= "string" or #list42 < 12 then
						return
					end
					local flag178, flag179, flag180, flag181 = string.byte(list42, 1, 4)
					if flag178 == 137 and flag179 == 80 and flag180 == 78 and flag181 == 71 then
						return "image/png", "png"
					end

					if flag178 == 255 and flag179 == 216 then
						return "image/jpeg", "jpg"
					end

					if flag178 == 71 and flag179 == 73 and flag180 == 70 then
						return "image/gif", "gif"
					end

					if flag178 == 82 and flag179 == 73 and flag180 == 70 and flag181 == 70 and string.sub(list42, 9, 12) == "WEBP" then
						return "image/webp", "webp"
					end
				end

				local function func181(list43, flag182)
					if type(list43) ~= "string" or #list43 < 32 then
						return false
					end

					if flag182 == "png" then
						return string.find(list43, "IEND", 1, true) ~= nil
					end

					if flag182 == "jpg" then
						local n = #list43
						return string.byte(list43, n - 1) == 255 and string.byte(list43, n) == 217
					end

					if flag182 == "gif" then
						return #list43 > 64
					end
					return false
				end

				local function func182(list44, param113)
					if list44 then
						list44 = list44.Headers or list44.headers
					end

					if type(list44) ~= "table" then
						return
					end
					local lowered3 = string.lower(param113)

					for k, value290 in pairs(list44) do
						local lower = string.lower
						local str57 = tostring(k)
						if lowered3 == lower(str57) then
							return value290
						end
					end
				end

				local function func183(text12)
					if type(text12) ~= "string" then
						return
					end
					local obj20 = text12:gsub("^http://", "https://")
					if not string.find(obj20, "^https://") then
						return
					end

					local function func184(param114)
						local flag183, flag184 = func180(param114)
						if flag183 and flag184 ~= "webp" and func181(param114, flag184) then
							return param114, flag183, flag184
						end
					end

					if string.find(obj20, "rbxcdn.com", 1, true) and type(game.HttpGet) == "function" then
						local ok, result = pcall(game.HttpGet, game, obj20)

						if ok then
							local flag185, flag186 = func180(result)
							local value291

							if not flag185 or flag186 == "webp" or not func181(result, flag186) then
								value291 = nil
							else
								value291 = result
							end

							if value291 then
								return func184(result)
							end
						end
					end

					local request_ = syn and syn.request or http_request or request or http and http.request or fluxus and fluxus.request

					if request_ then
						for i = 1, 5 do
							local ok, result = pcall(request_, {
								Url = obj20,
								Method = "GET",
								Headers = { Accept = "image/png,image/jpeg,image/*;q=0.8,*/*;q=0.1" },
							})

							if not ok or type(result) ~= "table" then
								break
							end
							local body = result.Body or result.body
							local flag187, flag188 = func180(body)
							local value292

							if not flag187 or flag188 == "webp" or not func181(body, flag188) then
								value292 = nil
							else
								value292 = body
							end

							if value292 then
								return func184(body)
							end
							local location = func182(result, "Location")
							if type(location) ~= "string" or location == "" then
								break
							end

							if string.find(location, "^https?://") then
								obj20 = location:gsub("^http://", "https://")
								continue
							end

							if string.sub(location, 1, 1) ~= "/" then
								break
							end
							local match = obj20:match("^(https://[^/]+)")
							if not match then
								break
							end
							obj20 = match .. location
						end
					end

					local ok, result = pcall(function()
						if type(game.HttpGet) == "function" then
							return game:HttpGet(obj20)
						end
					end)

					if ok then
						return func184(result)
					end
				end

				local function func185(param115, param116, str58)
					local request_ = syn and syn.request or http_request or request or http and http.request or fluxus and fluxus.request

					local ok, result = pcall(function()
						return HttpService:JSONEncode(param116)
					end)

					if not ok or type(result) ~= "string" then
						return false, "encode"
					end

					if str58 and str58.bytes then
						local str59 = "Cokeboys" .. tostring(math.floor(os.clock() * 1000000)) .. tostring(math.random(100000, 999999))
						local fileName3 = "--" .. str59 .. "\r\n" .. "Content-Disposition: form-data; name=\"payload_json\"" .. "\r\n" .. "\r\n" .. result .. "\r\n" .. "--" .. str59 .. "\r\n" .. "Content-Disposition: form-data; name=\"files[0]\"; filename=\"" .. (str58.name or "icon.png") .. "\"" .. "\r\n" .. "Content-Type: " .. (str58.mime or "image/png") .. "\r\n" .. "Content-Transfer-Encoding: binary" .. "\r\n" .. "\r\n" .. str58.bytes .. "\r\n" .. "--" .. str59 .. "--\r\n"

						if not string.find(param115, "wait=", 1, true) then
							param115 ..= (not string.find(param115, "?", 1, true) and "?" or "&") .. "wait=true"
						end

						local ok2, result2 = pcall(request_, {
							Url = param115,
							Method = "POST",
							Headers = {
								["Content-Type"] = "multipart/form-data; boundary=" .. str59,
								["Content-Length"] = tostring(#fileName3),
							},
							Body = fileName3,
						})

						if ok2 and select(1, func179(result2)) then
							local body = result2 and (result2.Body or result2.body)
							local flag189

							if type(body) ~= "string" or body == "" then
								flag189 = false
							else
								local num12 = tonumber(body:match("\"code\"%s*:%s*(%d+)"))
								flag189 = num12 ~= nil and num12 >= 10000
							end

							if not flag189 then
								return true, result2
							end
						end

						return false, "multipart"
					end

					local ok2, result2 = pcall(request_, { Url = param115, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = result })
					if not ok2 then
						return false, (tostring(result2))
					end
					local flag190, flag191

					if type(result2) ~= "table" then
						flag190 = nil
						flag191 = true
					elseif result2.Success == false or result2.success == false then
						flag190 = nil
						flag191 = false
					else
						flag190 = tonumber(result2.StatusCode or result2.status_code or result2.Status)

						if flag190 and flag190 >= 400 then
							flag191 = false
						else
							flag191 = true
						end
					end

					if not flag191 then
						return false, "http " .. tostring(flag190)
					end
					return true, result2
				end

				local value293 = nil

				local function func186()
					if type(value293) == "string" and value293 ~= "" then
						return value293
					end
					local value294, obj21 = func160("https://thumbnails.roblox.com/v1/assets?assetIds=128335611339738&returnPolicy=PlaceHolder&size=420x420&format=Png&isCircular=false")
					local flag192 = type(value294) == "table" and type(value294.data) == "table" and value294.data[1]
					local imageUrl = type(flag192) == "table" and (flag192.imageUrl or flag192.ImageUrl)

					if type(imageUrl) ~= "string" and type(obj21) == "string" then
						imageUrl = obj21:gsub("\\/", "/"):match("\"imageUrl\":\"(https://[^\"]+)\"")
					end

					value293 = func158(imageUrl) or "https://tr.rbxcdn.com/180DAY-1290191b2995a8fc173a9fa5170d1043/420/420/Image/Png/noFilter"
					return value293
				end

				local function func187(param117)
					if tbl9.HookEnabled ~= true then
						return false, "off"
					end
					local hookUrl = tbl9.HookUrl
					if type(hookUrl) ~= "string" or not string.find(hookUrl, "^https://") then
						return false, "no url"
					end
					local flag193 = not syn or not syn.request
					local flag194

					if flag193 then
						local flag195 = not http_request

						if flag195 then
							local flag196 = not request

							if flag196 then
								local flag197 = not http or not http.request

								if flag197 then
									flag194 = not fluxus or not fluxus.request
								else
									flag194 = flag197
								end
							else
								flag194 = flag196
							end
						else
							flag194 = flag195
						end
					else
						flag194 = flag193
					end

					if flag194 then
						return false, "no http"
					end
					local value295, list45, value296, value297 = func169(param117.thumbnail, param117.cfg, param117.cat)
					local str60 = tostring(param117.title or "Cokeboys")
					local value298 = nil
					local str61

					if not (#str60 > 256) then
						str61 = str60
						str60 = value298
					else
						str61 = string.sub(str60, 1, 253) .. "..."
					end

					local tbl172 = {
						author = func178(),
						title = str61,
						color = tonumber(param117.color) or 11393254,
						timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ"),
						footer = { text = "COKEBOYS" },
					}

					local description = param117.description and tostring(param117.description) or ""

					if str60 then
						description = description ~= "" and str60 .. "\n" .. description or str60
					end

					if description ~= "" then
						tbl172.description = description
					end

					if param117.fields then
						tbl172.fields = param117.fields
					end

					if param117.url then
						tbl172.url = param117.url
					end

					local value299 = nil
					local tbl173 = {}

					local function func188(flag198)
						if type(flag198) ~= "string" or flag198 == "" or tbl173[flag198] then
							return
						end
						tbl173[flag198] = true
						local flag199, value300, str62 = func183(flag198)
						if flag199 and str62 then
							value299 = { bytes = flag199, mime = value300, name = "icon." .. str62 }
							return true
						end
					end

					local function func189(param118)
						local obj22 = func157(param118)
						if not obj22 then
							return
						end
						local match = obj22:match("(180DAY%-[%w%-]+)") or obj22:match("rbxcdn%.com/([%w%-]+)/")
						if not match then
							return
						end

						return {
							"https://tr.rbxcdn.com/" .. match .. "/150/150/Image/Png/noFilter",
							"https://tr.rbxcdn.com/" .. match .. "/420/420/Image/Png/noFilter",
						}
					end

					local function func190(param119)
						if func188(param119) then
							return true
						end
						local list46 = func189(param119)
						if type(list46) ~= "table" then
							return
						end
						-- more leaks: https://discord.gg/x7YbZeezpm

						for i = 1, #list46 do
							if func188(list46[i]) then
								return true
							end
						end
					end

					local tbl174 = { username = "COKEBOYS", embeds = { tbl172 } }
					local hookPing = tbl9.HookPing
					local value301 = nil
					local value302 = nil
					local content = nil

					if hookPing == "Here" then
						value301 = true
						value302 = nil
						content = "@here"
					end

					repeat
						if value301 or hookPing == "User id" then
							if not value301 then
								if not value301 then
									value302 = tostring(tbl9.HookUserId or "")
								end
							end

							if value301 or value302 ~= "" and value302 ~= "0" then
								if not value301 then
									if not value301 then
										content = "<@" .. value302 .. ">"
									end
								end

								if content then
									tbl174.content = content
								end

								local result27 = func186()
								if result27 then
									tbl172.thumbnail = { url = result27 }
									return func185(hookUrl, tbl174)
								end

								if not value299 then
									func190(value297)
									func190(value295)
									func190(value296)

									if not value299 and type(list45) == "table" then
										for i = 1, math.min(#list45, 8) do
											func190(tbl161[list45[i]])

											if not value299 then
												local str63 = tostring(list45[i])
												func188("https://assetdelivery.roblox.com/v1/asset/?id=" .. str63)
												func188("https://www.roblox.com/asset-thumbnail/image?assetId=" .. str63 .. "&width=150&height=150&format=png")
												if not value299 then
													continue
												end
											end

											break
										end
									end
								end

								if value299 then
									tbl172.thumbnail = { url = "attachment://" .. value299.name }
									tbl174.attachments = { { id = 0, filename = value299.name } }
									if select(1, func185(hookUrl, tbl174, value299)) then
										return true
									end
									tbl174.attachments = nil
								end

								tbl172.thumbnail = nil
								return func185(hookUrl, tbl174)
							end
						end

						value301 = true
						content = nil
					until not true
				end

				local function func191(param120)
					if type(param120) ~= "table" then
						return nil, nil, nil
					end
					local rec = param120.rec
					local cfg = param120.cfg
					local cat = param120.cat or rec and (rec.AssetCategory or rec.Category)

					if type(cfg) ~= "table" and cat then
						if directory and cat then
							cfg = directory[cat]
						else
							cfg = nil
						end
					end

					if type(cfg) ~= "table" and type(directory) == "table" then
						local lower = string.lower
						local str64 = tostring(param120.name or cat or "")
						local flag200 = lower(str64)

						if flag200 ~= "" and flag200 ~= "egg" and flag200 ~= "?" then
							for k, value303 in pairs(directory) do
								local flag201 = type(value303) == "table"

								if flag201 then
									local lower2 = string.lower
									local str65 = tostring(k)
									flag201 = flag200 == lower2(str65)

									if not flag201 then
										local lower3 = string.lower
										local str66 = tostring(value303.DisplayName or "")
										flag201 = flag200 == lower3(str66)
									end
								end

								if flag201 then
									return rec, value303, (tostring(k))
								end
							end
						end
					end

					return rec, cfg, cat
				end

				local function func192()
					if tbl9.HookEnabled ~= true or tbl9.SessionDigest ~= true then
						return
					end
					local now4 = os.clock()
					if now4 - now2 < 600 then
						return
					end
					now2 = now4
					local tbl175 = flag102 and not not flag102.stats and flag102.stats() or {}
					local n = (tonumber(tbl175.soldPets) or 0) + (tonumber(tbl175.soldEggs) or 0)
					local str67 = tostring(tbl175.soldPets or 0) .. " pets · " .. tostring(tbl175.soldEggs or 0) .. " eggs"

					local tbl176 = {
						kind = "Session recap",
						title = func154() .. " running",
						description = "Totals since this execute — not just the last 10 minutes.",
						color = 9807270,
					}

					local func193 = func177
					local str68 = tostring(str37 and str37.banked or 0)
					local tbl177

					if str68 ~= nil and str68 ~= "" then
						tbl177 = { name = tostring("Stolen"), value = tostring(str68), inline = true }
					else
						tbl177 = nil
					end

					local str69 = tostring(str37 and str37.lost or 0)
					local tbl178

					if str69 ~= nil and str69 ~= "" then
						tbl178 = { name = tostring("Lost"), value = tostring(str69), inline = true }
					else
						tbl178 = nil
					end

					local str70 = tostring(str37 and str37.regrabs or 0)
					local tbl179

					if str70 ~= nil and str70 ~= "" then
						tbl179 = { name = tostring("Re-grabs"), value = tostring(str70), inline = true }
					else
						tbl179 = nil
					end

					local str71 = tostring(tbl175.hatched or 0)
					local tbl180

					if str71 ~= nil and str71 ~= "" then
						tbl180 = { name = tostring("Hatched"), value = tostring(str71), inline = true }
					else
						tbl180 = nil
					end

					local flag202 = n > 0 and str67 or "0"
					local tbl181

					if flag202 ~= nil and flag202 ~= "" then
						tbl181 = { name = tostring("Sold"), value = tostring(flag202), inline = true }
					else
						tbl181 = nil
					end

					local str72 = tostring(tbl175.claimIndex or 0)
					local tbl182

					if str72 ~= nil and str72 ~= "" then
						tbl182 = { name = tostring("Index claims"), value = tostring(str72), inline = true }
					else
						tbl182 = nil
					end

					local result28 = func174()
					local tbl183

					if result28 ~= nil and result28 ~= "" then
						tbl183 = { name = tostring("Money"), value = tostring(result28), inline = true }
					else
						tbl183 = nil
					end

					local func194 = func176
					local result29 = func175()
					tbl176.fields = func193(tbl177, tbl178, tbl179, tbl180, tbl181, tbl182, tbl183, func194("Income", result29))
					if type(tbl176) ~= "table" then
						return
					end

					task.spawn(function()
						local flag203, value304 = func187(tbl176)

						if not flag203 then
							local func195 = func82
							local str73 = tostring(value304)
							local str74 = tostring(tbl176.title)
							func195("hook", "send fail", str73, str74)
						end
					end)
				end

				task.spawn(function()
					while flag98 do
						task.wait(30)
						pcall(func192)
					end
				end)

				return {
					send = function(param121)
						if type(param121) ~= "table" then
							return false, "bad embed"
						end

						task.spawn(function()
							local flag204, value305 = func187(param121)

							if not flag204 then
								local func196 = func82
								local str75 = tostring(value305)
								local str76 = tostring(param121.title)
								func196("hook", "send fail", str75, str76)
							end
						end)

						return true
					end,
					test = function()
						tbl9.HookEnabled = true

						if tbl10.HookEnabled and tbl10.HookEnabled.set then
							pcall(tbl10.HookEnabled.set, true)
						end

						local func197 = func187

						local tbl184 = {
							kind = "Webhook test",
							title = "Connected",
							description = "Stolen and hatched eggs will post as embeds with the pet icon, $/s, and rarity.",
							color = 11393254,
						}

						local func198 = func177
						local str77 = tostring(localPlayer.DisplayName or localPlayer.Name)
						local tbl185

						if str77 ~= nil and str77 ~= "" then
							tbl185 = { name = tostring("Player"), value = tostring(str77), inline = true }
						else
							tbl185 = nil
						end

						local str78 = tostring(str3.Game or "Roblox")
						local tbl186

						if str78 ~= nil and str78 ~= "" then
							tbl186 = { name = tostring("Game"), value = tostring(str78), inline = true }
						else
							tbl186 = nil
						end

						tbl184.fields = func198(tbl185, tbl186, func176("Session", func154()))
						return func197(tbl184)
					end,
					stolen = function(flag205)
						if tbl9.HookStolen ~= true then
							return
						end
						flag205 = flag205 or str37 and (str37.hookSnap or str37.target)
						local list47, flag206, flag207 = func191(flag205)
						local name2 = flag205 and flag205.name

						if type(name2) ~= "string" or name2 == "" or name2 == "egg" or name2 == "?" then
							name2 = flag206 and (flag206.DisplayName or flag206._id) or flag207 and tostring(flag207) or nil
						end

						local earn = func136(list47, flag206)

						if (not earn or earn == 0) and flag205 and tonumber(flag205.earn) then
							earn = flag205.earn
						end

						if (not earn or earn == 0) and type(flag206) == "table" then
							if type(flag206) == "table" then
								earn = tonumber(flag206.EarningRate) or 0
							else
								earn = 0
							end
						end

						local flag208

						if type(flag206) == "table" and type(flag206.Rarity) == "table" then
							local func199 = tostring
							local displayName = flag206.Rarity.DisplayName
							local id

							if displayName then
								id = displayName
							else
								local name3 = flag206.Rarity.Name

								if name3 then
									id = name3
								else
									id = flag206.Rarity._id or "?"
								end
							end

							flag208 = func199(id)
						else
							flag208 = "?"
						end

						if (not flag208 or flag208 == "?") and flag205 and type(flag205.rar) == "string" then
							flag208 = flag205.rar
						end

						if (not name2 or name2 == "egg") and type(flag206) ~= "table" then
							func82("hook", "stolen skipped, no egg")
							return
						end
						name2 = name2 or flag206 and flag206.DisplayName or "egg"
						local hookMinGen = func137(tbl9.HookMinGen)
						local flag209 = hookMinGen > 0

						if flag209 then
							flag209 = hookMinGen > (tonumber(earn) or 0)
						end

						if flag209 or not func153(flag208) then
							return
						end
						local tbl187 = { kind = "Egg stolen", title = tostring(name2) }
						local tbl188 = tbl163
						local lower = string.lower
						local str79 = tostring(flag208 or "")
						tbl187.color = tbl188[lower(str79)] or 5814783
						tbl187.thumbnail = flag205 and flag205.icon or func156(flag206, flag207, name2)
						tbl187.cfg = flag206
						tbl187.cat = flag207
						local func200 = func177
						local str80 = "**" .. func152(earn) .. "/s**"
						local tbl189

						if str80 ~= nil and str80 ~= "" then
							tbl189 = { name = tostring("Earns"), value = tostring(str80), inline = true }
						else
							tbl189 = nil
						end

						local tbl190

						if flag208 ~= nil and flag208 ~= "" then
							tbl190 = { name = tostring("Rarity"), value = tostring(flag208), inline = true }
						else
							tbl190 = nil
						end

						local flag210, flag211 = func150(flag206, list47)
						local tbl191

						if flag210 ~= nil and flag210 ~= "" then
							tbl191 = { name = tostring("Chance"), value = tostring(flag210), inline = flag211 ~= false }
						else
							tbl191 = nil
						end

						local flag212, flag213 = func172(list47, flag206)
						local tbl192

						if flag212 ~= nil and flag212 ~= "" then
							tbl192 = { name = tostring("Weight"), value = tostring(flag212), inline = flag213 ~= false }
						else
							tbl192 = nil
						end

						local flag214, flag215

						if type(list47) ~= "table" or type(list47.Mutations) ~= "table" or #list47.Mutations == 0 then
							flag214 = nil
							flag215 = nil
						else
							flag214, v40 = table.concat(list47.Mutations, " · ")
						end

						local tbl193

						if flag214 ~= nil and flag214 ~= "" then
							tbl193 = { name = tostring("Mutations"), value = tostring(flag214), inline = flag215 ~= false }
						else
							tbl193 = nil
						end

						local area = flag205 and flag205.area ~= "" and flag205.area or nil
						local tbl194

						if area ~= nil and area ~= "" then
							tbl194 = { name = tostring("Area"), value = tostring(area), inline = true }
						else
							tbl194 = nil
						end

						tbl187.fields = func200(tbl189, tbl190, tbl191, tbl192, tbl193, tbl194, func176("This session", tostring(str37 and str37.banked or 0) .. " stolen · " .. tostring(str37 and str37.lost or 0) .. " lost"))
						if type(tbl187) ~= "table" then
							return
						end

						task.spawn(function()
							local flag216, value306 = func187(tbl187)

							if not flag216 then
								local func201 = func82
								local str81 = tostring(value306)
								local str82 = tostring(tbl187.title)
								func201("hook", "send fail", str81, str82)
							end
						end)
					end,
					hatched = function(flag217, param122, param123)
						if tbl9.HookHatched ~= true then
							return
						end
						local tbl195 = type(flag217) == "table" and flag217 or { name = flag217, earn = param122, rar = param123 }
						local name2 = tbl195.name or "pet"
						local earn = func136(tbl195.rec, tbl195.cfg)

						if earn == 0 and tonumber(tbl195.earn) then
							earn = tbl195.earn
						end

						local rar = tbl195.rar

						if not rar then
							local cfg = tbl195.cfg

							if type(cfg) == "table" and type(cfg.Rarity) == "table" then
								rar = tostring(cfg.Rarity.DisplayName or cfg.Rarity.Name or cfg.Rarity._id or "?")
							else
								rar = "?"
							end

							rar = rar or "?"
						end

						local hookMinGen2 = func137(tbl9.HookMinGen)
						local flag218 = hookMinGen2 > 0

						if flag218 then
							flag218 = hookMinGen2 > (tonumber(earn) or 0)
						end

						if flag218 or not func153(rar) then
							return
						end
						local tbl196 = { kind = "Egg hatched", title = tostring(name2) }
						local tbl197 = tbl163
						local lower = string.lower
						local str83 = tostring(rar or "")
						tbl196.color = tbl197[lower(str83)] or 3908956
						tbl196.thumbnail = func156(tbl195.cfg, tbl195.cat, name2)
						tbl196.cfg = tbl195.cfg
						tbl196.cat = tbl195.cat
						local func202 = func177
						local str84 = "**" .. func152(earn) .. "/s**"
						local tbl198

						if str84 ~= nil and str84 ~= "" then
							tbl198 = { name = tostring("Earns"), value = tostring(str84), inline = true }
						else
							tbl198 = nil
						end

						local tbl199

						if rar ~= nil and rar ~= "" then
							tbl199 = { name = tostring("Rarity"), value = tostring(rar), inline = true }
						else
							tbl199 = nil
						end

						local flag219, flag220 = func150(tbl195.cfg, tbl195.rec)
						local tbl200

						if flag219 ~= nil and flag219 ~= "" then
							tbl200 = { name = tostring("Chance"), value = tostring(flag219), inline = flag220 ~= false }
						else
							tbl200 = nil
						end

						local flag221, flag222 = func172(tbl195.rec, tbl195.cfg)
						local tbl201

						if flag221 ~= nil and flag221 ~= "" then
							tbl201 = { name = tostring("Weight"), value = tostring(flag221), inline = flag222 ~= false }
						else
							tbl201 = nil
						end

						tbl196.fields = func202(tbl198, tbl199, tbl200, tbl201, func176("Mutations", func173(tbl195.rec)))
						if type(tbl196) ~= "table" then
							return
						end

						task.spawn(function()
							local flag223, value307 = func187(tbl196)

							if not flag223 then
								local func203 = func82
								local str85 = tostring(value307)
								local str86 = tostring(tbl196.title)
								func203("hook", "send fail", str85, str86)
							end
						end)
					end,
					sold = function(flag224, param124, param125)
						if tbl9.HookSold ~= true then
							return
						end
						local tbl202 = type(flag224) == "table" and flag224 or { kind = flag224, name = param124, earn = param125 }
						local flag225, flag226, flag227 = func191(tbl202)
						tbl202.cfg = flag226 or tbl202.cfg
						tbl202.cat = flag227 or tbl202.cat
						tbl202.rec = flag225 or tbl202.rec
						local kind2 = tbl202.kind ~= "egg" and "pet" or "egg"
						local flag228

						if flag226 then
							if type(flag226) == "table" and type(flag226.Rarity) == "table" then
								flag228 = tostring(flag226.Rarity.DisplayName or flag226.Rarity.Name or flag226.Rarity._id or "?")
							else
								flag228 = "?"
							end
						else
							flag228 = flag226
						end

						flag228 = flag228 or nil
						local name2 = tbl202.name

						if type(name2) ~= "string" or name2 == "" or name2 == "egg" or name2 == "pet" then
							name2 = flag226 and flag226.DisplayName or flag227 or kind2
						end

						local tbl203 = { kind = kind2 ~= "egg" and "Sold a pet" or "Sold an egg" }
						tbl203.title = tostring(name2)
						local tbl204 = tbl163
						local lower = string.lower
						local str87 = tostring(flag228 or "")
						tbl203.color = tbl204[lower(str87)] or 15105570
						tbl203.thumbnail = func156(flag226, flag227, name2)
						tbl203.cfg = flag226
						tbl203.cat = flag227
						local func204 = func177
						local str88 = "**" .. func152(func136(tbl202.rec, flag226)) .. "/s**"
						local tbl205

						if str88 ~= nil and str88 ~= "" then
							tbl205 = { name = tostring("Earns"), value = tostring(str88), inline = true }
						else
							tbl205 = nil
						end

						local tbl206

						if flag228 ~= nil and flag228 ~= "" then
							tbl206 = { name = tostring("Rarity"), value = tostring(flag228), inline = true }
						else
							tbl206 = nil
						end

						tbl203.fields = func204(tbl205, tbl206, func176("Chance", func150(flag226, tbl202.rec)))
						if type(tbl203) ~= "table" then
							return
						end

						task.spawn(function()
							local flag229, value308 = func187(tbl203)

							if not flag229 then
								local func205 = func82
								local str89 = tostring(value308)
								local str90 = tostring(tbl203.title)
								func205("hook", "send fail", str89, str90)
							end
						end)
					end,
					rewards = function(param126)
						if tbl9.HookRewards ~= true then
							return
						end
						local tbl207 = { kind = "Rewards claimed", title = "Index rewards" }
						tbl207.description = "Claimed **" .. tostring(param126) .. "** " .. (tonumber(param126) ~= 1 and "entries" or "entry")
						tbl207.color = 3447003
						if type(tbl207) ~= "table" then
							return
						end

						task.spawn(function()
							local flag230, value309 = func187(tbl207)

							if not flag230 then
								local func206 = func82
								local str91 = tostring(value309)
								local str92 = tostring(tbl207.title)
								func206("hook", "send fail", str91, str92)
							end
						end)
					end,
				}
			end

			flag138 = func151()
			local tbl208 = {}
			local n7 = 0
			local value310 = nil
			local n8 = 0
			local flag231 = false
			local function func207(...) end

			pcall(function()
				local fieldRefreshed = flag96 and flag96.FieldRefreshed

				if type(fieldRefreshed) == "table" and type(fieldRefreshed.Connect) == "function" then
					local connection3 = fieldRefreshed:Connect(function()
						local n = type(tbl208) == "table" and #tbl208 or 0
						n7 = 0
						n8 = 0
						flag231 = true

						if str37 and n > 6 then
							str37.eggResetAt = os.clock()
							str37.eggResetN = 0
							str37.eggResetGrew = 0
						end
					end)

					if connection3 then
						tbl146[connection3] = true
					end
				end
			end)

			local function func208(list48, list49)
				local tbl209 = {}

				for _, item21 in ipairs(list48) do
					local lower = string.lower
					local str93 = tostring(item21)
					tbl209[lower(str93)] = true
				end

				local list50 = {}

				for _, item22 in ipairs(list49) do
					local func209 = tostring
					item22 = item22 or ""
					local flag232 = func209(item22)

					if flag232 ~= "" and flag232 ~= "nil" and not tbl209[string.lower(flag232)] then
						list48[#list48 + 1] = flag232
						tbl209[string.lower(flag232)] = true
						list50[#list50 + 1] = flag232
					end
				end

				return list50
			end

			local function func210(param127, list51)
				if type(list51) ~= "table" or #list51 == 0 then
					return
				end
				local entry30 = tbl9[param127]
				if type(entry30) ~= "table" then
					return
				end
				local tbl210 = {}
				local list52 = {}

				for i = 1, #entry30 do
					local str94 = tostring(entry30[i])
					list52[#list52 + 1] = entry30[i]
					tbl210[str94] = true
				end

				local flag233 = false

				for i = 1, #list51 do
					local str95 = tostring(list51[i])

					if str95 ~= "" and str95 ~= "nil" and not tbl210[str95] then
						list52[#list52 + 1] = str95
						tbl210[str95] = true
						flag233 = true
					end
				end

				if not flag233 then
					return
				end
				tbl9[param127] = list52
				local entry31 = tbl10[param127]

				if entry31 and entry31.set then
					entry31.set(list52)
				end
			end

			local function func211(param128, list53, list54)
				local entry32 = tbl10[param128]
				local options = entry32 and entry32.options
				if type(options) ~= "table" then
					return
				end
				local entry33 = tbl9[param128]

				for i = #options, 1, -1 do
					options[i] = nil
				end

				for _, item23 in ipairs(list53) do
					options[#options + 1] = item23
				end

				for _, item24 in ipairs(list54) do
					options[#options + 1] = item24
				end

				if entry32.refresh then
					entry32.refresh()
				end

				if entry33 ~= nil and entry32.set then
					entry32.set(entry33)
				end
			end

			func138 = function()
				if not value310 then
					value310 = { a = {}, r = {}, m = {}, adopted = false }

					for _, item25 in ipairs(list1) do
						value310.a[item25] = true
					end

					for _, item26 in ipairs(tbl6) do
						value310.r[item26] = true
					end

					for _, item27 in ipairs(tbl7) do
						value310.m[item27] = true
					end
				end

				local list55 = {}
				local list56 = {}
				local tbl211 = {}

				local function func212(flag234, param129)
					local str96 = tostring(flag234 or "")
					if str96 == "" or str96 == "?" or str96 == "nil" or tbl211[str96] then
						return
					end
					tbl211[str96] = true
					list56[#list56 + 1] = { name = str96, n = tonumber(param129) or 999 }
				end

				if type(directory2) == "table" then
					local list57 = {}

					for k, value311 in pairs(directory2) do
						local str97 = tostring(k)
						local n = 999

						if type(value311) == "table" then
							local func213 = tostring
							local displayName = value311.DisplayName
							local id

							if displayName then
								id = displayName
							else
								id = value311._id or k
							end

							str97 = func213(id)

							if type(value311.Rarity) == "table" then
								n = tonumber(value311.Rarity.RarityNumber) or 999
								func212(value311.Rarity.DisplayName or value311.Rarity.Name or value311.Rarity._id, n)
							end
						end

						list57[#list57 + 1] = { name = str97, n = n }
					end

					table.sort(list57, function(param130, param131)
						if param130.n ~= param131.n then
							return param130.n < param131.n
						end
						return param130.name < param131.name
					end)

					for _, item28 in ipairs(list57) do
						list55[#list55 + 1] = item28.name
					end
				end

				pcall(function()
					for _, item29 in ipairs(tbl208) do
						if type(item29) == "table" then
							if item29.AreaId then
								list55[#list55 + 1] = tostring(item29.AreaId)
							end

							local assetCategory = item29.AssetCategory
							local value312

							if directory and assetCategory then
								value312 = directory[assetCategory]
							else
								value312 = nil
							end

							if type(value312) == "table" and type(value312.Rarity) == "table" then
								func212(value312.Rarity.DisplayName or value312.Rarity.Name or value312.Rarity._id, value312.Rarity.RarityNumber)
							end
						end
					end
				end)

				if type(directory) == "table" then
					for _, value313 in pairs(directory) do
						if type(value313) == "table" and type(value313.Rarity) == "table" then
							func212(value313.Rarity.DisplayName or value313.Rarity.Name or value313.Rarity._id, value313.Rarity.RarityNumber)
						end
					end
				end

				table.sort(list56, function(param132, param133)
					if param132.n ~= param133.n then
						return param132.n < param133.n
					end
					return param132.name < param133.name
				end)

				local list58 = {}

				for _, item30 in ipairs(list56) do
					list58[#list58 + 1] = item30.name
				end

				local list59 = {}

				if type(directory) == "table" then
					for _, value314 in pairs(directory) do
						if type(value314) == "table" then
							if type(value314.Mutations) == "table" then
								for _, mutation in pairs(value314.Mutations) do
									if type(mutation) == "string" then
										list59[#list59 + 1] = mutation
									end
								end
							end

							if type(value314.Mutation) == "string" then
								list59[#list59 + 1] = value314.Mutation
							end
						end
					end
				end

				pcall(function()
					for _, item31 in ipairs(tbl208) do
						if type(item31) == "table" and type(item31.Mutations) == "table" then
							for _, mutation in ipairs(item31.Mutations) do
								list59[#list59 + 1] = tostring(mutation)
							end
						end
					end
				end)

				local list60 = func208(list1, list55)
				local list61 = func208(tbl6, list58)
				local list62 = func208(tbl7, list59)

				local tbl212 = {
					common = 1,
					uncommon = 2,
					rare = 3,
					epic = 4,
					legendary = 5,
					mythic = 6,
					cosmic = 7,
					secret = 8,
					eternal = 9,
					divine = 10,
					titan = 11,
				}

				local tbl213 = {}

				for i = 1, #list56 do
					local entry34 = list56[i]

					if entry34 and entry34.name then
						tbl213[string.lower(entry34.name)] = tonumber(entry34.n) or 999
					end
				end

				table.sort(tbl6, function(param134, param135)
					local lower = string.lower
					local str98 = tostring(param134)
					local value315 = lower(str98)
					local lower2 = string.lower
					local str99 = tostring(param135)
					local value316 = lower2(str99)
					local n = tbl212[value315]

					if not n then
						n = 100 + (tbl213[value315] or 999)
					end

					local n9 = tbl212[value316]

					if not n9 then
						n9 = 100 + (tbl213[value316] or 999)
					end

					if n ~= n9 then
						return n < n9
					end
					return tostring(param134) < tostring(param135)
				end)

				if #list60 > 0 then
					local n = #list1
					func82("modules", "new zones", table.concat(list60, ", "), "·", n, "total")
				end

				if #list61 > 0 then
					func82("modules", "new rarities", table.concat(list61, ", "))
				end

				if #list62 > 0 then
					func82("modules", "new mutations", table.concat(list62, ", "))
				end

				pcall(function()
					local list63 = {}
					local list64 = {}
					local list65 = {}

					if not value310.adopted then
						value310.adopted = true

						for _, item32 in ipairs(list1) do
							if not value310.a[item32] then
								list63[#list63 + 1] = item32
							end
						end

						for _, item33 in ipairs(tbl6) do
							if not value310.r[item33] then
								list64[#list64 + 1] = item33
							end
						end

						for _, item34 in ipairs(tbl7) do
							if not value310.m[item34] then
								list65[#list65 + 1] = item34
							end
						end
					else
						list65 = list62
						list63 = list60
						list64 = list61
					end

					pcall(func210, "Areas", list63)
					pcall(func210, "Rarities", list64)
					pcall(func210, "Mutations", list65)
					pcall(func211, "HookRarityFloor", { "Any" }, tbl6)
					pcall(func211, "NeverPlaceRarity", { "place everything" }, tbl6)

					for _, item35 in ipairs({ "Areas", "Rarities", "Mutations" }) do
						local entry35 = tbl10[item35]

						if entry35 and entry35.refresh then
							pcall(entry35.refresh)
						end
					end
				end)
			end

			func139 = function(I)local z,n=I.BottomCFrame;if z==nil then n=nil;else local V=4;local x,H=pcall(function()if typeof(z)=="Vector3"then return V and z+Vector3.new(0,V,0)or z;end;if V then return z.Position+Vector3.new(0,V,0);end;return z.Position;end);n=if not x then nil else H;end;if not n then local z=I.BoundsCFrame;if z==nil then n=nil;else local V=0;local x,H=pcall(function()if typeof(z)=="Vector3"then return V and z+Vector3.new(0,V,0)or z;end;if V then return z.Position+Vector3.new(0,V,0);end;return z.Position;end);n=if not x then nil else H;end;if not n then local z=I.CFrame;if z==nil then n=nil;else local V=0;local x,H=pcall(function()if typeof(z)=="Vector3"then return V and z+Vector3.new(0,V,0)or z;end;if V then return z.Position+Vector3.new(0,V,0);end;return z.Position;end);n=if not x then nil else H;end;if not n then local z=I.WorldCFrame;if z==nil then n=nil;else local V=0;local x,H=pcall(function()if typeof(z)=="Vector3"then return V and z+Vector3.new(0,V,0)or z;end;if V then return z.Position+Vector3.new(0,V,0);end;return z.Position;end);n=if not x then nil else H;end;if not n then local z=I.PivotCFrame;if z==nil then n=nil;else local V=0;local x,H=pcall(function()if typeof(z)=="Vector3"then return V and z+Vector3.new(0,V,0)or z;end;if V then return z.Position+Vector3.new(0,V,0);end;return z.Position;end);n=if not x then nil else H;end;if not n then local z=I.Position;if z==nil then return nil;end;local I=4;local V,x=pcall(function()if typeof(z)=="Vector3"then return I and z+Vector3.new(0,I,0)or z;end;if I then return z.Position+Vector3.new(0,I,0);end;return z.Position;end);if V then return x;end;n=nil;end;end;end;end;end;return n;end
			local function func214(...) end
			local function func215(...) end
			local tbl214 = {}
			local function func216(z,n)local V=type(z)=="table"and z.AssetCategory;return type(n)=="table"and type(V)=="string"and V~=""and n[V]~=true and  tbl214 [V]~=true;end
			local function func217(...) end

			local function func218()
				local value317 = nil

				pcall(function()
					value317 = require(ReplicatedStorage.Client.PlotState).ResolvePlot()
				end)

				if type(value317) == "table" and value317.PlotFolder then
					local plotFolder = value317.PlotFolder
					local centerPoint = value317.CenterPoint
					local respawnPointCFrame = value317.RespawnPointCFrame
					if typeof(respawnPointCFrame) == "CFrame" then
						return respawnPointCFrame.Position + Vector3.new(0, 4, 0), respawnPointCFrame, plotFolder, centerPoint
					end
					local spawnPoint = plotFolder:FindFirstChild("SpawnPoint", true)
					if spawnPoint and spawnPoint:IsA("BasePart") then
						return spawnPoint.Position + Vector3.new(0, 4, 0), spawnPoint.CFrame, plotFolder, centerPoint
					end
					return plotFolder:GetPivot().Position, plotFolder:GetPivot(), plotFolder, centerPoint
				end

				local plots = workspace:FindFirstChild("Plots")
				if not plots then
					return
				end

				for _, child in ipairs(plots:GetChildren()) do
					local flag235 = false

					for _, descendant in ipairs(child:GetDescendants()) do
						if descendant:IsA("TextLabel") and string.find(descendant.Text, localPlayer.Name, 1, true) then
							flag235 = true
							break
						end
					end

					if flag235 then
						local spawnPoint = child:FindFirstChild("SpawnPoint", true)
						local centerPoint = child:FindFirstChild("CenterPoint", true)
						if spawnPoint and spawnPoint:IsA("BasePart") then
							return spawnPoint.Position + Vector3.new(0, 4, 0), spawnPoint.CFrame, child, centerPoint
						end
						return child:GetPivot().Position, child:GetPivot(), child, centerPoint
					end
				end

				if flag96 and type(flag96.ReadOwnedEggs) == "function" then
					local ok, result = pcall(flag96.ReadOwnedEggs)

					if ok and type(result) == "table" then
						for k, value318 in pairs(result) do
							local flag236 = type(value318) ~= "table"

							if not flag236 then
								local userId = localPlayer.UserId
								flag236 = tonumber(value318.OwnerUserId) ~= userId
							end

							if flag236 then
								continue
							end
							local findFirstChild = plots.FindFirstChild
							local str100 = tostring(k)
							local obj23 = findFirstChild(plots, str100)

							if obj23 then
								local spawnPoint = obj23:FindFirstChild("SpawnPoint", true)
								local centerPoint = obj23:FindFirstChild("CenterPoint", true)
								if spawnPoint and spawnPoint:IsA("BasePart") then
									return spawnPoint.Position + Vector3.new(0, 4, 0), spawnPoint.CFrame, obj23, centerPoint
								end
								return obj23:GetPivot().Position, obj23:GetPivot(), obj23, centerPoint
							end
						end
					end
				end
			end

			func140 = function(...) end

			local function func219(num13)
				if typeof(num13) ~= "Vector3" then
					num13 = Vector3.zero
				end

				local value319 = nil
				local value320 = nil

				local function func220(part)
					if not part or not part:IsA("BasePart") then
						return
					end
					local lowered4 = string.lower(part.Name)
					local parent = part.Parent and string.lower(part.Parent.Name) or ""
					local pos = lowered4:find("treadmill", 1, true) or lowered4:find("belt", 1, true) or parent:find("treadmill", 1, true) or parent:find("belt", 1, true)
					if not pos and lowered4 ~= "bottom" then
						return
					end

					if lowered4 == "bottom" and not pos then
						return
					end
					local magnitude = (part.Position - num13).Magnitude

					if not value320 or magnitude < value320 then
						value319 = part
						value320 = magnitude
					end
				end

				pcall(function()
					local value321, value322, obj24 = func218()

					if obj24 then
						func220(obj24:FindFirstChild("TreadmillBottom", true))

						for _, descendant in ipairs(obj24:GetDescendants()) do
							if descendant:IsA("BasePart") then
								func220(descendant)
							end
						end
					end
				end)

				local num14 = select(1, func218())
				local clientTreadmillRenders = workspace:FindFirstChild("__ClientTreadmillRenders")

				if clientTreadmillRenders then
					for _, descendant in ipairs(clientTreadmillRenders:GetDescendants()) do
						if descendant:IsA("BasePart") and typeof(num14) == "Vector3" and (descendant.Position - num14).Magnitude < 90 then
							func220(descendant)
						end
					end
				end

				return value319
			end

			str37 = {
				state = "Idle",
				since = 0,
				target = nil,
				hookSnap = nil,
				carrying = false,
				carryUid = nil,
				heldUid = nil,
				countedUid = nil,
				banked = 0,
				lost = 0,
				regrabs = 0,
				lastGrab = 0,
				lastBankTry = 0,
				lastBankAt = 0,
				lastErrAt = 0,
				lockUid = nil,
				lockPos = nil,
				lockAt = 0,
				haltUntil = 0,
				running = false,
				conn = nil,
				pendingCarry = nil,
				lastPos = nil,
				stillFor = 0,
				bat = nil,
				fed = 0,
				chests = 0,
				eventUid = nil,
				eventFromField = false,
				lastFeed = 0,
				lastChestTake = 0,
				feedLockUntil = 0,
				feedWasWait = false,
				eventSkip = {},
				baitWanted = nil,
				baitUid = nil,
				baitJumped = false,
				baitJumpedAt = 0,
				baitClaimAt = 0,
				baitRejected = false,
				baitStrikeSent = false,
				baitStrikeAt = 0,
				baitStrikeServerAt = 0,
				baitLanding = nil,
				baitPinFrames = 0,
				baitReleaseTried = false,
				baitReleaseAttempts = 0,
				baitReleaseNextAt = 0,
				baitReleaseAllowed = false,
				baitSettleUntil = 0,
				baitDropSeenAt = 0,
				baitDeadline = 0,
				baitAnchorPart = nil,
				baitWasAnchored = false,
				baitRetryWanted = nil,
				baitRetryAt = 0,
				baitRetryCount = 0,
				baitNextArea = "Forest",
				baitFallbackUid = nil,
				baitSelectedArea = "Forest",
				baitArea = nil,
				baitKnockSeen = false,
				bestRetargetAt = 0,
				wallUp = function(...) end,
			}

			local function func221()
				local n9 = 17
				local str101 = "IsBat"
				local value323 = nil

				pcall(function()
					local value324 = func102({ "Modules", "BatController", "Config" })

					if type(value324) == "table" then
						n9 = (tonumber(value324.Range) or 15) + (tonumber(value324.HitTolerance) or 2)

						if type(value324.GetHitboxScalar) == "function" then
							local ok, result = pcall(value324.GetHitboxScalar)

							if ok and type(result) == "number" and result > 0 then
								n9 *= result
							end
						end
					end
				end)

				pcall(function()
					local Sakura = require(ReplicatedStorage.Data.Sakura)

					if type(Sakura) == "table" and type(Sakura.BatToolAttribute) == "string" then
						str101 = Sakura.BatToolAttribute
					end
				end)

				local function func222(I)local z=I and I.Character;if not z then return;end;local I,n=z:FindFirstChild("HumanoidRootPart"),z:FindFirstChildOfClass("Humanoid");if I and n and n.Health>0 then return I,n,z;end;end
				local function func223(...) end

				local function setLive2(param136)
					if param136 then
						if not value323 then
							local connection3 = RunService.Heartbeat:Connect(function(...) end)

							if connection3 then
								tbl146[connection3] = true
							end

							value323 = connection3
							return
						end
					elseif value323 then
						value323:Disconnect()
						value323 = nil
					end
				end

				return {
					range = function()
						return n9
					end,
					swingAt = function(...) end,
					posOf = function(param137)
						local playerByUserId = type(param137) == "number" and Players:GetPlayerByUserId(param137)
						local flag237 = playerByUserId and select(1, func222(playerByUserId))
						return flag237 and flag237.Position, playerByUserId
					end,
					setLive = setLive2,
					stop = function()
						setLive2(false)
					end,
				}
			end

			str37.bat = func221()

			local function func224()
				local tbl215 = {
					folder = nil,
					beamObj = nil,
					pool = {},
					uidPart = {},
					plotAt = 0,
					plotList = {},
					optSaved = nil,
					lastTick = 0,
					iconBy = {},
					iconScanAt = 0,
					sessionAt = os.clock(),
				}

				local function func225(I)local z=tonumber(I)or 0;I=math.abs(z);if I>=1000000000000 then return string.format("%.2fT",z/1000000000000);end;if I>=1000000000 then return string.format("%.2fB",z/1000000000);end;if I>=1000000 then return string.format("%.2fm",z/1000000);end;if I>=1000 then return string.format("%.1fk",z/1000);end;if I>=10 then return string.format("%.0f",z);end;return string.format("%.1f",z);end

				pcall(function()
					local FormatAbbreviated = require(ReplicatedStorage.UserGenerated.Strings.FormatAbbreviated)

					if type(FormatAbbreviated) == "function" then
						func225 = function(z)local n=tonumber(z)or 0;local z,V=pcall( FormatAbbreviated ,n);if z and type(V)=="string"and V~=""then return V;end;if math.abs(n)>=1000000 then return string.format("%.2fm",n/1000000);end;return string.format("%.0f",n);end
					end
				end)

				local function createFolder()
					local cokeboysEsp = workspace:FindFirstChild("CokeboysEsp")
					if cokeboysEsp and cokeboysEsp:IsA("Folder") then
						tbl215.folder = cokeboysEsp
						return cokeboysEsp
					end

					if tbl215.folder and tbl215.folder.Parent == workspace then
						return tbl215.folder
					end

					if tbl215.folder then
						pcall(function()
							tbl215.folder:Destroy()
						end)
					end

					local folder = Instance.new("Folder")
					folder.Name = "CokeboysEsp"
					folder.Parent = workspace
					tbl215.folder = folder
					return folder
				end

				local function createScreenGui()
					local parent = obj1.Parent
					local playerGui = localPlayer:FindFirstChild("PlayerGui")

					if playerGui then
						local cokeboysWorldGui = playerGui:FindFirstChild(name) or playerGui:FindFirstChild("CokeboysWorldGui")

						if cokeboysWorldGui and cokeboysWorldGui ~= tbl215.world then
							pcall(function()
								cokeboysWorldGui:Destroy()
							end)
						end
					end

					parent = parent or playerGui or obj1
					local world = tbl215.world

					if not world or not world.Parent or not world:IsA("ScreenGui") then
						world = parent:FindFirstChild(name)
					end

					if world and world:IsA("ScreenGui") then
						if parent ~= world.Parent and parent then
							world.Parent = parent
						end

						world.Enabled = true
						world.ResetOnSpawn = false
						tbl215.world = world
						return world
					end

					local screenGui = Instance.new("ScreenGui")
					screenGui.Name = name
					screenGui.ResetOnSpawn = false
					screenGui.IgnoreGuiInset = true
					screenGui.DisplayOrder = 80
					screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
					screenGui.Parent = parent
					tbl215.world = screenGui
					return screenGui
				end

				local value325 = nil

				value325 = function(instance7)
					if instance7 == nil then
						return
					end
					local kind = typeof(instance7)

					if kind == "number" then
						if instance7 > 100 then
							return "rbxassetid://" .. tostring(math.floor(instance7))
						end
						return
					end

					if kind == "string" then
						if instance7 == "" or instance7 == "0" or instance7 == "rbxassetid://0" then
							return
						end

						if string.find(instance7, "http", 1, true) or string.find(instance7, "rbxasset", 1, true) or string.find(instance7, "rbxthumb", 1, true) then
							return instance7
						end
						local num15 = tonumber(instance7)
						if num15 and num15 > 100 then
							return "rbxassetid://" .. tostring(math.floor(num15))
						end
						return
					end

					if kind == "Instance" then
						if instance7:IsA("ImageLabel") or instance7:IsA("ImageButton") then
							return value325(instance7.Image)
						end

						if instance7:IsA("Decal") or instance7:IsA("Texture") then
							return value325(instance7.Texture)
						end
						local imageLabel = instance7:FindFirstChildWhichIsA("ImageLabel", true) or instance7:FindFirstChildWhichIsA("ImageButton", true) or instance7:FindFirstChildWhichIsA("Decal", true)
						if imageLabel then
							return value325(imageLabel)
						end
						return
					end

					if kind == "table" then
						return value325(instance7.Image) or value325(instance7.ImageId) or value325(instance7.Icon) or value325(instance7.Id)
					end
				end

				local function func226(...) end

				local function func227()
					local tbl216 = {}
					if type(directory) ~= "table" then
						return tbl216
					end

					for k, value326 in pairs(directory) do
						local str102 = tostring(k)
						tbl216[string.lower(str102)] = str102

						if type(value326) == "table" then
							if value326.DisplayName then
								local lower = string.lower
								local displayName3 = tostring(value326.DisplayName)
								tbl216[lower(displayName3)] = str102
							end

							if value326._id then
								local lower = string.lower
								local str103 = tostring(value326._id)
								tbl216[lower(str103)] = str102
							end

							if type(value326.Egg) == "table" and value326.Egg.DisplayName then
								local lower = string.lower
								local displayName4 = tostring(value326.Egg.DisplayName)
								tbl216[lower(displayName4)] = str102
							end
						end
					end

					return tbl216
				end

				local function func228(obj25, flag238)
					if not obj25 then
						return
					end

					local ok, result = pcall(function()
						return obj25:GetDescendants()
					end)

					if not ok or type(result) ~= "table" then
						return
					end
					local n = 0

					for i = 1, #result do
						n += 1
						if flag238 < n then
							return
						end
						local entry36 = result[i]
						local flag239 = false

						pcall(function()
							flag239 = entry36:IsA("ImageLabel") or entry36:IsA("ImageButton")
						end)

						if flag239 then
							local value327 = value325(entry36)

							if value327 then
								local name2 = entry36.Name

								if type(name2) == "string" and name2 ~= "" and value327 then
									local lowered5 = string.lower(name2)
									tbl215.iconBy[lowered5] = value327
									local flag240 = lowered5:gsub("[%s_%-]+", "")

									if flag240 ~= lowered5 then
										tbl215.iconBy[flag240] = value327
									end
								end

								if entry36.Parent then
									local name3 = entry36.Parent.Name

									if type(name3) == "string" and name3 ~= "" and value327 then
										local lowered6 = string.lower(name3)
										tbl215.iconBy[lowered6] = value327
										local flag241 = lowered6:gsub("[%s_%-]+", "")

										if flag241 ~= lowered6 then
											tbl215.iconBy[flag241] = value327
										end
									end
								end

								pcall(function()
									local attribute = entry36:GetAttribute("AssetCategory")
									local value328 = value327
									local flag242 = type(attribute) == "string"

									if flag242 then
										flag242 = attribute ~= ""
										flag242 = flag242 and value327
									end

									if flag242 then
										local lowered7 = string.lower(attribute)
										tbl215.iconBy[lowered7] = value328
										local flag243 = lowered7:gsub("[%s_%-]+", "")

										if flag243 ~= lowered7 then
											tbl215.iconBy[flag243] = value328
										end
									end

									local attribute2 = entry36:GetAttribute("Id")
									local value329 = value327

									if type(attribute2) == "string" and attribute2 ~= "" and value327 then
										local lowered8 = string.lower(attribute2)
										tbl215.iconBy[lowered8] = value329
										local flag244 = lowered8:gsub("[%s_%-]+", "")

										if flag244 ~= lowered8 then
											tbl215.iconBy[flag244] = value329
										end
									end

									if entry36.Parent then
										local attribute3 = entry36.Parent:GetAttribute("AssetCategory")
										local flag245 = value327

										if type(attribute3) == "string" and attribute3 ~= "" then
											if not flag245 then
												return
											end
											local lowered9 = string.lower(attribute3)
											tbl215.iconBy[lowered9] = flag245
											local flag246 = lowered9:gsub("[%s_%-]+", "")

											if flag246 ~= lowered9 then
												tbl215.iconBy[flag246] = flag245
											end
										end
									end
								end)
							end
						end
					end
				end

				local function func229(obj26, tbl217, flag247)
					if not obj26 or not tbl217 then
						return
					end

					local ok, result = pcall(function()
						return obj26:GetDescendants()
					end)

					if not ok or type(result) ~= "table" then
						return
					end
					local n = 0

					for i = 1, #result do
						n += 1
						if flag247 < n then
							return
						end
						local entry37 = result[i]
						local flag248 = false

						pcall(function()
							flag248 = entry37:IsA("TextLabel") or entry37:IsA("TextButton")
						end)

						if flag248 then
							local text = entry37.Text

							if type(text) == "string" and text ~= "" then
								local entry38 = tbl217[string.lower(text)]

								if entry38 then
									local parent = entry37.Parent

									if parent then
										local descendants = parent:GetDescendants()

										for i2 = 1, #descendants do
											local entry39 = descendants[i2]
											local flag249 = false

											pcall(function()
												flag249 = entry39:IsA("ImageLabel") or entry39:IsA("ImageButton")
											end)

											if flag249 then
												local value330 = value325(entry39)

												if value330 then
													if type(entry38) == "string" and entry38 ~= "" and value330 then
														local lowered10 = string.lower(entry38)
														tbl215.iconBy[lowered10] = value330
														local flag250 = lowered10:gsub("[%s_%-]+", "")

														if flag250 ~= lowered10 then
															tbl215.iconBy[flag250] = value330
														end
													end

													if type(text) == "string" and text ~= "" and value330 then
														local lowered11 = string.lower(text)
														tbl215.iconBy[lowered11] = value330
														local flag251 = lowered11:gsub("[%s_%-]+", "")

														if flag251 ~= lowered11 then
															tbl215.iconBy[flag251] = value330
														end
													end

													break
												else
												end
											else
											end
										end
									end
								end
							end
						end
					end
				end

				local function func230(flag252)
					local lower = string.lower
					local str104 = tostring(flag252 or "")
					local value331 = lower(str104)
					local foundAt = string.find(value331, "index", 1, true)
					local value332

					if foundAt then
						value332 = foundAt
					else
						local foundAt2 = string.find(value331, "bestiary", 1, true)

						if foundAt2 then
							value332 = foundAt2
						else
							value332 = string.find(value331, "collection", 1, true) or string.find(value331, "pedia", 1, true)
						end
					end

					return value332
				end

				local function scanIcons2(flag253)
					local now2 = os.clock()
					local flag254 = not flag253

					if flag254 then
						flag254 = now2 - (tbl215.iconScanAt or 0) < 8
					end

					if flag254 then
						return
					end
					tbl215.iconScanAt = now2

					if type(directory) == "table" then
						for k, value333 in pairs(directory) do
							func226(k, value333)
						end
					end

					local result30 = func227()
					local assets = ReplicatedStorage:FindFirstChild("Assets")
					pcall(func228, assets and assets:FindFirstChild("UI"), 6000)
					pcall(func228, ReplicatedStorage:FindFirstChild("Directory"), 8000)
					pcall(func228, ReplicatedStorage:FindFirstChild("Data"), 4000)

					local function func231(instance8)
						if not instance8 then
							return
						end

						for _, child in ipairs(instance8:GetChildren()) do
							if child ~= obj1 and func230(child.Name) then
								pcall(func228, child, 8000)
								pcall(func229, child, result30, 8000)
							end
						end
					end

					func231(localPlayer:FindFirstChild("PlayerGui"))
					pcall(func231, game:GetService("StarterGui"))
				end

				local function func232(I,z)local n,V={},{};local function x(H)if type(H)~="string"or H==""then return;end;local q=string.lower(H);if q~=""and not V[q]then V[q]=true;n[#n+1]=q;end;H=q:gsub("[%s_%-]+","");if H~=""and not V[H]then V[H]=true;n[#n+1]=H;end;H=q:gsub("[%s%-]+","_");if H~=""and not V[H]then V[H]=true;n[#n+1]=H;end;end;x(z);if type(I)=="table"then x(I.DisplayName);x(I._id);if type(I.Egg)=="table"then x(I.Egg.DisplayName);end;end;return n;end

				local function func233()
					local billboardGui = Instance.new("BillboardGui")
					billboardGui.AlwaysOnTop = true
					billboardGui.LightInfluence = 0
					billboardGui.MaxDistance = 1000000
					billboardGui.Size = UDim2.fromOffset(178, 44)
					billboardGui.StudsOffset = Vector3.new(0, 2.7, 0)
					billboardGui.ResetOnSpawn = false
					billboardGui.Active = false
					billboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
					billboardGui.Parent = createScreenGui()

					local tbl218 = {
						BackgroundColor3 = tbl4.card,
						BackgroundTransparency = 0.28,
						BorderSizePixel = 0,
						Size = UDim2.fromScale(1, 1),
						ClipsDescendants = true,
						ZIndex = 1,
						Active = false,
					}

					local frame = Instance.new("Frame")

					for k, value334 in pairs(tbl218) do
						frame[k] = value334
					end

					if billboardGui then
						frame.Parent = billboardGui
					end

					local tbl219 = { CornerRadius = UDim.new(0, 5) }
					local uiCorner = Instance.new("UICorner")

					for k, value335 in pairs(tbl219) do
						uiCorner[k] = value335
					end

					if frame then
						uiCorner.Parent = frame
					end

					local tbl220 = {
						Color = tbl4.line,
						Transparency = 0.08,
						Thickness = 1,
						ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					}

					local uiStroke = Instance.new("UIStroke")

					for k, value336 in pairs(tbl220) do
						uiStroke[k] = value336
					end

					if frame then
						uiStroke.Parent = frame
					end

					local tbl221 = {
						BackgroundColor3 = tbl4.accent,
						BorderSizePixel = 0,
						Size = UDim2.new(0, 3, 1, 0),
						Position = UDim2.fromOffset(0, 0),
						ZIndex = 2,
						Active = false,
					}

					local frame2 = Instance.new("Frame")

					for k, value337 in pairs(tbl221) do
						frame2[k] = value337
					end

					if frame then
						frame2.Parent = frame
					end

					local tbl222 = { CornerRadius = UDim.new(0, 1) }
					local uiCorner2 = Instance.new("UICorner")

					for k, value338 in pairs(tbl222) do
						uiCorner2[k] = value338
					end

					if frame2 then
						uiCorner2.Parent = frame2
					end

					local tbl223 = {
						BackgroundColor3 = tbl4.fill,
						BackgroundTransparency = 1,
						Position = UDim2.fromOffset(8, 7),
						Size = UDim2.fromOffset(30, 30),
						Image = "",
						ScaleType = Enum.ScaleType.Fit,
						Visible = false,
						ZIndex = 2,
						Active = false,
					}

					local imageLabel = Instance.new("ImageLabel")

					for k, value339 in pairs(tbl223) do
						imageLabel[k] = value339
					end

					if frame then
						imageLabel.Parent = frame
					end

					local tbl224 = { CornerRadius = UDim.new(0, 5) }
					local uiCorner3 = Instance.new("UICorner")

					for k, value340 in pairs(tbl224) do
						uiCorner3[k] = value340
					end

					if imageLabel then
						uiCorner3.Parent = imageLabel
					end

					local tbl225 = {
						BackgroundTransparency = 1,
						Position = UDim2.fromOffset(12, 5),
						Size = UDim2.new(1, -20, 0, 17),
						Font = tbl5.mid,
						Text = "",
						TextColor3 = tbl4.text,
						TextSize = 13,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextTruncate = Enum.TextTruncate.AtEnd,
						ZIndex = 2,
						Active = false,
					}

					local textLabel = Instance.new("TextLabel")

					for k, value341 in pairs(tbl225) do
						textLabel[k] = value341
					end

					if frame then
						textLabel.Parent = frame
					end

					local tbl226 = {
						BackgroundTransparency = 1,
						Position = UDim2.fromOffset(12, 23),
						Size = UDim2.new(1, -20, 0, 15),
						Font = tbl5.mono,
						Text = "",
						TextColor3 = tbl4.accent,
						TextSize = 11,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Top,
						TextWrapped = false,
						TextTruncate = Enum.TextTruncate.AtEnd,
						ZIndex = 2,
						Active = false,
					}

					local textLabel2 = Instance.new("TextLabel")

					for k, value342 in pairs(tbl226) do
						textLabel2[k] = value342
					end

					if frame then
						textLabel2.Parent = frame
					end

					return { bb = billboardGui, card = frame, stroke = uiStroke, accent = frame2, icon = imageLabel, title = textLabel, sub = textLabel2 }
				end

				local function func234()for z,n in pairs( tbl215 .pool)do if not n.alive then if n.bb then n.bb:Destroy();end;if n.dummy then pcall(function()n.dummy:Destroy();end);end; tbl215 .pool[z]=nil;else n.alive=false;end;end;end

				local function func235(param138, param139)
					if type(param138) == "table" then
						local weight3 = tonumber(param138.Weight)

						if not weight3 or not (weight3 > 0) then
							weight3 = nil
						end

						if not weight3 then
							weight3 = tonumber(param138.ModelWeight)

							if not weight3 or not (weight3 > 0) then
								weight3 = nil
							end

							if not weight3 then
								weight3 = tonumber(param138.Kg)

								if not weight3 or not (weight3 > 0) then
									weight3 = nil
								end

								if not weight3 then
									weight3 = tonumber(param138.BaseWeight)

									if not weight3 or not (weight3 > 0) then
										weight3 = nil
									end
								end
							end
						end

						if weight3 then
							return weight3
						end
					end

					if type(param139) == "table" then
						local modelWeight = tonumber(param139.ModelWeight)

						if not modelWeight or not (modelWeight > 0) then
							modelWeight = nil
						end

						if not modelWeight then
							modelWeight = tonumber(param139.Weight)

							if not modelWeight or not (modelWeight > 0) then
								modelWeight = nil
							end

							if not modelWeight then
								modelWeight = tonumber(param139.BaseWeight)

								if not modelWeight or not (modelWeight > 0) then
									modelWeight = nil
								end
							end
						end

						if modelWeight then
							return modelWeight
						end

						if type(param139.Egg) == "table" then
							local modelWeight2 = tonumber(param139.Egg.ModelWeight)

							if not modelWeight2 or not (modelWeight2 > 0) then
								modelWeight2 = nil
							end

							if not modelWeight2 then
								local weight4 = tonumber(param139.Egg.Weight)
								if weight4 and weight4 > 0 then
									return weight4
								end
								modelWeight2 = nil
							end

							return modelWeight2
						end
					end
				end

				local function tick2(...) end

				local tbl227 = {
					ParticleEmitter = true,
					Trail = true,
					Beam = true,
					Fire = true,
					Smoke = true,
					Sparkles = true,
					Highlight = true,
					PointLight = true,
					SpotLight = true,
					SurfaceLight = true,
					Clouds = true,
				}

				local function func236(instance9)
					if instance9 then
						local flag255

						if not instance9 then
							flag255 = true
						elseif obj1 and instance9:IsDescendantOf(obj1) then
							flag255 = true
						elseif tbl215.world and instance9:IsDescendantOf(tbl215.world) then
							flag255 = true
						else
							local name2 = instance9.Name
							flag255 = name2 == "CokeboysSupport" or name2 == "Hub45Support" or name2 == "CokeboysWorldGui" or name2 == name or name2 == str4
						end

						if not flag255 then
							if instance9:IsA("ScreenGui") or instance9:FindFirstAncestorOfClass("ScreenGui") then
								return
							end

							if not tbl227[instance9.ClassName] then
								return
							end

							if not tbl215.optInst then
								tbl215.optInst = {}
							end

							if tbl215.optInst[instance9] == nil then
								local tbl228 = {}

								pcall(function()
									if instance9:IsA("Light") then
										tbl228.Enabled = instance9.Enabled
										tbl228.Brightness = instance9.Brightness
										return
									end

									if instance9:IsA("ParticleEmitter") or instance9:IsA("Trail") or instance9:IsA("Beam") then
										tbl228.Enabled = instance9.Enabled
										if instance9:IsA("ParticleEmitter") then
											tbl228.Rate = instance9.Rate
											return
										end
									else
										tbl228.Enabled = instance9.Enabled
									end
								end)

								tbl215.optInst[instance9] = tbl228
							end

							pcall(function()
								instance9.Enabled = false
								if instance9:IsA("Light") then
									instance9.Brightness = 0
									return
								end

								if instance9:IsA("ParticleEmitter") then
									instance9.Rate = 0
								end
							end)

							return
						end
					end
				end

				local function func237(...) end

				local function func238(flag256)
					if not flag256 then
						if tbl215.statsFrame then
							tbl215.statsFrame.Visible = false
						end

						return
					end

					local result31 = func237()

					if result31 then
						result31.Visible = true
					end
				end

				local function func239(...) end

				local function func240(param140)
					local cfg = param140.cfg
					local displayName = nil

					if type(cfg) == "table" then
						displayName = cfg.DisplayName or type(cfg.Egg) ~= "table" or cfg.Egg.DisplayName
					end

					if not displayName or displayName == "" then
						displayName = param140.cat or "?"
					end

					local str105 = tostring(displayName)
					local cfg2 = param140.cfg
					local str106

					if type(cfg2) == "table" and type(cfg2.Rarity) == "table" then
						local func241 = tostring
						local displayName2 = cfg2.Rarity.DisplayName
						local id

						if displayName2 then
							id = displayName2
						else
							local name2 = cfg2.Rarity.Name

							if name2 then
								id = name2
							else
								id = cfg2.Rarity._id or "?"
							end
						end

						str106 = func241(id)
					else
						str106 = "?"
					end

					local func242 = tonumber
					local value343 = func235(param140.rec, param140.cfg)
					local value344 = func242(value343)
					local str107

					if value344 then
						if not (value344 >= 100) then
							str107 = string.format("%.1fkg", value344)
						else
							str107 = string.format("%.0fkg", value344)
						end
					else
						str107 = nil
					end

					local rec = param140.rec
					local flag257 = type(rec) == "table" and type(rec.Mutations) == "table" and #rec.Mutations > 0
					local str108 = ""

					if flag257 then
						str108 = table.concat(rec.Mutations, " · ")
					end

					local str109 = func225(param140.earn) .. "/s · " .. str106
					local str110

					if str107 then
						str110 = str109 .. " · " .. str107
					else
						str110 = str109
					end

					local str111 = str110 .. " · " .. tostring(param140.kind)
					local str112 = "×" .. tostring(param140.n or 1)

					if (param140.price or 0) > 0 then
						str112 ..= " · $" .. func225(param140.price)
					end

					if str108 ~= "" then
						str112 ..= " · " .. str108
					end

					return str105, str111, str112
				end

				local function func243()
					if tbl215.sellDrag then
						pcall(function()
							tbl215.sellDrag:Disconnect()
						end)

						tbl215.sellDrag = nil
					end

					if tbl215.sellEnd then
						pcall(function()
							tbl215.sellEnd:Disconnect()
						end)

						tbl215.sellEnd = nil
					end

					if tbl215.sellFrame then
						pcall(function()
							tbl215.sellFrame:Destroy()
						end)

						tbl215.sellFrame = nil
					end

					tbl215.sellTips = nil
					tbl215.sellMoved = nil
					tbl215.sellPos = nil
					local sellPreviewPanel = obj1:FindFirstChild("SellPreviewPanel")

					if sellPreviewPanel then
						pcall(function()
							sellPreviewPanel:Destroy()
						end)
					end

					local statsFrame = tbl215.statsFrame

					if statsFrame then
						local sellPreviewPanel2 = statsFrame:FindFirstChild("SellPreviewPanel") or statsFrame:FindFirstChild("SellPreview")

						if sellPreviewPanel2 then
							pcall(function()
								sellPreviewPanel2:Destroy()
							end)
						end
					end
				end

				local function func244(flag258)
					local sellFrame = flag258 or tbl215.sellFrame
					if not sellFrame or not sellFrame.Parent then
						return
					end

					if sellFrame.Parent ~= obj1 then
						sellFrame.Parent = obj1
					end

					sellFrame.AnchorPoint = Vector2.new(0, 0)
					sellFrame.Size = UDim2.fromOffset(248, 348)
					sellFrame.ZIndex = 90
					sellFrame.Visible = true
					if tbl215.sellMoved and tbl215.sellPos then
						sellFrame.Position = tbl215.sellPos
						return
					end
					local statsFrame = tbl215.statsFrame

					if statsFrame and statsFrame.Parent and statsFrame.Visible then
						local absolutePosition = obj1.AbsolutePosition
						local absolutePosition2 = statsFrame.AbsolutePosition
						sellFrame.Position = UDim2.fromOffset(absolutePosition2.X - absolutePosition.X, absolutePosition2.Y - absolutePosition.Y + statsFrame.AbsoluteSize.Y + 8)
						return
					end

					sellFrame.Position = UDim2.fromOffset(16, 258)
				end

				local function func245()
					local sellFrame = tbl215.sellFrame

					if sellFrame then
						sellFrame = tbl215.sellFrame.Parent and tbl215.sellTips and tbl215.sellTips.pets and tbl215.sellTips.eggs
					end

					if sellFrame then
						if not ((tbl215.sellFrame.AbsoluteSize.Y or 0) < 320) then
							func244(tbl215.sellFrame)
							return tbl215.sellFrame
						end
						func243()
					end

					func243()

					local tbl229 = {
						Name = "SellPreviewPanel",
						BackgroundColor3 = tbl4.card,
						BorderSizePixel = 0,
						BackgroundTransparency = 0,
						ClipsDescendants = true,
						Size = UDim2.fromOffset(248, 348),
						ZIndex = 90,
						Active = true,
						Visible = true,
					}

					local value345 = obj1
					local frame = Instance.new("Frame")

					for k, value346 in pairs(tbl229) do
						frame[k] = value346
					end

					if value345 then
						frame.Parent = value345
					end

					local obj27 = frame
					local tbl230 = { CornerRadius = UDim.new(0, 10) }
					local uiCorner = Instance.new("UICorner")

					for k, value347 in pairs(tbl230) do
						uiCorner[k] = value347
					end

					if obj27 then
						uiCorner.Parent = obj27
					end

					local tbl231 = { Color = tbl4.line or tbl4.line, Thickness = 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }
					local uiStroke = Instance.new("UIStroke")

					for k, value348 in pairs(tbl231) do
						uiStroke[k] = value348
					end

					if obj27 then
						uiStroke.Parent = obj27
					end

					uiStroke:SetAttribute("th_stroke", "line")

					if obj27 then
						obj27:SetAttribute("th_bg", "card")
						local card = tbl4.card

						if card and obj27:IsA("GuiObject") then
							obj27.BackgroundColor3 = card
						end
					end

					func244(obj27)

					local tbl232 = {
						BackgroundColor3 = tbl4.rail,
						BorderSizePixel = 0,
						Size = UDim2.new(1, 0, 0, 26),
						Font = tbl5.mid,
						Text = "  Sell preview",
						TextColor3 = tbl4.text,
						TextSize = 12,
						TextXAlignment = Enum.TextXAlignment.Left,
						AutoButtonColor = false,
						ZIndex = 60,
						Active = true,
					}

					local textButton = Instance.new("TextButton")

					for k, value349 in pairs(tbl232) do
						textButton[k] = value349
					end

					if obj27 then
						textButton.Parent = obj27
					end

					local tbl233 = { CornerRadius = UDim.new(0, 10) }
					local uiCorner2 = Instance.new("UICorner")

					for k, value350 in pairs(tbl233) do
						uiCorner2[k] = value350
					end

					if textButton then
						uiCorner2.Parent = textButton
					end

					if textButton then
						textButton:SetAttribute("th_bg", "rail")
						local rail = tbl4.rail

						if rail and textButton:IsA("GuiObject") then
							textButton.BackgroundColor3 = rail
						end
					end

					if textButton then
						textButton:SetAttribute("th_text", "text")
						local text = tbl4.text

						if text then
							textButton.TextColor3 = text
						end
					end

					local tbl234 = {
						BackgroundColor3 = tbl4.rail,
						BorderSizePixel = 0,
						Position = UDim2.new(0, 0, 0, 16),
						Size = UDim2.new(1, 0, 0, 10),
						ZIndex = 60,
						Active = false,
					}

					local frame2 = Instance.new("Frame")

					for k, value351 in pairs(tbl234) do
						frame2[k] = value351
					end

					if textButton then
						frame2.Parent = textButton
					end

					local frame3 = textButton:FindFirstChildOfClass("Frame")

					if frame3 then
						frame3:SetAttribute("th_bg", "rail")
						local rail = tbl4.rail

						if rail and frame3:IsA("GuiObject") then
							frame3.BackgroundColor3 = rail
						end
					end

					local tbl235 = {
						AnchorPoint = Vector2.new(1, 0.5),
						BackgroundColor3 = tbl4.fill,
						Position = UDim2.new(1, -6, 0.5, 0),
						Size = UDim2.fromOffset(20, 20),
						Font = tbl5.mid,
						Text = "×",
						TextColor3 = tbl4.text,
						TextSize = 14,
						AutoButtonColor = false,
						ZIndex = 61,
						Active = true,
					}

					local textButton2 = Instance.new("TextButton")

					for k, value352 in pairs(tbl235) do
						textButton2[k] = value352
					end

					if textButton then
						textButton2.Parent = textButton
					end

					local tbl236 = { CornerRadius = UDim.new(0, 6) }
					local uiCorner3 = Instance.new("UICorner")

					for k, value353 in pairs(tbl236) do
						uiCorner3[k] = value353
					end

					if textButton2 then
						uiCorner3.Parent = textButton2
					end

					local tbl237 = { Color = tbl4.line or tbl4.line, Thickness = 1, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }
					local uiStroke2 = Instance.new("UIStroke")

					for k, value354 in pairs(tbl237) do
						uiStroke2[k] = value354
					end

					if textButton2 then
						uiStroke2.Parent = textButton2
					end

					uiStroke2:SetAttribute("th_stroke", "line")

					if textButton2 then
						textButton2:SetAttribute("th_bg", "fill")
						local fill = tbl4.fill

						if fill and textButton2:IsA("GuiObject") then
							textButton2.BackgroundColor3 = fill
						end
					end

					if textButton2 then
						textButton2:SetAttribute("th_text", "text")
						local text = tbl4.text

						if text then
							textButton2.TextColor3 = text
						end
					end

					func33(textButton2, "fill", "lift")

					textButton2.Activated:Connect(function()
						if tbl215.sellFrame then
							tbl215.sellFrame.Visible = false
						end
					end)

					local tbl238 = {
						BackgroundTransparency = 1,
						Position = UDim2.fromOffset(10, 28),
						Size = UDim2.new(1, -20, 0, 16),
						Font = tbl5.body,
						Text = "",
						TextColor3 = tbl4.dim,
						TextSize = 11,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextTruncate = Enum.TextTruncate.AtEnd,
						ZIndex = 41,
					}

					local textLabel = Instance.new("TextLabel")

					for k, value355 in pairs(tbl238) do
						textLabel[k] = value355
					end

					if obj27 then
						textLabel.Parent = obj27
					end

					if textLabel then
						textLabel:SetAttribute("th_text", "dim")
						local dim = tbl4.dim

						if dim then
							textLabel.TextColor3 = dim
						end
					end

					local tbl239 = {
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.fromOffset(8, 46),
						Size = UDim2.new(1, -16, 1, -102),
						AutomaticCanvasSize = Enum.AutomaticSize.Y,
						CanvasSize = UDim2.new(0, 0, 0, 0),
						ScrollBarThickness = 4,
						ScrollBarImageColor3 = tbl4.line,
						ClipsDescendants = true,
						ZIndex = 41,
					}

					local scrollingFrame = Instance.new("ScrollingFrame")

					if tbl239 then
						for k, value356 in pairs(tbl239) do
							scrollingFrame[k] = value356
						end
					end

					if obj27 then
						scrollingFrame.Parent = obj27
					end

					local value357 = scrollingFrame

					local tbl240 = {
						FillDirection = Enum.FillDirection.Vertical,
						Padding = UDim.new(0, 8),
						SortOrder = Enum.SortOrder.LayoutOrder,
					}

					local uiListLayout = Instance.new("UIListLayout")

					for k, value358 in pairs(tbl240) do
						uiListLayout[k] = value358
					end

					if value357 then
						uiListLayout.Parent = value357
					end

					local function func246(param141, param142)
						local tbl241 = {
							BackgroundTransparency = 1,
							AutomaticSize = Enum.AutomaticSize.Y,
							Size = UDim2.new(1, 0, 0, 0),
							LayoutOrder = param141,
							ZIndex = 42,
						}

						local value359 = value357
						local frame4 = Instance.new("Frame")

						for k, value360 in pairs(tbl241) do
							frame4[k] = value360
						end

						if value359 then
							frame4.Parent = value359
						end

						local tbl242 = {
							FillDirection = Enum.FillDirection.Vertical,
							Padding = UDim.new(0, 6),
							SortOrder = Enum.SortOrder.LayoutOrder,
						}

						local uiListLayout2 = Instance.new("UIListLayout")

						for k, value361 in pairs(tbl242) do
							uiListLayout2[k] = value361
						end

						if frame4 then
							uiListLayout2.Parent = frame4
						end

						local tbl243 = {
							BackgroundTransparency = 1,
							Size = UDim2.new(1, 0, 0, 14),
							Font = tbl5.mono,
							Text = param142,
							TextColor3 = tbl4.dim,
							TextSize = 10,
							TextXAlignment = Enum.TextXAlignment.Left,
							LayoutOrder = 1,
							ZIndex = 42,
						}

						local textLabel2 = Instance.new("TextLabel")

						for k, value362 in pairs(tbl243) do
							textLabel2[k] = value362
						end
						--[[ Source Leak (SL) :: discord.gg/x7YbZeezpm ]]

						if frame4 then
							textLabel2.Parent = frame4
						end

						if textLabel2 then
							textLabel2:SetAttribute("th_text", "dim")
							local dim = tbl4.dim

							if dim then
								textLabel2.TextColor3 = dim
							end
						end

						local tbl244 = {
							BackgroundTransparency = 1,
							AutomaticSize = Enum.AutomaticSize.Y,
							Size = UDim2.new(1, 0, 0, 0),
							LayoutOrder = 2,
							ZIndex = 42,
						}

						local frame5 = Instance.new("Frame")

						for k, value363 in pairs(tbl244) do
							frame5[k] = value363
						end

						if frame4 then
							frame5.Parent = frame4
						end

						local obj28 = frame5

						local tbl245 = {
							CellPadding = UDim2.fromOffset(4, 4),
							CellSize = UDim2.fromOffset(40, 40),
							FillDirection = Enum.FillDirection.Horizontal,
							HorizontalAlignment = Enum.HorizontalAlignment.Left,
							SortOrder = Enum.SortOrder.LayoutOrder,
						}

						local uiGridLayout = Instance.new("UIGridLayout")

						for k, value364 in pairs(tbl245) do
							uiGridLayout[k] = value364
						end

						if obj28 then
							uiGridLayout.Parent = obj28
						end

						local uiGridLayout2 = obj28:FindFirstChildOfClass("UIGridLayout")

						local function fit2()
							if not obj28 or not uiGridLayout2 then
								return
							end
							local n = math.max(0, math.ceil(uiGridLayout2.AbsoluteContentSize.Y))
							obj28.AutomaticSize = Enum.AutomaticSize.None
							obj28.Size = UDim2.new(1, 0, 0, n)
						end

						if uiGridLayout2 then
							uiGridLayout2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(fit2)
						end

						return { lab = textLabel2, grid = obj28, title = param142, fit = fit2 }
					end

					local pets = func246(1, "Pets")
					local eggs = func246(2, "Eggs")

					local tbl246 = {
						AnchorPoint = Vector2.new(0, 1),
						BackgroundColor3 = tbl4.card,
						BorderSizePixel = 0,
						Position = UDim2.new(0, 0, 1, 0),
						Size = UDim2.new(1, 0, 0, 56),
						ClipsDescendants = true,
						ZIndex = 50,
					}

					local frame4 = Instance.new("Frame")

					for k, value365 in pairs(tbl246) do
						frame4[k] = value365
					end

					if obj27 then
						frame4.Parent = obj27
					end

					if frame4 then
						frame4:SetAttribute("th_bg", "card")
						local card = tbl4.card

						if card and frame4:IsA("GuiObject") then
							frame4.BackgroundColor3 = card
						end
					end

					local tbl247 = { BackgroundColor3 = tbl4.line, BorderSizePixel = 0, Size = UDim2.new(1, 0, 0, 1), ZIndex = 51 }
					local frame5 = Instance.new("Frame")

					for k, value366 in pairs(tbl247) do
						frame5[k] = value366
					end

					if frame4 then
						frame5.Parent = frame4
					end

					if frame5 then
						frame5:SetAttribute("th_bg", "line")
						local line = tbl4.line

						if line and frame5:IsA("GuiObject") then
							frame5.BackgroundColor3 = line
						end
					end

					local tbl248 = {
						BackgroundTransparency = 1,
						Position = UDim2.fromOffset(0, 1),
						Size = UDim2.new(1, 0, 1, -1),
						ZIndex = 51,
					}

					local frame6 = Instance.new("Frame")

					for k, value367 in pairs(tbl248) do
						frame6[k] = value367
					end

					if frame4 then
						frame6.Parent = frame4
					end

					local tbl249 = {
						PaddingLeft = UDim.new(0, 10),
						PaddingRight = UDim.new(0, 10),
						PaddingTop = UDim.new(0, 6),
						PaddingBottom = UDim.new(0, 6),
					}

					local uiPadding = Instance.new("UIPadding")

					for k, value368 in pairs(tbl249) do
						uiPadding[k] = value368
					end

					if frame6 then
						uiPadding.Parent = frame6
					end

					local tbl250 = {
						FillDirection = Enum.FillDirection.Vertical,
						Padding = UDim.new(0, 2),
						SortOrder = Enum.SortOrder.LayoutOrder,
					}

					local uiListLayout2 = Instance.new("UIListLayout")

					for k, value369 in pairs(tbl250) do
						uiListLayout2[k] = value369
					end

					if frame6 then
						uiListLayout2.Parent = frame6
					end

					local tbl251 = {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 14),
						Font = tbl5.mid,
						Text = "Hover icon to display stats",
						TextColor3 = tbl4.text,
						TextSize = 12,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextTruncate = Enum.TextTruncate.AtEnd,
						LayoutOrder = 1,
						ZIndex = 52,
					}

					local textLabel2 = Instance.new("TextLabel")

					for k, value370 in pairs(tbl251) do
						textLabel2[k] = value370
					end

					if frame6 then
						textLabel2.Parent = frame6
					end

					if textLabel2 then
						textLabel2:SetAttribute("th_text", "text")
						local text = tbl4.text

						if text then
							textLabel2.TextColor3 = text
						end
					end

					local tbl252 = {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 13),
						Font = tbl5.mono,
						Text = "",
						TextColor3 = tbl4.dim,
						TextSize = 11,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextTruncate = Enum.TextTruncate.AtEnd,
						LayoutOrder = 2,
						ZIndex = 52,
					}

					local textLabel3 = Instance.new("TextLabel")

					for k, value371 in pairs(tbl252) do
						textLabel3[k] = value371
					end

					if frame6 then
						textLabel3.Parent = frame6
					end

					if textLabel3 then
						textLabel3:SetAttribute("th_text", "dim")
						local dim = tbl4.dim

						if dim then
							textLabel3.TextColor3 = dim
						end
					end

					local tbl253 = {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 13),
						Font = tbl5.body,
						Text = "",
						TextColor3 = tbl4.mute,
						TextSize = 11,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextTruncate = Enum.TextTruncate.AtEnd,
						LayoutOrder = 3,
						ZIndex = 52,
					}

					local textLabel4 = Instance.new("TextLabel")

					for k, value372 in pairs(tbl253) do
						textLabel4[k] = value372
					end

					if frame6 then
						textLabel4.Parent = frame6
					end

					if textLabel4 then
						textLabel4:SetAttribute("th_text", "mute")
						local mute = tbl4.mute

						if mute then
							textLabel4.TextColor3 = mute
						end
					end

					tbl215.sellTips = { name = textLabel2, a = textLabel3, b = textLabel4, sub = textLabel, pets = pets, eggs = eggs }
					local value373 = nil
					local position3 = nil
					local position4 = nil

					textButton.InputBegan:Connect(function(input)
						local userInputType = input.UserInputType
						if userInputType ~= Enum.UserInputType.MouseButton1 and userInputType ~= Enum.UserInputType.Touch then
							return
						end
						local position5 = input.Position
						local absolutePosition = textButton2.AbsolutePosition
						local absoluteSize2 = textButton2.AbsoluteSize
						if position5.X >= absolutePosition.X and position5.X <= absolutePosition.X + absoluteSize2.X and position5.Y >= absolutePosition.Y and position5.Y <= absolutePosition.Y + absoluteSize2.Y then
							return
						end
						value373 = true
						position3 = input.Position
						position4 = obj27.Position
						tbl215.sellMoved = true
						tbl215.sellPos = position4
					end)

					if not tbl215.sellDrag then
						local value374 = tbl215
						local connection3 = UserInputService.InputChanged:Connect(function(...) end)

						if connection3 then
							tbl146[connection3] = true
						end

						value374.sellDrag = connection3
						local value375 = tbl215

						local connection4 = UserInputService.InputEnded:Connect(function(input)
							local userInputType = input.UserInputType

							if userInputType == Enum.UserInputType.MouseButton1 or userInputType == Enum.UserInputType.Touch then
								value373 = false

								if tbl215.sellFrame then
									tbl215.sellPos = tbl215.sellFrame.Position
								end
							end
						end)

						if connection4 then
							tbl146[connection4] = true
						end

						value375.sellEnd = connection4
					end

					tbl215.sellFrame = obj27
					return obj27
				end

				local function func247(list66, list67, param143)
					for _, child in ipairs(list66.grid:GetChildren()) do
						if child:IsA("GuiObject") then
							child:Destroy()
						end
					end

					if #list67 == 0 then
						list66.lab.Text = list66.title .. " · none"
						return
					end
					local n = 0

					for i = 1, #list67 do
						n += list67[i].n or 1
					end

					list66.lab.Text = list66.title .. " · " .. tostring(n)
					local value376 = nil
					local value377 = nil

					for i = 1, #list67 do
						local entry40 = list67[i]
						local value378, value379, value380 = func240(entry40)

						local tbl254 = {
							BackgroundColor3 = tbl4.fill,
							Text = "",
							AutoButtonColor = false,
							LayoutOrder = i,
							ZIndex = 43,
						}

						local grid = list66.grid
						local textButton = Instance.new("TextButton")

						for k, value381 in pairs(tbl254) do
							textButton[k] = value381
						end

						if grid then
							textButton.Parent = grid
						end

						local tbl255 = { CornerRadius = UDim.new(0, 8) }
						local uiCorner = Instance.new("UICorner")

						for k, value382 in pairs(tbl255) do
							uiCorner[k] = value382
						end

						if textButton then
							uiCorner.Parent = textButton
						end

						if textButton then
							textButton:SetAttribute("th_bg", "fill")
							local fill = tbl4.fill

							if fill and textButton:IsA("GuiObject") then
								textButton.BackgroundColor3 = fill
							end
						end

						createUIStroke(textButton, entry40.kind ~= "egg" and "line" or "accent", 1)
						local cfg = entry40.cfg
						local cat = entry40.cat
						func226(cat, cfg)
						local list68 = func232(cfg, cat)

						for i2 = 1, #list68 do
							value376 = tbl215.iconBy[list68[i2]]

							if value376 then
								value377 = true
							end

							if not value377 then
								continue
							end
							break
						end

						if not value377 then
							value376 = nil
						end

						if value376 then
							local tbl256 = {
								BackgroundTransparency = 1,
								Position = UDim2.fromOffset(4, 4),
								Size = UDim2.fromOffset(32, 32),
								Image = value376,
								ScaleType = Enum.ScaleType.Fit,
								ZIndex = 44,
							}

							local imageLabel = Instance.new("ImageLabel")

							for k, value383 in pairs(tbl256) do
								imageLabel[k] = value383
							end

							if textButton then
								imageLabel.Parent = textButton
							end

							imageLabel.ImageColor3 = Color3.new(1, 1, 1)
						else
							local substr = string.sub(value378, 1, 1)

							if substr == "" then
								substr = "?"
							end

							local tbl257 = {
								BackgroundTransparency = 1,
								Size = UDim2.fromScale(1, 1),
								Font = tbl5.mid,
								Text = string.upper(substr),
								TextColor3 = tbl4.dim,
								TextSize = 14,
								ZIndex = 44,
							}

							local textLabel = Instance.new("TextLabel")

							for k, value384 in pairs(tbl257) do
								textLabel[k] = value384
							end

							if textButton then
								textLabel.Parent = textButton
							end

							if textLabel then
								textLabel:SetAttribute("th_text", "dim")
								local dim = tbl4.dim

								if dim then
									textLabel.TextColor3 = dim
								end
							end
						end

						if (entry40.n or 1) > 1 then
							local tbl258 = {
								AnchorPoint = Vector2.new(1, 1),
								BackgroundColor3 = tbl4.accent,
								Position = UDim2.new(1, 2, 1, 2),
								Size = UDim2.fromOffset(16, 12),
								Font = tbl5.mono,
							}

							local text

							if not (entry40.n > 9) then
								text = tostring(entry40.n)
							else
								text = "9+"
							end

							tbl258.Text = text
							tbl258.TextColor3 = tbl4.ink
							tbl258.TextSize = 8
							tbl258.ZIndex = 45
							local textLabel = Instance.new("TextLabel")

							for k, value385 in pairs(tbl258) do
								textLabel[k] = value385
							end

							if textButton then
								textLabel.Parent = textButton
							end

							local tbl259 = { CornerRadius = UDim.new(0, 4) }
							local uiCorner2 = Instance.new("UICorner")

							for k, value386 in pairs(tbl259) do
								uiCorner2[k] = value386
							end

							if textLabel then
								uiCorner2.Parent = textLabel
							end

							if textLabel then
								textLabel:SetAttribute("th_bg", "accent")
								local accent = tbl4.accent

								if accent and textLabel:IsA("GuiObject") then
									textLabel.BackgroundColor3 = accent
								end
							end

							if textLabel then
								textLabel:SetAttribute("th_text", "ink")
								local ink = tbl4.ink

								if ink then
									textLabel.TextColor3 = ink
								end
							end
						end

						local function func248()
							param143.name.Text = value378
							param143.a.Text = value379
							param143.b.Text = value380
						end

						textButton.MouseEnter:Connect(func248)
						textButton.Activated:Connect(func248)

						textButton.MouseLeave:Connect(function()
							param143.name.Text = UserInputService.TouchEnabled and "Tap an icon to display stats" or "Hover icon to display stats"
							param143.a.Text = ""
							param143.b.Text = ""
						end)

						value377 = false
					end

					if list66.fit then
						pcall(list66.fit)
						task.defer(list66.fit)
					end
				end

				local function func249()
					return tbl9.EggESP == true or tbl9.PlayerESP == true or tbl9.PlotESP == true or tbl9.ESPBeam == true
				end

				local function setLive3()
					if func249() then
						if not tbl215.conn then
							local connection3 = RunService.Stepped:Connect(function(...) end)

							if connection3 then
								tbl146[connection3] = true
							end

							tbl215.conn = connection3
						end
					elseif tbl215.conn then
						local conn = tbl215.conn
						tbl215.conn = nil
						tbl146[conn] = nil
						conn:Disconnect()
						pcall(tick2)
					end

					if tbl9.StatsPanel == true then
						if not tbl215.statsWorker then
							tbl215.statsGeneration = (tbl215.statsGeneration or 0) + 1
							local statsGeneration = tbl215.statsGeneration
							tbl215.statsWorker = statsGeneration

							task.spawn(function()
								while flag98 and tbl9.StatsPanel == true and tbl215.statsWorker == statsGeneration do
									pcall(func239)
									task.wait(0.35)
								end

								if tbl215.statsWorker == statsGeneration then
									tbl215.statsWorker = nil
								end
							end)
						end
					elseif tbl215.statsWorker then
						tbl215.statsGeneration = (tbl215.statsGeneration or 0) + 1
						tbl215.statsWorker = nil
						pcall(func239)
					end
				end

				setLive3()

				task.defer(function()
					pcall(scanIcons2)
				end)

				return {
					fps = function()
						local n = tonumber(tbl9.FPSCap) or 0
						if not setfpscap then
							return
						end
						pcall(setfpscap, n > 0 and n or 0)
					end,
					opt = function(param144)
						local Lighting = game:GetService("Lighting")
						local terrain = workspace:FindFirstChildOfClass("Terrain")

						if param144 then
							if not tbl215.optSaved then
								tbl215.optSaved = {}

								pcall(function()
									tbl215.optSaved.quality = settings().Rendering.QualityLevel
								end)

								pcall(function()
									tbl215.optSaved.savedQuality = UserSettings().GameSettings.SavedQualityLevel
								end)

								pcall(function()
									tbl215.optSaved.meshDetail = settings().Rendering.MeshPartDetailLevel
								end)

								pcall(function()
									tbl215.optSaved.savedGfx = UserSettings().GameSettings.SavedQualityLevel
								end)

								pcall(function()
									tbl215.optSaved.shadows = Lighting.GlobalShadows
									tbl215.optSaved.brightness = Lighting.Brightness
									tbl215.optSaved.envDiff = Lighting.EnvironmentDiffuseScale
									tbl215.optSaved.envSpec = Lighting.EnvironmentSpecularScale
									tbl215.optSaved.fogEnd = Lighting.FogEnd
									tbl215.optSaved.fogStart = Lighting.FogStart
									tbl215.optSaved.clock = Lighting.ClockTime
									tbl215.optSaved.ambient = Lighting.Ambient
									tbl215.optSaved.outdoor = Lighting.OutdoorAmbient
									tbl215.optSaved.exposure = Lighting.ExposureCompensation
								end)

								if terrain then
									pcall(function()
										tbl215.optSaved.waterWave = terrain.WaterWaveSize
										tbl215.optSaved.waterSpeed = terrain.WaterWaveSpeed
										tbl215.optSaved.waterReflect = terrain.WaterReflectance
										tbl215.optSaved.decoration = terrain.Decoration
									end)
								end
							end

							pcall(function()
								local level01 = Enum.QualityLevel.Level01
								settings().Rendering.QualityLevel = level01
							end)

							pcall(function()
								local qualityLevel1 = Enum.SavedQualityLevel.QualityLevel1
								UserSettings().GameSettings.SavedQualityLevel = qualityLevel1
							end)

							pcall(function()
								local level04 = Enum.MeshPartDetailLevel.Level04
								settings().Rendering.MeshPartDetailLevel = level04
							end)

							pcall(function()
								Lighting.GlobalShadows = false
								Lighting.Brightness = 1
								Lighting.EnvironmentDiffuseScale = 0
								Lighting.EnvironmentSpecularScale = 0
								Lighting.FogEnd = 250
								Lighting.FogStart = 0
								Lighting.ExposureCompensation = -0.4
							end)

							if terrain then
								pcall(function()
									terrain.WaterWaveSize = 0
									terrain.WaterWaveSpeed = 0
									terrain.WaterReflectance = 0
									terrain.Decoration = false
								end)
							end

							if not tbl215.optFx then
								tbl215.optFx = {}
							end

							for _, child in ipairs(Lighting:GetChildren()) do
								if child:IsA("PostEffect") or child:IsA("Atmosphere") or child:IsA("Sky") or child:IsA("Clouds") then
									if tbl215.optFx[child] == nil then
										if child:IsA("PostEffect") or child:IsA("Clouds") then
											tbl215.optFx[child] = { Enabled = child.Enabled }
										elseif child:IsA("Atmosphere") then
											tbl215.optFx[child] = { Density = child.Density, Offset = child.Offset, Glare = child.Glare, Haze = child.Haze }
										elseif child:IsA("Sky") then
											tbl215.optFx[child] = { Parent = child.Parent }
										end
									end

									pcall(function()
										if child:IsA("PostEffect") or child:IsA("Clouds") then
											child.Enabled = false
											return
										end

										if child:IsA("Atmosphere") then
											child.Density = 0
											child.Glare = 0
											child.Haze = 0
										end
									end)
								end
							end

							pcall(function()
								for _, descendant in ipairs(workspace:GetDescendants()) do
									func236(descendant)
								end
							end)

							if tbl215.optAdd then
								pcall(function()
									tbl215.optAdd:Disconnect()
								end)

								tbl215.optAdd = nil
							end

							tbl215.optAdd = workspace.DescendantAdded:Connect(function(descendant)
								if tbl9.Optimizer then
									func236(descendant)
								end
							end)

							return
						end

						if tbl215.optSaved then
							if tbl215.optAdd then
								pcall(function()
									tbl215.optAdd:Disconnect()
								end)

								tbl215.optAdd = nil
							end

							pcall(function()
								if tbl215.optSaved.quality then
									local quality = tbl215.optSaved.quality
									settings().Rendering.QualityLevel = quality
								end

								if tbl215.optSaved.savedQuality then
									local savedQuality = tbl215.optSaved.savedQuality
									UserSettings().GameSettings.SavedQualityLevel = savedQuality
								end

								if tbl215.optSaved.meshDetail then
									local meshDetail = tbl215.optSaved.meshDetail
									settings().Rendering.MeshPartDetailLevel = meshDetail
								end

								Lighting.GlobalShadows = tbl215.optSaved.shadows

								if tbl215.optSaved.brightness then
									Lighting.Brightness = tbl215.optSaved.brightness
								end

								if tbl215.optSaved.envDiff then
									Lighting.EnvironmentDiffuseScale = tbl215.optSaved.envDiff
								end

								if tbl215.optSaved.envSpec then
									Lighting.EnvironmentSpecularScale = tbl215.optSaved.envSpec
								end

								if tbl215.optSaved.fogEnd then
									Lighting.FogEnd = tbl215.optSaved.fogEnd
								end

								if tbl215.optSaved.fogStart then
									Lighting.FogStart = tbl215.optSaved.fogStart
								end

								if tbl215.optSaved.exposure then
									Lighting.ExposureCompensation = tbl215.optSaved.exposure
								end

								if terrain then
									if tbl215.optSaved.waterWave ~= nil then
										terrain.WaterWaveSize = tbl215.optSaved.waterWave
									end

									if tbl215.optSaved.waterSpeed ~= nil then
										terrain.WaterWaveSpeed = tbl215.optSaved.waterSpeed
									end

									if tbl215.optSaved.waterReflect ~= nil then
										terrain.WaterReflectance = tbl215.optSaved.waterReflect
									end

									if tbl215.optSaved.decoration ~= nil then
										terrain.Decoration = tbl215.optSaved.decoration
									end
								end

								if tbl215.optFx then
									for k, value387 in pairs(tbl215.optFx) do
										if k.Parent and type(value387) == "table" then
											pcall(function()
												if value387.Enabled ~= nil then
													k.Enabled = value387.Enabled
												end

												if value387.Density then
													k.Density = value387.Density
												end

												if value387.Glare then
													k.Glare = value387.Glare
												end

												if value387.Haze then
													k.Haze = value387.Haze
												end
											end)
										end
									end

									tbl215.optFx = nil
								end

								if tbl215.optInst then
									for k, value388 in pairs(tbl215.optInst) do
										if k.Parent and type(value388) == "table" then
											pcall(function()
												if value388.Enabled ~= nil then
													k.Enabled = value388.Enabled
												end

												if value388.Brightness ~= nil then
													k.Brightness = value388.Brightness
												end

												if value388.Rate ~= nil then
													k.Rate = value388.Rate
												end
											end)
										end
									end

									tbl215.optInst = nil
								end
							end)

							tbl215.optSaved = nil
						end
					end,
					clear = function()
						if tbl215.optAdd then
							pcall(function()
								tbl215.optAdd:Disconnect()
							end)

							tbl215.optAdd = nil
						end

						if tbl215.conn then
							local conn = tbl215.conn
							tbl215.conn = nil
							tbl146[conn] = nil
							conn:Disconnect()
						end

						if tbl215.dieConn then
							local dieConn = tbl215.dieConn
							tbl215.dieConn = nil
							tbl146[dieConn] = nil
							dieConn:Disconnect()
						end

						tbl215.statsGeneration = (tbl215.statsGeneration or 0) + 1
						tbl215.statsWorker = nil

						if tbl215.statsDrag then
							pcall(function()
								tbl215.statsDrag:Disconnect()
							end)

							tbl215.statsDrag = nil
						end

						if tbl215.statsEnd then
							pcall(function()
								tbl215.statsEnd:Disconnect()
							end)

							tbl215.statsEnd = nil
						end

						if tbl215.statsFrame then
							pcall(function()
								tbl215.statsFrame:Destroy()
							end)

							tbl215.statsFrame = nil
							tbl215.statsRows = nil
						end

						func243()

						for _, value389 in pairs(tbl215.pool) do
							if value389.bb then
								value389.bb:Destroy()
							end

							if value389.dummy then
								pcall(function()
									value389.dummy:Destroy()
								end)
							end
						end

						for k in pairs(tbl215.pool) do
							tbl215.pool[k] = nil
						end

						for _, item36 in ipairs({ "att0", "att1", "beamObj", "tip", "folder", "world" }) do
							local entry41 = tbl215[item36]

							if entry41 then
								pcall(function()
									entry41:Destroy()
								end)

								tbl215[item36] = nil
							end
						end
					end,
					tick = tick2,
					setLive = setLive3,
					stats = function(param145)
						func238(param145)
						setLive3()
					end,
					sellPreview = function(flag259, flag260, flag261)
						flag259 = type(flag259) == "table" and flag259 or {}
						flag260 = type(flag260) == "table" and flag260 or {}
						tbl9.StatsPanel = true
						pcall(func238, true)
						pcall(func237)
						setLive3()

						if tbl215.statsFrame then
							tbl215.statsFrame.Visible = true

							pcall(function()
								tbl215.statsFrame.ClipsDescendants = false
							end)
						end

						local ok, result = pcall(func245)
						local sellFrame = ok and result or tbl215.sellFrame

						if not ok then
							local func250 = func82
							local str113 = tostring(result)
							func250("esp", "preview build ERR", str113)
						end

						if not sellFrame or not sellFrame.Parent then
							func82("esp", "preview missing panel")
							return false
						end
						func244(sellFrame)
						sellFrame.Visible = true
						local sellTips = tbl215.sellTips

						if sellTips then
							if sellTips.sub then
								sellTips.sub.Text = tostring(flag261 or "")
							end

							if sellTips.name then
								sellTips.name.Text = UserInputService.TouchEnabled and "Tap an icon to display stats" or "Hover icon to display stats"
							end

							if sellTips.a then
								sellTips.a.Text = ""
							end

							if sellTips.b then
								sellTips.b.Text = ""
							end

							if sellTips.pets then
								pcall(func247, sellTips.pets, flag259, sellTips)
							end

							if sellTips.eggs then
								pcall(func247, sellTips.eggs, flag260, sellTips)
							end
						end

						return true
					end,
					closeSellPreview = function()
						if tbl215.sellFrame then
							tbl215.sellFrame.Visible = false
						end
					end,
					icon = function(param146, param147)
						func226(param147, param146)
						local list69 = func232(param146, param147)

						for i = 1, #list69 do
							local value390 = tbl215.iconBy[list69[i]]
							if value390 then
								return value390
							end
						end
					end,
					liveIcon = function(param148, param149, flag262)
						local list70 = func232(param148, param149)

						if type(flag262) == "string" and flag262 ~= "" then
							if type(flag262) == "string" and flag262 ~= "" then
								local lowered12 = string.lower(flag262)
								list70[#list70 + 1] = lowered12
								list70[#list70 + 1] = lowered12:gsub("[%s_%-]+", "")
							end
						end

						local tbl260 = {}

						for i = 1, #list70 do
							tbl260[list70[i]] = true
						end

						for _, value391 in pairs(tbl215.pool) do
							local image = value391.icon and value391.icon.Image
							if type(image) ~= "string" or image == "" then
								continue
							end
							local lower = string.lower
							local str114 = tostring(value391.title and value391.title.Text or "")
							local obj29 = lower(str114):gsub("^▸%s*", ""):gsub("^>%s*", "")
							local flag263 = obj29:gsub("[%s_%-]+", "")
							if obj29 ~= "" and tbl260[obj29] or flag263 ~= "" and tbl260[flag263] then
								return image
							end
						end

						for i = 1, #list70 do
							local value392 = tbl215.iconBy[list70[i]]
							if value392 then
								return value392
							end
						end
					end,
					scanIcons = scanIcons2,
					bumpPlot = function()
						tbl215.plotAt = 0
					end,
				}
			end

			flag101 = func224()
			local value393 = nil
			local flag264 = false

			local function func251()
				if not flag264 then
					flag264 = true
					local ok, result = pcall(require, ReplicatedStorage.Shared.Util.AreaEggCycle)

					if ok and type(result) == "table" then
						value393 = result
					end
				end

				return value393
			end

			local function func252()
				local serverTimeNow = workspace:GetServerTimeNow()
				local result32 = func251()

				if result32 and type(result32.SecondsUntilReset) == "function" then
					local ok, result = pcall(result32.SecondsUntilReset, serverTimeNow)
					if ok and type(result) == "number" then
						return math.max(0, result)
					end
				end

				local attribute = workspace:GetAttribute("AreaEggCycleDisabledAt")
				local n

				if type(attribute) ~= "number" then
					n = serverTimeNow
				else
					n = math.min(serverTimeNow, attribute)
				end

				local attribute2 = workspace:GetAttribute("AreaEggCycleAnchorAt")
				local attribute3 = workspace:GetAttribute("AreaEggCycleAnchorIndex")

				if type(attribute2) ~= "number" then
					attribute2 = 0
				end

				if type(attribute3) ~= "number" then
					attribute3 = 0
				end

				return math.max(0, attribute2 + (math.max(0, attribute3 + math.floor((n - attribute2) / 300)) + 1) * 300 - n)
			end

			func141 = function()
				local result33 = func251()

				if result33 and type(result33.IsNightPhase) == "function" then
					local ok, result = pcall(result33.IsNightPhase, workspace:GetServerTimeNow())
					if ok and type(result) == "boolean" then
						return result
					end
				end

				local clockTime = game:GetService("Lighting").ClockTime
				return type(clockTime) == "number" and (clockTime >= 18 or clockTime < 6)
			end

			func142 = function()
				return tbl9.NightEggLoop == true and func141()
			end

			local function func253()
				return tbl9.AutoPlaceEggs == true or func142() or tbl9.ShatteredRiftFarm == true
			end

			local function func254()
				return tbl9.AutoHatch == true or func142() or tbl9.ShatteredRiftFarm == true
			end

			local function func255()
				local ok, result = pcall(func252)
				if ok and type(result) == "number" then
					return math.max(0, math.floor(result + 0.5))
				end
				return 0
			end

			local function func256()
				local TeleportService = game:GetService("TeleportService")
				local placeId = game.PlaceId
				local now2 = os.clock()
				local n = 0
				local text = "off"
				local list71 = {}
				local flag265 = false
				local flag266 = false
				local n9 = 0
				local n10 = 0
				local n11 = 0
				local n12 = 10
				local n13 = 0
				local n14 = 0
				local now3 = os.clock()
				local n15 = tonumber(str37 and str37.banked) or 0
				local str115 = "idle"
				local flag267 = false
				local flag268 = false
				local genv = getgenv and getgenv() or _G
				genv.CokeboysHopUsed = type(genv.CokeboysHopUsed) == "table" and genv.CokeboysHopUsed or {}
				genv.CokeboysHopRing = type(genv.CokeboysHopRing) == "table" and genv.CokeboysHopRing or {}
				genv.CokeboysHopCache = type(genv.CokeboysHopCache) == "table" and genv.CokeboysHopCache or {}

				if type(genv.CokeboysHopUntil) == "number" then
					local ok, result = pcall(function()
						local result34 = func252()
						local attribute = workspace:GetAttribute("AreaEggCycleNightSeconds")

						if type(attribute) ~= "number" then
							attribute = 10
						end

						return result34 - math.clamp(attribute, 1, 300)
					end)

					local flag269 = math.abs(((not ok or type(result) ~= "number") and 0 or math.max(0, result)) - genv.CokeboysHopUntil) < 10
				end

				local function func257(text13)
					if type(text13) ~= "string" then
						return 0
					end
					local lowered13 = string.lower(text13:gsub(",", ""):gsub("%s+", ""))
					if lowered13 == "" or lowered13 == "off" or lowered13:find("blank", 1, true) then
						return 0
					end
					return tonumber(lowered13:match("([%d%.]+)")) or 0
				end

				local function func258(flag270)
					if type(flag270) ~= "string" or flag270 == "" then
						return
					end
					local cokeboysHopRing = genv.CokeboysHopRing

					for i = #cokeboysHopRing, 1, -1 do
						if flag270 == cokeboysHopRing[i] then
							table.remove(cokeboysHopRing, i)
						end
					end

					cokeboysHopRing[#cokeboysHopRing + 1] = flag270

					while #cokeboysHopRing > 48 do
						table.remove(cokeboysHopRing, 1)
					end
				end

				local function func259(flag271)
					local str116 = tostring(flag271 or "")
					if str116 == "" or str116 == tostring(game.JobId) then
						return true
					end
					local cokeboysHopRing = genv.CokeboysHopRing
					local value394 = nil
					local value395 = nil

					for i = 1, #cokeboysHopRing do
						if str116 == cokeboysHopRing[i] then
							value394 = true
							value395 = true
						end

						if not value395 then
							continue
						end
						break
					end

					if not value395 then
						value394 = false
					end

					if value394 then
						return true
					end
					local num16 = genv.CokeboysHopUsed[str116]
					if type(num16) ~= "number" then
						return false
					end

					if os.time() - num16 > 2100 then
						genv.CokeboysHopUsed[str116] = nil
						return false
					end
					return true
				end

				local function func260()
					if type(readfile) ~= "function" then
						return
					end
					local ok, result = pcall(readfile, (("Cokeboys" .. "/" .. func21(str3.Game)) .. "/cache") .. "/hop-used.json")
					if not ok or type(result) ~= "string" or result == "" then
						return
					end
					local data = nil
					if not pcall(function()
						data = HttpService:JSONDecode(result)
					end) or type(data) ~= "table" then
						return
					end

					if tonumber(data.place) and tonumber(data.place) ~= placeId then
						return
					end
					local now4 = os.time()

					if type(data.jobs) == "table" then
						for k, job in pairs(data.jobs) do
							local num17 = type(job) == "number" and job or type(job) == "table" and tonumber(job.t)
							local str117 = tostring(k)
							local flag272 = num17 and now4 - num17 <= 2100

							if flag272 then
								flag272 = num17 > (tonumber(genv.CokeboysHopUsed[str117]) or 0)
							end

							if flag272 then
								genv.CokeboysHopUsed[str117] = num17
							end
						end
					end

					if type(data.ring) == "table" then
						local tbl261 = {}
						local cokeboysHopRing = {}

						for i = 1, #data.ring do
							local id = data.ring[i]

							if type(id) == "table" then
								id = id.id
							end

							if type(id) == "string" and id ~= "" and not tbl261[id] then
								tbl261[id] = true
								cokeboysHopRing[#cokeboysHopRing + 1] = id
							end
						end

						for i = 1, #genv.CokeboysHopRing do
							local id = genv.CokeboysHopRing[i]

							if type(id) == "table" then
								id = id.id
							end

							if type(id) == "string" and id ~= "" and not tbl261[id] then
								tbl261[id] = true
								cokeboysHopRing[#cokeboysHopRing + 1] = id
							end
						end

						genv.CokeboysHopRing = cokeboysHopRing

						while #genv.CokeboysHopRing > 48 do
							table.remove(genv.CokeboysHopRing, 1)
						end
					end
				end

				local function func261()
					if type(writefile) ~= "function" then
						return
					end

					if type(makefolder) == "function" then
						pcall(makefolder, "Cokeboys")
					end

					local str118 = "Cokeboys" .. "/" .. func21(str3.Game)

					if type(makefolder) == "function" then
						pcall(makefolder, str118)
					end

					local str119 = ("Cokeboys" .. "/" .. func21(str3.Game)) .. "/cache"

					if type(makefolder) == "function" then
						pcall(makefolder, str119)
					end

					local str120 = ("Cokeboys" .. "/" .. func21(str3.Game)) .. "/configs"

					if type(makefolder) == "function" then
						pcall(makefolder, str120)
					end

					local tbl262 = {}
					local now4 = os.time()

					for k, value396 in pairs(genv.CokeboysHopUsed) do
						if type(value396) == "number" and now4 - value396 <= 2100 then
							local tbl263 = { t = value396, by = cokeboysUnloadUid }
							tbl262[tostring(k)] = tbl263
						end
					end

					local tbl264 = { v = 1, place = placeId, jobs = tbl262, ring = genv.CokeboysHopRing }

					local ok, result = pcall(function()
						return HttpService:JSONEncode(tbl264)
					end)

					if ok and type(result) == "string" then
						pcall(writefile, (("Cokeboys" .. "/" .. func21(str3.Game)) .. "/cache") .. "/hop-used.json", result)
					end
				end

				func260()
				local str121 = tostring(tostring(game.JobId) or "")

				if str121 ~= "" then
					genv.CokeboysHopUsed[str121] = os.time()
					func258(str121)
				end

				func261()

				local function func262(param150, param151)
					local n16 = tonumber(param151) or 2.2
					local request_ = syn and syn.request
					local request_2

					if request_ then
						request_2 = request_
					else
						local value397 = http_request

						if value397 then
							request_2 = value397
						else
							local value398 = request

							if value398 then
								request_2 = value398
							else
								local request_3 = http and http.request

								if request_3 then
									request_2 = request_3
								else
									request_2 = fluxus and fluxus.request
								end
							end
						end
					end

					local value399 = nil
					local value400 = nil
					local value401 = nil

					if request_2 then
						task.spawn(function()
							local ok, result = pcall(request_2, { Url = param150, Method = "GET", Headers = { Accept = "application/json" } })
							value399 = true
							if ok then
								value400 = result
								return
							end
							value401 = result
						end)
					else
						if type(game.HttpGet) ~= "function" then
							return nil, "no http"
						end

						task.spawn(function()
							local ok, result = pcall(game.HttpGet, game, param150)
							value399 = true
							if ok then
								value400 = { StatusCode = 200, Body = result }
								return
							end
							value401 = result
						end)
					end

					local now4 = os.clock()

					while not value399 and n16 > os.clock() - now4 do
						task.wait(0.05)
					end

					if not value399 then
						return nil, "slow"
					end

					if value401 then
						return nil, (tostring(value401))
					end
					local flag273

					if value400 then
						flag273 = tonumber(value400.StatusCode or value400.status_code or value400.Status)
					else
						flag273 = value400
					end

					local body = value400 and (value400.Body or value400.body)

					if flag273 == 429 then
						local value402 = n12
						local headers = value400 and (value400.Headers or value400.headers)
						local n17

						if type(headers) == "table" then
							local num18 = tonumber(headers["Retry-After"] or headers["retry-after"] or headers["Retry-after"])

							if num18 and num18 > 0 then
								n17 = math.max(value402, num18)
							else
								n17 = value402
							end
						else
							n17 = value402
						end

						n11 = os.clock() + n17
						n12 = math.min(60, math.max(12, n12 * 2))
						return nil, "rate limited"
					end

					if flag273 and flag273 >= 400 then
						return nil, "http " .. tostring(flag273)
					end
					-- more leaks: https://discord.gg/x7YbZeezpm

					if type(body) ~= "string" or body == "" then
						return nil, "empty"
					end
					n12 = 10
					return body
				end

				local function func263()
					local n16 = math.clamp(math.floor(tonumber(tbl9.HopPages) or 3), 1, 10)
					local hopSkipFull = tbl9.HopSkipFull ~= false
					local hopPlayers = tbl9.HopPlayers == "Highest"
					return tostring(placeId) .. ":" .. (not hopPlayers and "A" or "D") .. ":" .. (not hopSkipFull and "0" or "1") .. ":" .. tostring(n16)
				end

				local function func264(list72)
					list71 = {}
					if type(list72) ~= "table" then
						return list71
					end
					func260()
					local jobId = tostring(game.JobId)

					for i = 1, #list72 do
						local entry42 = list72[i]
						local flag274 = entry42 and tostring(entry42.id)

						if flag274 and flag274 ~= "" and flag274 ~= jobId and not func259(flag274) then
							list71[#list71 + 1] = {
								id = entry42.id,
								playing = tonumber(entry42.playing) or 0,
								maxPlayers = tonumber(entry42.maxPlayers) or 0,
							}
						end
					end

					return list71
				end

				local function func265(flag275)
					local cokeboysHopCache = genv.CokeboysHopCache

					if type(cokeboysHopCache) ~= "table" or cokeboysHopCache.key ~= func263() or type(cokeboysHopCache.list) ~= "table" or #cokeboysHopCache.list == 0 then
						cokeboysHopCache = nil

						if type(readfile) == "function" then
							local ok, result = pcall(readfile, (("Cokeboys" .. "/" .. func21(str3.Game)) .. "/cache") .. "/hop-list.json")
							local flag276 = ok and type(result) == "string" and result ~= ""
							cokeboysHopCache = nil

							if flag276 then
								local data = nil

								pcall(function()
									data = HttpService:JSONDecode(result)
								end)

								local flag277 = type(data) == "table" and data.key == func263() and type(data.list) == "table" and #data.list > 0
								cokeboysHopCache = nil

								if flag277 then
									cokeboysHopCache = data
									genv.CokeboysHopCache = data
								end
							end
						end
					end

					if type(cokeboysHopCache) ~= "table" or type(cokeboysHopCache.list) ~= "table" or #cokeboysHopCache.list == 0 then
						return
					end
					local n16 = os.time() - (tonumber(cokeboysHopCache.at) or 0)
					if n16 > 90 and not flag275 then
						return
					end
					func264(cokeboysHopCache.list)
					if #list71 > 0 then
						return list71, n16
					end
				end

				local function func266(list73)
					if type(list73) ~= "table" or #list73 == 0 then
						return
					end
					local cokeboysHopCache = { key = func263(), at = os.time(), list = list73 }
					genv.CokeboysHopCache = cokeboysHopCache

					if type(writefile) == "function" then
						if type(makefolder) == "function" then
							pcall(makefolder, "Cokeboys")
						end

						local str122 = "Cokeboys" .. "/" .. func21(str3.Game)

						if type(makefolder) == "function" then
							pcall(makefolder, str122)
						end

						local str123 = ("Cokeboys" .. "/" .. func21(str3.Game)) .. "/cache"

						if type(makefolder) == "function" then
							pcall(makefolder, str123)
						end

						local str124 = ("Cokeboys" .. "/" .. func21(str3.Game)) .. "/configs"

						if type(makefolder) == "function" then
							pcall(makefolder, str124)
						end

						local ok, result = pcall(function()
							return HttpService:JSONEncode(cokeboysHopCache)
						end)

						if ok and type(result) == "string" then
							pcall(writefile, (("Cokeboys" .. "/" .. func21(str3.Game)) .. "/cache") .. "/hop-list.json", result)
						end
					end
				end

				local function func267()
					if func265(false) then
						return list71, "cached"
					end

					if os.clock() < n11 then
						if func265(true) then
							return list71, "cached"
						end
						return list71, "rate limited"
					end

					n10 = os.clock()
					local clamp = math.clamp
					local floor = math.floor
					local n16 = tonumber(tbl9.HopPages) or 3
					local hopSkipFull2 = tbl9.HopSkipFull ~= false
					local hopPlayers2 = tbl9.HopPlayers == "Highest"
					local list74 = {}
					local str125 = ""
					local exitTo = nil
					local flag278

					for i = 1, clamp(floor(n16), 1, 10) do
						if i > 1 then
							task.wait(0.12)
						end

						local url3 = "https://games.roblox.com/v1/games/" .. tostring(placeId) .. "/servers/Public?sortOrder=" .. (not hopPlayers2 and "Asc" or "Desc") .. "&excludeFullGames=" .. (not hopSkipFull2 and "false" or "true") .. "&limit=100"

						if str125 ~= "" then
							local str126 = str125

							pcall(function()
								str126 = HttpService:UrlEncode(str125)
							end)

							url3 ..= "&cursor=" .. str126
						end

						local flag279
						flag279, flag278 = func262(url3, 7)

						if not flag279 then
							exitTo = 1
							break
						else
							local data = nil

							local data2 = pcall(function()
								data = HttpService:JSONDecode(flag279)
							end) and data and data.data

							if type(data2) ~= "table" then
								exitTo = 2
								break
							else
								for i2 = 1, #data2 do
									local entry43 = data2[i2]

									if type(entry43) == "table" and type(entry43.id) == "string" then
										list74[#list74 + 1] = {
											id = entry43.id,
											playing = tonumber(entry43.playing) or 0,
											maxPlayers = tonumber(entry43.maxPlayers) or 0,
										}
									end
								end

								str125 = type(data.nextPageCursor) == "string" and data.nextPageCursor or ""

								if str125 == "" then
									exitTo = 3
									break
								else
								end
							end
						end
					end

					if exitTo == 1 then
						if not (#list74 > 0) then
							if func265(true) then
								return list71, "cached"
							end
							return nil, flag278 or "fetch"
						end
					elseif exitTo == 2 then
						if not (#list74 > 0) then
							if func265(true) then
								return list71, "cached"
							end
							return nil, "bad json"
						end
					elseif exitTo == 3 then
					end

					table.sort(list74, function(param152, param153)
						if hopPlayers2 then
							return param152.playing > param153.playing
						end
						return param152.playing < param153.playing
					end)

					func266(list74)
					func264(list74)
					return list71
				end

				local function func268()
					local cokeboysHopRing = genv.CokeboysHopRing
					local cokeboysHopRing2 = {}
					local tbl265 = {}

					for i = math.max(1, #cokeboysHopRing - 7), #cokeboysHopRing do
						local entry44 = cokeboysHopRing[i]

						if type(entry44) == "string" and not tbl265[entry44] then
							tbl265[entry44] = true
							cokeboysHopRing2[#cokeboysHopRing2 + 1] = entry44
						end
					end

					local jobId2 = tostring(game.JobId)

					if not tbl265[jobId2] then
						cokeboysHopRing2[#cokeboysHopRing2 + 1] = jobId2
					end

					genv.CokeboysHopRing = cokeboysHopRing2
					local now4 = os.time()

					for k, value403 in pairs(genv.CokeboysHopUsed) do
						if k ~= jobId2 and type(value403) == "number" and now4 - value403 > 480 then
							genv.CokeboysHopUsed[k] = nil
						end
					end

					func261()
				end

				local function func269()
					func260()
					local hopSkipFull3 = tbl9.HopSkipFull ~= false
					local jobId3 = tostring(game.JobId)
					local list75 = {}
					local list76 = {}

					while #list71 > 0 do
						local flag280 = table.remove(list71, 1)
						local flag281 = flag280 and tostring(flag280.id)

						if flag281 and flag281 ~= "" and flag281 ~= jobId3 and not func259(flag281) then
							local n16 = tonumber(flag280.maxPlayers) or 0
							local flag282 = not hopSkipFull3 or n16 <= 0

							if not flag282 then
								flag282 = n16 > (tonumber(flag280.playing) or 0)
							end

							if flag282 then
								if #list75 < 12 then
									list75[#list75 + 1] = flag280
								else
									list76[#list76 + 1] = flag280
								end
							end
						end
					end

					list71 = list76
					local value404, flag283

					while true do
						if not (#list75 > 0) then
							return
						else
							local n16 = math.random(1, #list75)
							value404 = table.remove(list75, n16)
							flag283 = tostring(value404.id)
							func260()
							if flag283 ~= jobId3 and not func259(flag283) then
								break
							end
						end
					end

					local str127 = tostring(flag283 or "")

					if str127 ~= "" then
						genv.CokeboysHopUsed[str127] = os.time()
						func258(str127)
					end

					func261()

					for i = #list75, 1, -1 do
						table.insert(list71, 1, list75[i])
					end

					return value404
				end

				local function func270()
					if tbl9.AutoEvent == true then
						local state = str37 and str37.state
						if state == "FeedGo" or state == "Feed" or state == "ChestGo" or state == "ChestOpen" then
							return true
						end

						if str37 and str37.findChestTool and str37.findChestTool() then
							return true
						end

						if str37 and str37.target and str37.target.event then
							return true
						end

						if str37 and str37.pickSatchelEvent then
							local ok, result = pcall(str37.pickSatchelEvent)
							if ok and type(result) == "table" then
								return result
							end
						end
					end

					if type(func217) ~= "function" then
						return
					end
					local ok, result = pcall(func217)
					if ok and type(result) == "table" and result.matched == true and (result.cfg or result.earn) then
						return result
					end
				end

				local function func271(flag284)
					if flag266 or flag265 then
						return false
					end

					if os.clock() - n9 < 2.4 then
						return false
					end
					flag266 = true
					n9 = os.clock()
					pcall(func40, true)
					text = flag284 or "hopping"
					local str128 = not tbl9.AutoHop and "off" or text ~= "" and text or "on"
					local autoHop = tbl10.AutoHop

					if autoHop and autoHop.status then
						pcall(function()
							autoHop.status.Text = str128 .. " · " .. tostring(n) .. (n ~= 1 and " hops this session" or " hop this session")
						end)
					end

					if #list71 == 0 then
						local flag285
						flag285, flag285 = func267()

						if #list71 == 0 then
							func268()
							func265(true)

							if #list71 == 0 then
								flag266 = false
								text = tostring(flag285 or "no servers")
								local str129 = not tbl9.AutoHop and "off" or text ~= "" and text or "on"
								local autoHop2 = tbl10.AutoHop

								if autoHop2 and autoHop2.status then
									pcall(function()
										autoHop2.status.Text = str129 .. " · " .. tostring(n) .. (n ~= 1 and " hops this session" or " hop this session")
									end)
								end

								local hopNow = tbl10.HopNow

								if hopNow and hopNow.status then
									hopNow.status.Text = text
								end

								return false
							end
						end
					end

					n += 1
					local jobId4 = tostring(game.JobId)
					local flag286 = false

					while true do
						if flag98 and flag266 then
							local result35 = func269()

							if not result35 then
								func268()
								func265(true)
								result35 = func269()
							end

							if result35 then
								local value405 = genv

								local ok, result = pcall(function()
									local result36 = func252()
									local attribute = workspace:GetAttribute("AreaEggCycleNightSeconds")

									if type(attribute) ~= "number" then
										attribute = 10
									end

									return result36 - math.clamp(attribute, 1, 300)
								end)

								value405.CokeboysHopUntil = (not ok or type(result) ~= "number") and 0 or math.max(0, result)
								flag265 = true
								text = (flag284 or "hop") .. " · " .. tostring(#list71) .. " left"
								local str130 = not tbl9.AutoHop and "off" or text ~= "" and text or "on"
								local autoHop2 = tbl10.AutoHop

								if autoHop2 and autoHop2.status then
									pcall(function()
										autoHop2.status.Text = str130 .. " · " .. tostring(n) .. (n ~= 1 and " hops this session" or " hop this session")
									end)
								end

								local ok2, result2 = pcall(function()
									TeleportService:TeleportToPlaceInstance(placeId, tostring(result35.id), localPlayer)
								end)

								if not ok2 then
									flag265 = false
									n13 += 1
									local func272 = func82
									local str131 = tostring(result2)
									func272("hop", "fail", str131)
									continue
								else
									local now4 = os.clock()

									while true do
										if flag98 and flag265 and os.clock() - now4 < 12 then
											if jobId4 ~= tostring(game.JobId) then
												flag286 = true
												break
											else
												task.wait(0.1)
												continue
											end
										end

										break
									end

									if jobId4 ~= tostring(game.JobId) then
										flag286 = true
										break
									else
										pcall(function()
											TeleportService:TeleportCancel()
										end)

										flag265 = false
										n13 += 1
										continue
									end
								end
							end
						end

						break
					end

					flag266 = false
					flag265 = false
					if flag286 then
						return true
					end
					text = "no servers"
					local str132 = not tbl9.AutoHop and "off"
					local str133

					if str132 then
						str133 = str132
					else
						str133 = text ~= "" and text or "on"
					end

					local autoHop2 = tbl10.AutoHop

					if autoHop2 and autoHop2.status then
						pcall(function()
							autoHop2.status.Text = str133 .. " · " .. tostring(n) .. (n ~= 1 and " hops this session" or " hop this session")
						end)
					end

					return false
				end

				local connection3 = TeleportService.TeleportInitFailed:Connect(function(flag287)
					if flag287 ~= localPlayer then
						return
					end
					flag265 = false
					n13 += 1
				end)

				if connection3 then
					tbl146[connection3] = true
				end

				local function func273()
					if not flag98 then
						return
					end
					local now4 = os.clock()
					local n16 = now4 - now3
					now3 = now4

					if str37 and str37.banked ~= n15 then
						n15 = str37.banked
						n14 = 0
					end

					local result37 = func252()
					local attribute = workspace:GetAttribute("AreaEggCycleNightSeconds")

					if type(attribute) ~= "number" then
						attribute = 10
					end

					if not (result37 <= math.clamp(attribute, 1, 300)) then
						n14 += n16
					end

					if not tbl9.AutoHop then
						if str115 ~= "idle" or flag267 or flag268 then
							str115 = "idle"
							flag267 = false
							flag268 = false
						end

						text = "off"
						local str134 = not tbl9.AutoHop and "off" or text ~= "" and text or "on"
						local autoHop = tbl10.AutoHop

						if autoHop and autoHop.status then
							pcall(function()
								autoHop.status.Text = str134 .. " · " .. tostring(n) .. (n ~= 1 and " hops this session" or " hop this session")
							end)
						end

						return
					end

					if flag265 or flag266 then
						local str135 = not tbl9.AutoHop and "off" or text ~= "" and text or "on"
						local autoHop = tbl10.AutoHop

						if autoHop and autoHop.status then
							pcall(function()
								autoHop.status.Text = str135 .. " · " .. tostring(n) .. (n ~= 1 and " hops this session" or " hop this session")
							end)
						end

						return
					end

					if now4 < now2 + 1.6 then
						text = "settling"
						local str136 = not tbl9.AutoHop and "off" or text ~= "" and text or "on"
						local autoHop = tbl10.AutoHop

						if autoHop and autoHop.status then
							pcall(function()
								autoHop.status.Text = str136 .. " · " .. tostring(n) .. (n ~= 1 and " hops this session" or " hop this session")
							end)
						end

						return
					end

					if str37 and str37.carrying == true then
						text = "carrying"
						local str137 = not tbl9.AutoHop and "off" or text ~= "" and text or "on"
						local autoHop = tbl10.AutoHop

						if autoHop and autoHop.status then
							pcall(function()
								autoHop.status.Text = str137 .. " · " .. tostring(n) .. (n ~= 1 and " hops this session" or " hop this session")
							end)
						end

						return
					end

					str115 = "idle"
					flag267 = false
					flag268 = false
					local n17 = func257(tbl9.HopIdle)

					if n17 > 0 then
						if n17 < 5 then
							n17 = 5
						end

						text = "no steal " .. tostring(math.floor(n14)) .. "/" .. tostring(math.floor(n17)) .. "s"

						if n17 <= n14 then
							local str138 = not tbl9.AutoHop and "off"
							local str139

							if str138 then
								str139 = str138
							else
								str139 = text ~= "" and text or "on"
							end

							local autoHop = tbl10.AutoHop

							if autoHop and autoHop.status then
								pcall(function()
									autoHop.status.Text = str139 .. " · " .. tostring(n) .. (n ~= 1 and " hops this session" or " hop this session")
								end)
							end

							func271("idle")
							return
						end
					end

					local n18 = func257(tbl9.HopAfter)

					if n18 > 0 then
						if n18 < 1 then
							n18 = 1
						end

						if n18 <= (now4 - now2) / 60 then
							text = "time"
							local str140 = not tbl9.AutoHop and "off" or text ~= "" and text or "on"
							local autoHop = tbl10.AutoHop

							if autoHop and autoHop.status then
								pcall(function()
									autoHop.status.Text = str140 .. " · " .. tostring(n) .. (n ~= 1 and " hops this session" or " hop this session")
								end)
							end

							func271("time")
							return
						end
					end

					if n17 > 0 then
						text = "no steal " .. tostring(math.floor(n14)) .. "/" .. tostring(math.floor(n17)) .. "s"
					elseif func270() then
						text = "eggs · grabbing"
					elseif flag268 then
						text = "eggs · staying"
					else
						text = "on"
					end

					local str141 = not tbl9.AutoHop and "off" or text ~= "" and text or "on"
					local autoHop = tbl10.AutoHop

					if autoHop and autoHop.status then
						pcall(function()
							autoHop.status.Text = str141 .. " · " .. tostring(n) .. (n ~= 1 and " hops this session" or " hop this session")
						end)
					end
				end

				local n16 = 0

				local function setLive4(flag288)
					n16 += 1
					local flag289 = n16
					if not flag288 then
						return
					end

					task.spawn(function()
						while flag98 and tbl9.AutoHop == true and flag289 == n16 do
							pcall(func273)
							task.wait(0.4)
						end
					end)
				end

				setLive4(tbl9.AutoHop == true)
				local str142 = not tbl9.AutoHop and "off" or text ~= "" and text or "on"
				local autoHop = tbl10.AutoHop

				if autoHop and autoHop.status then
					pcall(function()
						autoHop.status.Text = str142 .. " · " .. tostring(n) .. (n ~= 1 and " hops this session" or " hop this session")
					end)
				end

				return {
					setLive = setLive4,
					now = function()
						local hopNow = tbl10.HopNow

						if hopNow and hopNow.status then
							hopNow.status.Text = "going…"
						end

						local now4 = func271("now")

						if hopNow and hopNow.status then
							local status = hopNow.status
							local text2

							if not now4 then
								text2 = text
							else
								text2 = "going…"
							end

							status.Text = text2
						end

						return now4
					end,
					stop = function()
						setLive4(false)
						flag266 = false
						flag265 = false

						pcall(function()
							TeleportService:TeleportCancel()
						end)
					end,
					hops = function()
						return n
					end,
				}
			end

			flag139 = func256()

			local function func274()
				local tbl266 = {
					placed = 0,
					hatched = 0,
					bought = 0,
					sold = 0,
					soldPets = 0,
					soldEggs = 0,
					trainEarned = 0,
					trainRate = 0,
					claimCash = 0,
					claimIndex = 0,
					training = false,
					conn = nil,
					busy = false,
					lastPlace = 0,
					lastHatch = 0,
					lastEquip = 0,
					lastSell = 0,
					lastWear = 0,
					lastUpg = 0,
					lastClaim = 0,
					lastPaint = 0,
					lastTrain = 0,
					lastDoff = 0,
					lastPower = nil,
					lastPowerAt = 0,
					scrambleReleaseRequested = false,
					job = "idle",
					info = nil,
					infoAt = 0,
					lastPlaceWhy = nil,
					previewQueued = false,
				}

				local function func275(param154)
					local n = tonumber(param154) or 0
					local n9 = math.abs(n)
					if n9 >= 1e12 then
						return string.format("%.2fT", n / 1e12)
					end

					if n9 >= 1e9 then
						return string.format("%.2fB", n / 1e9)
					end

					if n9 >= 1000000 then
						return string.format("%.2fm", n / 1000000)
					end

					if n9 >= 1000 then
						return string.format("%.1fk", n / 1000)
					end
					return string.format("%.0f", n)
				end

				local function func276(param155, param156)
					local tbl267 = func102({ "Remotes" })

					if tbl267 then
						tbl267 = tbl267[param155] and tbl267[param155][param156]
					end

					local value406 = func103(tbl267)
					local flag290

					if value406 then
						flag290 = value406
					else
						flag290 = typeof(tbl267) == "Instance" and tbl267
					end

					return flag290
				end

				local function func277(param157, param158, ...)
					local obj30 = func276(param157, param158)
					if not obj30 then
						return false, "no remote"
					end
					return obj30:InvokeServer(...)
				end

				local function func278(...)
					select("#", select(3, ...))
					error("SL: this block could not be recovered")
				end

				local function func279()
					local save = ReplicatedStorage.Shared.Save
					local saveMod

					if tbl266.saveMod == false then
						saveMod = nil
					elseif tbl266.saveMod ~= nil then
						saveMod = tbl266.saveMod
					else
						local ok, result = pcall(require, save)
						tbl266.saveMod = not not ok and type(result) == "table" and (result or false)

						if tbl266.saveMod ~= false then
							saveMod = tbl266.saveMod
						else
							saveMod = nil
						end
					end

					local flag291 = type(saveMod) == "table"

					if flag291 then
						flag291 = type(saveMod.Peek) == "function" and saveMod.Peek or saveMod.Get
					end

					if type(flag291) == "function" then
						local ok, result = pcall(flag291, localPlayer, false)
						if ok and type(result) == "table" then
							return result
						end
						local ok2, result2 = pcall(flag291)
						if ok2 and type(result2) == "table" then
							return result2
						end
					end
				end

				local function func280(flag292)
					local lower = string.lower
					local str143 = tostring(flag292 or "")
					local flag293 = lower(str143)
					if flag293 == "" or flag293 == "?" then
						return 0
					end

					for i, item37 in ipairs(tbl6) do
						if flag293 == string.lower(item37) then
							return i
						end
					end

					return 0
				end

				local function func281()
					local now2 = os.clock()
					local info = tbl266.info

					if info then
						info = now2 - (tbl266.infoAt or 0) < 0.45
					end

					if info then
						return tbl266.info
					end
					local plotState = ReplicatedStorage.Client.PlotState
					local plotMod

					if tbl266.plotMod == false then
						plotMod = nil
					elseif tbl266.plotMod ~= nil then
						plotMod = tbl266.plotMod
					else
						local ok, result = pcall(require, plotState)
						tbl266.plotMod = not not ok and type(result) == "table" and (result or false)

						if tbl266.plotMod ~= false then
							plotMod = tbl266.plotMod
						else
							plotMod = nil
						end
					end

					local flag294 = plotMod
					local value407 = nil

					if flag294 and type(flag294.ResolvePlot) == "function" then
						pcall(function()
							value407 = flag294.ResolvePlot()
						end)
					end

					tbl266.info = type(value407) == "table" and value407 or nil
					tbl266.infoAt = now2
					return tbl266.info
				end

				local function func282(part2, param159, flag295)
					if not part2 or not part2:IsA("BasePart") or typeof(param159) ~= "Vector3" then
						return false
					end
					local value408 = part2.CFrame:PointToObjectSpace(param159)
					local n = part2.Size.X * 0.5 - (flag295 or 0)
					local n9 = part2.Size.Z * 0.5 - (flag295 or 0)
					return math.abs(value408.X) <= math.max(n, 0.5) and math.abs(value408.Z) <= math.max(n9, 0.5)
				end

				local function func283()
					local now2 = os.clock()
					local beltPart = tbl266.beltPart

					if beltPart then
						beltPart = tbl266.beltPart.Parent

						if beltPart then
							beltPart = now2 - (tbl266.beltAt or 0) < 0.85
						end
					end

					if beltPart then
						return tbl266.beltPart
					end
					local plotFolder = func281()
					plotFolder = plotFolder and plotFolder.PlotFolder
					local treadmillBottom = nil

					if plotFolder then
						treadmillBottom = plotFolder:FindFirstChild("TreadmillBottom", true)

						if not (treadmillBottom and treadmillBottom:IsA("BasePart")) then
							local value409 = nil
							treadmillBottom = nil

							for _, descendant in ipairs(plotFolder:GetDescendants()) do
								if descendant:IsA("BasePart") then
									local lowered14 = string.lower(descendant.Name)

									if lowered14:find("treadmill", 1, true) or lowered14 == "bottom" or lowered14:find("belt", 1, true) then
										local n = descendant.Size.X * descendant.Size.Y * descendant.Size.Z

										if not value409 or value409 < n then
											value409 = n
											treadmillBottom = descendant
										end
									end
								end
							end
						end
					end

					if not treadmillBottom then
						local clientTreadmillRenders = workspace:FindFirstChild("__ClientTreadmillRenders")

						if clientTreadmillRenders then
							local treadmillBottom2 = clientTreadmillRenders:FindFirstChild("TreadmillBottom", true) or clientTreadmillRenders:FindFirstChild("Bottom", true)

							if treadmillBottom2 and treadmillBottom2:IsA("BasePart") then
								treadmillBottom = treadmillBottom2
							end
						end
					end

					tbl266.beltPart = treadmillBottom
					tbl266.beltAt = now2
					return treadmillBottom
				end

				local function func284()
					local result38 = func281()
					local petArea = result38 and result38.PetArea
					if petArea and petArea:IsA("BasePart") then
						local position3 = petArea.Position
						return Vector3.new(position3.X, petArea.Position.Y + 4.5, position3.Z), petArea
					end
					return select(1, func218()), nil
				end

				local function func285(param160, num19, param161)
					if typeof(param160) ~= "Vector3" or typeof(num19) ~= "Vector3" then
						return param160
					end

					if param161 then
						return param160
					end

					if Vector3.new(param160.X - num19.X, 0, param160.Z - num19.Z).Magnitude > 14 then
						return Vector3.new(param160.X, param160.Y + 18, param160.Z)
					end
					return param160
				end

				local function func286(part3)
					local result39 = func283()
					if not result39 or not part3 then
						return false
					end
					local position3 = part3.Position
					if func282(result39, position3, -2) then
						return true
					end
					return Vector3.new(position3.X - result39.Position.X, 0, position3.Z - result39.Position.Z).Magnitude < 6
				end

				local function func287()
					local centerPoint = func281()
					local petArea = centerPoint and centerPoint.PetArea
					centerPoint = centerPoint and centerPoint.CenterPoint
					local result40 = func283()

					if not petArea or not petArea:IsA("BasePart") or not centerPoint then
						local flag296
						flag296, flag296 = func218()
						if flag296 and centerPoint then
							return centerPoint.CFrame:ToObjectSpace(flag296)
						end
						return flag296
					end

					local n = nil

					for i = 1, 8 do
						n = petArea.CFrame * CFrame.new((math.random() - 0.5) * math.min(petArea.Size.X - 8, 28), 0.5, (math.random() - 0.5) * math.min(petArea.Size.Z - 8, 22))
						if not result40 or not (Vector3.new(n.X - result40.Position.X, 0, n.Z - result40.Position.Z).Magnitude < 14) then
							return centerPoint.CFrame:ToObjectSpace(n)
						end
					end

					return centerPoint.CFrame:ToObjectSpace(n)
				end

				local function func288()
					local value410 = nil
					local ok = nil
					local result

					if not flag96 then
						value410 = true
						ok = nil
						result = nil
					end

					repeat
						if value410 or type(flag96.ReadOwnerEggs) == "function" then
							if not value410 then
								if not value410 then
									ok, result = pcall(flag96.ReadOwnerEggs, localPlayer.UserId)
								end
							end

							if value410 or ok and type(result) == "table" then
								if type(result) ~= "table" then
									return {}
								end
								local placeMinGen = func137(tbl9.PlaceMinGen)
								local list77 = {}
								local n = 0

								for k, value411 in pairs(result) do
									if type(value411) == "table" then
										if value411.Placement ~= nil then
											n += 1
										else
											local assetCategory = value411.AssetCategory
											local value412

											if directory and assetCategory then
												value412 = directory[assetCategory]
											else
												value412 = nil
											end

											local value413 = func136(value411, value412)
											local value414 = func87(assetCategory or value411.Category, value412)
											local shatteredRiftFarm = tbl9.ShatteredRiftFarm == true and value414

											if not (tbl9.DontPlaceRiftEggs == true and tbl148.isRewardEgg(value411)) and (shatteredRiftFarm or placeMinGen <= 0 or placeMinGen <= value413) then
												local neverPlaceRarity = tbl9.NeverPlaceRarity
												local flag297

												if type(neverPlaceRarity) ~= "string" or neverPlaceRarity == "place everything" then
													flag297 = false
												else
													local func289 = func280
													local str144

													if type(value412) == "table" and type(value412.Rarity) == "table" then
														str144 = tostring(value412.Rarity.DisplayName or value412.Rarity.Name or value412.Rarity._id or "?")
													else
														str144 = "?"
													end

													local flag298 = func289(str144)
													local flag299 = func280(neverPlaceRarity)
													flag297 = flag298 > 0 and flag299 > 0 and flag299 <= flag298
												end

												if shatteredRiftFarm or not flag297 then
													list77[#list77 + 1] = { uid = value411.Uid or k, earn = value413, rift = shatteredRiftFarm }
												end
											end
										end
									end
								end

								table.sort(list77, function(param162, param163)
									if param162.rift ~= param163.rift then
										return param162.rift == true
									end
									return param162.earn > param163.earn
								end)

								return list77, n
							end
						end

						value410 = true
						result = nil
					until not true
				end

				local function func290()
					local result41 = func279()
					local bases = ReplicatedStorage.Data.Bases
					local basesMod

					if tbl266.basesMod == false then
						basesMod = nil
					elseif tbl266.basesMod ~= nil then
						basesMod = tbl266.basesMod
					else
						local ok, result = pcall(require, bases)
						local value415 = tbl266
						local flag300 = not not ok
						local basesMod2

						if flag300 then
							basesMod2 = type(result) == "table" and (result or false)
						else
							basesMod2 = flag300
						end

						value415.basesMod = basesMod2

						if tbl266.basesMod ~= false then
							basesMod = tbl266.basesMod
						else
							basesMod = nil
						end
					end

					local n = tonumber(result41 and result41.BaseUpgradeLevel) or 0

					if basesMod then
						local bases2 = basesMod.BASES

						if bases2 then
							basesMod = basesMod.BASES[n] or basesMod.BASES[n + 1]
						else
							basesMod = bases2
						end
					end

					return tonumber(basesMod and basesMod.MaxAssets) or 99
				end

				local function func291()
					if not func254() or not flag96 or type(flag96.IsReadyToHatch) ~= "function" then
						return false
					end
					local value416 = nil
					local ok = nil
					local result = nil

					if not flag96 then
						value416 = true
						ok = nil
						result = nil
					end

					repeat
						if value416 or type(flag96.ReadOwnerEggs) == "function" then
							if not value416 then
								if not value416 then
									ok, result = pcall(flag96.ReadOwnerEggs, localPlayer.UserId)
								end
							end

							value416 = value416 or ok and type(result) == "table"

							if value416 then
								if type(result) ~= "table" then
									return false
								end

								for k, value417 in pairs(result) do
									if type(value417) ~= "table" or value417.Placement == nil then
										continue
									end
									local ok2, result2 = pcall(flag96.IsReadyToHatch, value417.Uid or k)
									if ok2 and result2 == true then
										return true
									end
								end

								return false
							end
						end

						value416 = true
						result = nil
					until not true
				end

				local function func292(param164, param165)
					local character = localPlayer.Character
					local humanoidRootPart

					if not character then
						humanoidRootPart = nil
					else
						local humanoid = character:FindFirstChildOfClass("Humanoid")
						humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

						if not (not not humanoid and not not humanoidRootPart and not (humanoid.Health <= 0)) then
							humanoidRootPart = nil
						end
					end

					if not humanoidRootPart or typeof(param164) ~= "Vector3" then
						return false
					end
					flag99 = func285(param164, humanoidRootPart.Position, param165)
					flag100 = true
					return Vector3.new(param164.X - humanoidRootPart.Position.X, 0, param164.Z - humanoidRootPart.Position.Z).Magnitude < 10 and math.abs(param164.Y - humanoidRootPart.Position.Y) < 10
				end

				local function func293(flag301)
					local character = localPlayer.Character
					local humanoid, humanoidRootPart

					if not character then
						humanoid = nil
						humanoidRootPart = nil
					else
						humanoid = character:FindFirstChildOfClass("Humanoid")
						humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

						if not humanoid or not humanoidRootPart or humanoid.Health <= 0 then
							humanoid = nil
							humanoidRootPart = nil
						end
					end

					local obj31 = humanoid
					local num20 = humanoidRootPart
					if not obj31 or not num20 then
						return
					end
					local now2 = os.clock()

					if now2 - (tbl266.lastDoff or 0) >= 0.6 then
						tbl266.lastDoff = now2
						pcall(func277, "Treadmill", "AskDoff")
					end

					if not flag301 then
						flag100 = false
						flag99 = nil
					end

					func94(obj31, num20, false)
					flag301 = flag301 and typeof(flag99) == "Vector3" and flag99 or func284()
					local result42 = func283()
					local vector = Vector3.zero

					if flag301 then
						vector = Vector3.new(flag301.X - num20.Position.X, 0, flag301.Z - num20.Position.Z)
					end

					if vector.Magnitude < 0.5 and result42 then
						vector = Vector3.new(num20.Position.X - result42.Position.X, 0, num20.Position.Z - result42.Position.Z)
					end
					-- deobfuscated by SL -> https://discord.gg/x7YbZeezpm

					local vector2

					if not (vector.Magnitude > 0.5) then
						vector2 = Vector3.zero
					else
						vector2 = vector.Unit
					end

					pcall(function()
						obj31.PlatformStand = false
						obj31.Sit = false
						obj31.AutoRotate = true

						if type(obj31.JumpHeight) == "number" and obj31.JumpHeight < 0.5 then
							obj31.JumpHeight = jumpHeight
						end

						if type(obj31.JumpPower) == "number" then
							obj31.JumpPower = math.max(obj31.JumpPower, 50)
						end

						obj31.Jump = false
						obj31:ChangeState(Enum.HumanoidStateType.Running)

						if vector2.Magnitude > 0.5 then
							obj31:Move(vector2, false)
						else
							obj31:Move(Vector3.zero, false)
						end
					end)

					pcall(function()
						num20.Anchored = false
						local n = vector2.Z * 46
						num20.AssemblyLinearVelocity = Vector3.new(vector2.X * 46, math.min(num20.AssemblyLinearVelocity.Y, 0), n)
						num20.AssemblyAngularVelocity = Vector3.zero
					end)
				end

				local function leave2()
					tbl266.training = false
					local character = localPlayer.Character
					local humanoidRootPart

					if not character then
						humanoidRootPart = nil
					else
						local humanoid = character:FindFirstChildOfClass("Humanoid")
						humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

						if not (not not humanoid and not not humanoidRootPart and not (humanoid.Health <= 0)) then
							humanoidRootPart = nil
						end
					end

					local flag302

					if not str37 or not str37.running then
						flag302 = false
					else
						local state = str37.state
						flag302 = state == "BaitJump" or state == "GoEgg" or state == "Grab" or state == "Return" or state == "Bank" or state == "Chase" or state == "Safe" or state == "FeedGo" or state == "Feed" or state == "ChestGo" or state == "ChestOpen"
					end

					if humanoidRootPart and func286(humanoidRootPart) then
						tbl266.job = "leave"
						func293(flag302)
						return
					end

					if tbl266.job == "belt" or tbl266.job == "leave" then
						tbl266.job = "idle"

						if not flag302 and (not str37 or not str37.running) then
							flag100 = false
							flag99 = nil
						end
					end
				end

				local function func294(flag303)
					local now2 = os.clock()
					local flag304 = not flag303

					if flag304 then
						flag304 = now2 - (tbl266.lastDoff or 0) < 0.6
					end

					if flag304 then
						return
					end
					tbl266.lastDoff = now2
					pcall(func277, "Treadmill", "AskDoff")
				end

				local function stopGhost2(flag305)
					local flag306 = flag305 == true or tbl266.ghostMounted == true or tbl266.job == "ghost"
					tbl266.ghostMounted = false
					tbl266.ghostMountedAt = nil
					tbl266.training = false

					if tbl266.job == "ghost" then
						tbl266.job = "idle"
					end

					if flag306 then
						func294(flag305 == true)
					end

					if flag306 then
						leave2()
					end
				end

				local function func295()
					if tbl266.job == "sell" then
						return
					end

					if flag12 or flag11 then
						return
					end

					if not func253() or not flag96 or type(flag96.PlantEgg) ~= "function" then
						return
					end
					local flag307

					if not str37 or not str37.running then
						flag307 = false
					else
						local state = str37.state
						local flag308 = state == "BaitJump"

						if flag308 then
							flag307 = flag308
						else
							local flag309 = state == "GoEgg"

							if flag309 then
								flag307 = flag309
							else
								local flag310 = state == "Grab"

								if flag310 then
									flag307 = flag310
								else
									local flag311 = state == "Return"

									if flag311 then
										flag307 = flag311
									else
										local flag312 = state == "Bank"

										if flag312 then
											flag307 = flag312
										else
											local flag313 = state == "Chase"

											if flag313 then
												flag307 = flag313
											else
												local flag314 = state == "Safe"

												if flag314 then
													flag307 = flag314
												else
													local flag315 = state == "FeedGo"

													if flag315 then
														flag307 = flag315
													else
														local flag316 = state == "Feed"

														if flag316 then
															flag307 = flag316
														else
															flag307 = state == "ChestGo" or state == "ChestOpen"
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end

					if flag307 then
						return
					end
					local character = localPlayer.Character
					local humanoidRootPart

					if not character then
						humanoidRootPart = nil
					else
						local humanoid = character:FindFirstChildOfClass("Humanoid")
						humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

						if not (not not humanoid and not not humanoidRootPart and not (humanoid.Health <= 0)) then
							humanoidRootPart = nil
						end
					end

					local result43 = func281()
					local petArea = result43 and result43.PetArea
					local flag317

					if not petArea or not humanoidRootPart then
						flag317 = false
					else
						local result44 = func283()
						local flag318 = not not result44 and not not humanoidRootPart

						if flag318 then
							if func286(humanoidRootPart) then
								flag318 = math.abs(humanoidRootPart.Position.Y - result44.Position.Y) < 10
							else
								flag318 = false
							end
						end

						flag317 = not flag318 and func282(petArea, humanoidRootPart.Position, 2)
					end

					if not flag317 or obj16 then
						return
					end
					local now2 = os.clock()
					if now2 - tbl266.lastPlace < 1.15 then
						return
					end
					local list78, value418 = func288()
					if #list78 == 0 then
						return
					end

					if func290() <= value418 then
						tbl266.lastPlaceWhy = "pen full"
						return
					end
					local result45 = func287()
					if not result45 then
						tbl266.lastPlaceWhy = "no pad"
						return
					end
					tbl266.lastPlace = now2
					local uid = list78[1].uid

					if type(flag96.WearEggTool) == "function" then
						pcall(flag96.WearEggTool, uid)
					end

					local ok, result, result2 = pcall(function()
						return flag96.PlantEgg(uid, result45)
					end)

					if type(flag96.DoffEggTool) == "function" then
						pcall(flag96.DoffEggTool, uid)
					end

					if ok and result == true then
						tbl266.placed = tbl266.placed + 1
						tbl266.lastPlaceWhy = nil
						func82("plot", "placed", uid)

						if flag101 and flag101.bumpPlot then
							flag101.bumpPlot()
						end

						return
					end

					tbl266.lastPlaceWhy = tostring(result2 or result or not ok and "err" or "rejected")
					func82("plot", "place fail", uid, tbl266.lastPlaceWhy)
				end

				local function func296()
					if tbl266.job == "sell" then
						return
					end

					if flag12 or flag11 then
						return
					end

					if not func254() or not flag96 then
						return
					end
					local character = localPlayer.Character
					local humanoidRootPart

					if not character then
						humanoidRootPart = nil
					else
						local humanoid = character:FindFirstChildOfClass("Humanoid")
						humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

						if not (not not humanoid and not not humanoidRootPart and not (humanoid.Health <= 0)) then
							humanoidRootPart = nil
						end
					end

					local result46 = func281()
					local petArea = result46 and result46.PetArea
					local flag319

					if not petArea or not humanoidRootPart then
						flag319 = false
					else
						local result47 = func283()
						local flag320 = not not result47 and not not humanoidRootPart
						local flag321

						if flag320 then
							if func286(humanoidRootPart) then
								flag321 = math.abs(humanoidRootPart.Position.Y - result47.Position.Y) < 10
							else
								flag321 = false
							end
						else
							flag321 = flag320
						end

						flag319 = not flag321 and func282(petArea, humanoidRootPart.Position, 2)
					end

					if not flag319 or obj16 then
						return
					end
					local now2 = os.clock()
					if now2 - tbl266.lastHatch < 0.9 then
						return
					end
					local value419 = nil
					local ok = nil
					local result = nil

					if not flag96 then
						value419 = true
						ok = nil
						result = nil
					end

					repeat
						if value419 or type(flag96.ReadOwnerEggs) == "function" then
							if not value419 then
								if not value419 then
									ok, result = pcall(flag96.ReadOwnerEggs, localPlayer.UserId)
								end
							end

							value419 = value419 or ok and type(result) == "table"

							if value419 then
								if type(result) ~= "table" then
									return
								end

								for k, value420 in pairs(result) do
									if type(value420) ~= "table" or value420.Placement == nil then
										continue
									end
									local uid = value420.Uid or k
									local flag322 = false

									if type(flag96.IsReadyToHatch) == "function" then
										local result2
										flag322, result2 = pcall(flag96.IsReadyToHatch, uid)
										flag322 = flag322 and result2 == true
									end

									if flag322 then
										tbl266.lastHatch = now2

										if pcall(function()
											if type(flag96.BeginHatch) == "function" then
												flag96.BeginHatch(uid)
											end

											if type(flag96.FinishHatch) == "function" then
												flag96.FinishHatch(uid)
											end
										end) then
											tbl266.hatched = tbl266.hatched + 1
											func82("plot", "hatched", uid)

											if flag138 and flag138.hatched then
												local assetCategory = value420.AssetCategory or value420.Category
												local flag323

												if directory and assetCategory then
													flag323 = directory[assetCategory]
												else
													flag323 = nil
												end

												local value421 = func136(value420, flag323)
												local func297 = pcall
												local hatched = flag138.hatched
												local tbl268 = { name = flag323 and flag323.DisplayName or value420.AssetCategory, earn = value421 }
												local rar

												if type(flag323) == "table" and type(flag323.Rarity) == "table" then
													rar = tostring(flag323.Rarity.DisplayName or flag323.Rarity.Name or flag323.Rarity._id or "?")
												else
													rar = "?"
												end

												tbl268.rar = rar
												tbl268.cfg = flag323
												tbl268.cat = value420.AssetCategory or value420.Category
												tbl268.rec = value420
												func297(hatched, tbl268)
											end

											if flag101 and flag101.bumpPlot then
												flag101.bumpPlot()
											end
										end

										return
									end
								end

								return
							end
						end

						value419 = true
						result = nil
					until not true
				end

				local function func298()
					if tbl9.UpgTrails ~= true then
						return
					end
					local trails = ReplicatedStorage.Data.Trails
					local trailsMod

					if tbl266.trailsMod == false then
						trailsMod = nil
					elseif tbl266.trailsMod ~= nil then
						trailsMod = tbl266.trailsMod
					else
						local ok, result = pcall(require, trails)
						local value422 = tbl266
						local flag324 = not not ok
						local trailsMod2

						if flag324 then
							trailsMod2 = type(result) == "table" and (result or false)
						else
							trailsMod2 = flag324
						end

						value422.trailsMod = trailsMod2

						if tbl266.trailsMod ~= false then
							trailsMod = tbl266.trailsMod
						else
							trailsMod = nil
						end
					end

					if trailsMod then
						trailsMod = trailsMod.Directory or trailsMod
					end

					local result48 = func279()
					if type(trailsMod) ~= "table" or type(result48) ~= "table" then
						return
					end
					local trailInventory = type(result48.TrailInventory) == "table" and result48.TrailInventory or {}
					local list79 = {}

					for _, value423 in pairs(trailsMod) do
						if type(value423) == "table" and type(value423._id) == "string" then
							list79[#list79 + 1] = value423
						end
					end

					table.sort(list79, function(param166, param167)
						return (tonumber(param166.Price) or 0) < (tonumber(param167.Price) or 0)
					end)

					for i = 1, #list79 do
						local entry45 = list79[i]

						if trailInventory[entry45._id] ~= true then
							local n = tonumber(entry45.Price) or 0

							if n > 0 then
								local n9 = tonumber(n) or 0
								local result49 = func279()
								local n10 = tonumber(result49 and result49.Money) or 0

								if func137(tbl9.KeepMoney) <= n10 - n9 then
									local ok, result = pcall(func277, "Trailwear", "AskPurchase", entry45._id)

									if ok and result == true then
										tbl266.bought = tbl266.bought + 1
										func82("plot", "trail bought", entry45._id)
										pcall(func277, "Trailwear", "AskChoose", entry45._id)
									end
								end
							end

							return
						end
					end

					local value424 = nil

					for i = 1, #list79 do
						local entry46 = list79[i]

						if trailInventory[entry46._id] == true then
							value424 = entry46
						end
					end

					if value424 and result48.EquippedTrail ~= value424._id then
						pcall(func277, "Trailwear", "AskChoose", value424._id)
					end
				end

				local function func299()
					if tbl9.UpgTreadmill ~= true then
						return
					end
					local treadmills = ReplicatedStorage.Data.Treadmills
					local tmsMod

					if tbl266.tmsMod == false then
						tmsMod = nil
					elseif tbl266.tmsMod ~= nil then
						tmsMod = tbl266.tmsMod
					else
						local ok, result = pcall(require, treadmills)
						tbl266.tmsMod = not not ok and type(result) == "table" and (result or false)

						if tbl266.tmsMod ~= false then
							tmsMod = tbl266.tmsMod
						else
							tmsMod = nil
						end
					end

					local value425 = tmsMod
					local result50 = func279()
					if type(value425) ~= "table" or type(result50) ~= "table" then
						return
					end
					local n = (tonumber(result50.TreadmillUpgradeLevel) or 0) + 1
					local value426 = nil

					if type(value425.GetByUpgradeLevel) == "function" then
						pcall(function()
							value426 = value425.GetByUpgradeLevel(n)
						end)
					end

					if type(value426) ~= "table" then
						return
					end
					local n9 = tonumber(value426.Price) or 0

					if n9 > 0 then
						local n10 = tonumber(n9) or 0
						local result51 = func279()
						if not ((tonumber(result51 and result51.Money) or 0) - n10 >= func137(tbl9.KeepMoney)) then
							return
						end
					end

					local ok, result = pcall(func277, "Treadmill", "AskTierRaise", value426._id)

					if ok and result == true then
						func82("plot", "treadmill", value426._id)
					end
				end

				local function func300()
					if tbl9.UpgPen ~= true then
						return
					end
					local result52 = func279()
					if type(result52) ~= "table" then
						return
					end
					local bases = ReplicatedStorage.Data.Bases
					local basesMod

					if tbl266.basesMod == false then
						basesMod = nil
					elseif tbl266.basesMod ~= nil then
						basesMod = tbl266.basesMod
					else
						local ok, result = pcall(require, bases)
						tbl266.basesMod = not not ok and type(result) == "table" and (result or false)

						if tbl266.basesMod ~= false then
							basesMod = tbl266.basesMod
						else
							basesMod = nil
						end
					end

					local n = (tonumber(result52.BaseUpgradeLevel) or 0) + 1
					local bases2

					if basesMod then
						bases2 = basesMod.BASES and basesMod.BASES[n]
					else
						bases2 = basesMod
					end

					local n9 = type(bases2) == "table" and tonumber(bases2.Cost) or 0
					if type(bases2) ~= "table" then
						return
					end

					if n9 > 0 then
						local n10 = tonumber(n9) or 0
						local result53 = func279()
						if not ((tonumber(result53 and result53.Money) or 0) - n10 >= func137(tbl9.KeepMoney)) then
							return
						end
					end

					func278("Homestead", "AskBaseTierRaise")
					func82("plot", "pen tier", n)
				end

				local function func301(list80)
					local tbl269 = {}
					list80 = list80 and list80.EquippedAssets

					if type(list80) == "table" then
						for _, value427 in pairs(list80) do
							tbl269[tostring(value427)] = true
						end
					end

					return tbl269
				end

				local function func302()
					local sellUnderGen = func137(tbl9.SellUnderGen)
					local sellPets = {}
					local sellEggs = {}

					if sellUnderGen <= 0 then
						local value428 = tbl266
						local value429 = tbl266
						tbl266.sellPets = sellPets
						value428.sellEggs = sellEggs
						value429.sellFloor = sellUnderGen
						return sellPets, sellEggs, sellUnderGen
					end

					local result54 = func279()
					local tbl270 = func301(result54)
					local inventory = result54 and result54.Inventory

					if type(inventory) == "table" then
						for k, value430 in pairs(inventory) do
							if type(value430) == "table" then
								local str145 = tostring(k)

								if not tbl270[str145] and not (value430.IsFavorite == true) and value430.Favorite ~= true and value430.InFuse ~= true and value430.InPen ~= true and value430.Placement == nil then
									local category = value430.Category or value430.AssetCategory
									local value431

									if directory and category then
										value431 = directory[category]
									else
										value431 = nil
									end

									local flag325 = func136(value430, value431)
									local flag326 = flag325 < sellUnderGen

									if flag326 then
										flag326 = not ((tbl9.SellNonRiftRecipeEggs == true or tbl9.ShatteredRiftFarm == true) and func87(category, value431))
									end

									if flag326 then
										sellPets[#sellPets + 1] = { uid = str145, cat = category, cfg = value431, earn = flag325, rec = value430, price = 0 }
									end
								end
							end
						end
					end

					local value432 = nil
					local ok = nil
					local result = nil

					if not flag96 then
						value432 = true
						ok = nil
						result = nil
					end

					repeat
						if value432 or type(flag96.ReadOwnerEggs) == "function" then
							if not value432 then
								if not value432 then
									ok, result = pcall(flag96.ReadOwnerEggs, localPlayer.UserId)
								end
							end

							value432 = value432 or ok and type(result) == "table"

							if value432 then
								if type(result) ~= "table" then
									result = result54 and result54.EggInventory
								end

								if type(result) == "table" then
									for k, value433 in pairs(result) do
										if type(value433) == "table" and value433.Placement == nil and value433.IsFavorite ~= true and value433.Favorite ~= true and value433.InFuse ~= true then
											local assetCategory = value433.AssetCategory or value433.Category
											local value434

											if directory and assetCategory then
												value434 = directory[assetCategory]
											else
												value434 = nil
											end

											local flag327 = func136(value433, value434)
											local flag328 = flag327 < sellUnderGen

											if flag328 then
												flag328 = not ((tbl9.SellNonRiftRecipeEggs == true or tbl9.ShatteredRiftFarm == true) and func87(assetCategory, value434))
											end

											if flag328 then
												sellEggs[#sellEggs + 1] = {
													uid = tostring(value433.Uid or k),
													cat = assetCategory,
													cfg = value434,
													earn = flag327,
													rec = value433,
													price = 0,
												}
											end
										end
									end
								end

								local value435 = tbl266
								local value436 = tbl266
								tbl266.sellPets = sellPets
								value435.sellEggs = sellEggs
								value436.sellFloor = sellUnderGen
								return sellPets, sellEggs, sellUnderGen
							end
						end

						value432 = true
						result = nil
					until not true
				end

				local function func303()
					local stands = workspace:FindFirstChild("Stands")
					stands = stands and stands:FindFirstChild("Prompts")
					local sellHeldAsset

					if stands then
						sellHeldAsset = stands:FindFirstChild("SellHeldAsset") or stands:FindFirstChild("SellAll")
					else
						sellHeldAsset = stands
					end

					if not sellHeldAsset or not sellHeldAsset:IsA("BasePart") then
						return
					end
					local proximityPrompt = sellHeldAsset:FindFirstChildWhichIsA("ProximityPrompt")

					if proximityPrompt then
						pcall(function()
							proximityPrompt.HoldDuration = 0
							proximityPrompt.RequiresLineOfSight = false
							proximityPrompt.MaxActivationDistance = 14
							proximityPrompt.ClickablePrompt = true
						end)
					end

					local vector = Vector3.new(sellHeldAsset.CFrame.LookVector.X, 0, sellHeldAsset.CFrame.LookVector.Z)

					if vector.Magnitude < 0.15 then
						vector = Vector3.new(sellHeldAsset.CFrame.RightVector.X, 0, sellHeldAsset.CFrame.RightVector.Z)
					end

					local unit = vector.Magnitude > 0.15 and vector.Unit or Vector3.new(1, 0, 0)
					local n = sellHeldAsset.Position + unit * 5
					local n9 = sellHeldAsset.Position - unit * 5
					local character = localPlayer.Character
					local flag329

					if not character then
						flag329 = nil
					else
						local humanoid = character:FindFirstChildOfClass("Humanoid")
						local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

						if humanoid and humanoidRootPart and not (humanoid.Health <= 0) then
							flag329 = humanoidRootPart
						else
							flag329 = nil
						end
					end

					local num21 = n

					if flag329 and Vector3.new(flag329.Position.X - n.X, 0, flag329.Position.Z - n.Z).Magnitude > Vector3.new(flag329.Position.X - n9.X, 0, flag329.Position.Z - n9.Z).Magnitude + 1.5 then
						num21 = n9
					end

					local n10 = sellHeldAsset.Position.Y + 3.2

					pcall(function()
						local vector2 = Vector3.new(num21.X, sellHeldAsset.Position.Y + 16, num21.Z)
						local raycastParams = RaycastParams.new()
						raycastParams.FilterType = Enum.RaycastFilterType.Exclude
						local filterDescendantsInstances = { localPlayer.Character, sellHeldAsset }

						if obj16 then
							filterDescendantsInstances[#filterDescendantsInstances + 1] = obj16
						end

						raycastParams.FilterDescendantsInstances = filterDescendantsInstances
						local hit = workspace:Raycast(vector2, Vector3.new(0, -80, 0), raycastParams)

						if hit then
							n10 = hit.Position.Y + 3
						end
					end)

					if flag329 and Vector3.new(flag329.Position.X - num21.X, 0, flag329.Position.Z - num21.Z).Magnitude < 6 then
						local value437 = n10
						n10 = math.min
						n10 = n10(value437, flag329.Position.Y)
					end

					return Vector3.new(num21.X, n10, num21.Z), sellHeldAsset, proximityPrompt
				end

				local function func304(flag330)
					local flag331 = flag330 and flag330.uid and tostring(flag330.uid)
					if not flag331 then
						return false
					end
					local character = localPlayer.Character
					character = character and character:FindFirstChildWhichIsA("Tool")
					local attribute

					if not character then
						attribute = nil
					elseif character:GetAttribute("ItemType") == "Gear" then
						attribute = nil
					elseif not character then
						attribute = nil
					else
						attribute = character:GetAttribute("UID") or character:GetAttribute("Uid")

						if type(attribute) ~= "string" or attribute == "" then
							attribute = nil
						end
					end

					if attribute == flag331 then
						return true
					end
					local now2 = os.clock()
					if now2 - (tbl266.lastWear or 0) < 0.4 then
						return false
					end
					local str146 = tostring(flag331)

					local function func305(instance10)
						if not instance10 then
							return
						end

						for _, child in ipairs(instance10:GetChildren()) do
							if not child:IsA("Tool") then
								continue
							end
							local attribute2

							if not child then
								attribute2 = nil
							else
								attribute2 = child:GetAttribute("UID") or child:GetAttribute("Uid")

								if type(attribute2) ~= "string" or attribute2 == "" then
									attribute2 = nil
								end
							end

							if attribute2 ~= str146 then
								continue
							end
							return child
						end
					end

					local character3 = func305(localPlayer.Character) or func305(localPlayer:FindFirstChild("Backpack"))
					local obj32 = select(1, func83())

					if character3 and obj32 then
						tbl266.lastWear = now2

						if character3.Parent ~= localPlayer.Character then
							pcall(function()
								obj32:EquipTool(character3)
							end)
						end

						local tool = localPlayer.Character and localPlayer.Character:FindFirstChildWhichIsA("Tool")
						local attribute2

						if not tool then
							attribute2 = nil
						else
							attribute2 = tool:GetAttribute("UID") or tool:GetAttribute("Uid")

							if type(attribute2) ~= "string" or attribute2 == "" then
								attribute2 = nil
							end
						end

						return attribute2 == flag331
					end

					tbl266.lastWear = now2

					if flag330.kind == "egg" then
						func277("EggWorld", "AskWearTool", flag331)
					else
						func277("PenRoster", "AskWear", flag331)
					end

					return false
				end

				local function func306(flag332)
					if not flag332 or not flag332.uid then
						return false
					end
					local character = localPlayer.Character
					local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
					character = character and character:FindFirstChildWhichIsA("Tool")
					local attribute = character and (character:GetAttribute("UID") or character:GetAttribute("Uid"))
					local num22
					num22, num22 = func303()
					if not humanoidRootPart or tostring(attribute) ~= tostring(flag332.uid) or not num22 or (humanoidRootPart.Position - num22.Position).Magnitude >= 13.5 then
						return false
					end
					return func278("PetSatchel", "SellSelection", { Assets = flag332.kind == "pet" and { flag332.uid } or {}, Eggs = flag332.kind == "egg" and { flag332.uid } or {} })
				end

				local function func307()
					local list81, list82 = func302()

					if tbl9.AutoSellPets == true and #list81 > 0 then
						table.sort(list81, function(param168, param169)
							return param168.earn < param169.earn
						end)

						list81[1].kind = "pet"
						return list81[1]
					end

					if tbl9.AutoSellEggs == true and #list82 > 0 then
						table.sort(list82, function(param170, param171)
							return param170.earn < param171.earn
						end)

						list82[1].kind = "egg"
						return list82[1]
					end
				end

				local function func308()
					if not tbl9.AutoSellPets and not tbl9.AutoSellEggs then
						return
					end

					if tbl266.expectSold then
						local character = localPlayer.Character
						character = character and character:FindFirstChildWhichIsA("Tool")

						if character then
							if character:GetAttribute("ItemType") ~= "Gear" then
								if character then
									if type(character:GetAttribute("UID") or character:GetAttribute("Uid")) == "string" then
									end
								end
							end
						end

						local eggInventory = func279()

						if eggInventory then
							eggInventory = tbl266.expectSold.kind == "egg" and eggInventory.EggInventory or eggInventory.Inventory
						end

						if type(eggInventory) == "table" and eggInventory[tbl266.expectSold.uid] == nil then
							if tbl266.expectSold.kind == "egg" then
								tbl266.soldEggs = tbl266.soldEggs + 1
							else
								tbl266.soldPets = tbl266.soldPets + 1
							end

							if flag138 and flag138.sold then
								pcall(flag138.sold, tbl266.expectSold)
							end

							tbl266.expectSold = nil
						end
					end

					if flag12 or flag11 or tbl266.job ~= "sell" then
						return
					end
					local character = localPlayer.Character
					local humanoidRootPart

					if not character then
						humanoidRootPart = nil
					else
						local humanoid = character:FindFirstChildOfClass("Humanoid")
						humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

						if not (not not humanoid and not not humanoidRootPart and not (humanoid.Health <= 0)) then
							humanoidRootPart = nil
						end
					end

					local result55 = func303()
					if not result55 then
						return
					end

					if not humanoidRootPart or typeof(result55) ~= "Vector3" or not (Vector3.new(humanoidRootPart.Position.X - result55.X, 0, humanoidRootPart.Position.Z - result55.Z).Magnitude < 5.5) then
						return
					end
					local expectSold = tbl266.expectSold or func307()
					if not expectSold then
						return
					end

					if not func304(expectSold) then
						tbl266.sellWhy = "holding item"
						return
					end
					local now2 = os.clock()
					if now2 - tbl266.lastSell < 1 then
						return
					end
					tbl266.lastSell = now2
					tbl266.sellWhy = "selling"
					if not func306(expectSold) then
						tbl266.sellWhy = "sale unavailable"
						return
					end

					tbl266.expectSold = {
						uid = expectSold.uid,
						kind = expectSold.kind,
						name = expectSold.cfg and expectSold.cfg.DisplayName or expectSold.cat,
						earn = expectSold.earn,
						cfg = expectSold.cfg,
						cat = expectSold.cat,
					}

					func82("plot", "sell held", expectSold.kind, expectSold.uid)
				end

				local function func309()
					if tbl9.ClaimIndex ~= true then
						return
					end

					if tbl266.claimBusy or tbl266.job == "sell" then
						return
					end
					local now2 = os.clock()
					if now2 - (tbl266.lastClaim or 0) < 8 then
						return
					end
					tbl266.lastClaim = now2
					tbl266.claimBusy = true
					local Codex = func276("Codex", "AskRedeemAll")

					if not Codex then
						tbl266.claimWhy = "no remote"
						tbl266.claimBusy = false
						return
					end

					local ok, result, result2, result3 = pcall(function()
						return Codex:InvokeServer()
					end)

					if not ok then
						tbl266.claimWhy = tostring(result)
					elseif result == true then
						local n = 0

						if type(result3) == "table" then
							for i in ipairs(result3) do
								n += 1
							end

							if n == 0 then
								for k in pairs(result3) do
									n += 1
								end
							end
						end

						if n > 0 then
							tbl266.claimIndex = tbl266.claimIndex + n
							tbl266.claimWhy = "claimed " .. n

							if flag138 and flag138.rewards then
								pcall(flag138.rewards, n)
							end
						else
							tbl266.claimWhy = "nothing to claim"
						end
					else
						tbl266.claimWhy = tostring(result2 or "nothing to claim")
					end

					tbl266.claimBusy = false
				end

				local function func310()
					if tbl9.GhostTreadmill == true then
						local character = localPlayer.Character
						local humanoid = character and character:FindFirstChildOfClass("Humanoid")
						local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
						local result56 = func283()
						if not (humanoid and humanoidRootPart and humanoid.Health > 0 and result56) then
							return
						end

						if not tbl266.ghostMounted then
							local n = result56.Position + Vector3.new(0, result56.Size.Y * 0.5 + 3.2, 0)

							if not func286(humanoidRootPart) or math.abs(humanoidRootPart.Position.Y - result56.Position.Y) >= 10 then
								tbl266.job = "belt"
								func292(n)
								return
							end

							flag100 = false
							flag99 = nil
							local now2 = os.clock()

							if now2 - (tbl266.lastGhostMount or 0) >= 1.2 then
								tbl266.lastGhostMount = now2

								local ok, result = pcall(function()
									return func277("Treadmill", "AskWearStill")
								end)

								if ok then
									tbl266.ghostMounted = true
									tbl266.ghostMountedAt = now2
									tbl266.training = true
									tbl266.job = "ghost"
								else
									func82("plot", "ghost wear fail", tostring(result))
								end
							end

							return
						end

						tbl266.job = "ghost"
						if os.clock() - (tbl266.ghostMountedAt or 0) < 0.3 then
							return
						end

						pcall(function()
							humanoidRootPart.Anchored = false
							humanoid.PlatformStand = false
							humanoid.Sit = false
							local physics = Enum.HumanoidStateType.Physics

							if humanoid:GetState() == physics then
								humanoid:ChangeState(Enum.HumanoidStateType.Running)
							end
						end)

						return
					end

					if tbl266.ghostMounted or tbl266.job == "ghost" then
						stopGhost2(false)
					end

					local flag333 = str37 and str37.running == true and str37.state == "Scan" and str37.target == nil and str37.carrying ~= true and str37.heldUid == nil and (tbl266.training == true or tbl266.job == "belt")
					local trainWhenIdle = tbl9.TrainWhenIdle == true and func88() and str37 and str37.running == true and (str37.allowTrain and str37.allowTrain() == true or flag333)
					if tbl9.AutoTreadmill ~= true and not trainWhenIdle then
						leave2()
						return
					end

					if str37 and str37.running and str37.allowTrain and not str37.allowTrain() and not flag333 then
						if tbl266.training or tbl266.job == "belt" then
							leave2()
						end

						return
					end

					local value438 = nil
					local value439 = nil
					local value440 = nil
					local value441 = nil
					local value442 = nil

					repeat
						local result57 = func88()

						if result57 then
							result57 = (tonumber(tbl9.ReadyEarly) or 4) >= func252()
						end

						local flag334

						if value438 then
							flag334 = value438
						elseif result57 then
							flag334 = result57
						else
							local result58 = func88()

							if result58 then
								local value443 = str37

								if str37 then
									local running = str37.running

									if running then
										flag334 = not str37.allowTrain or str37.allowTrain() ~= true
									else
										flag334 = running
									end
								else
									flag334 = value443
								end
							else
								flag334 = result58
							end
						end

						if flag334 then
							if tbl266.training or tbl266.job == "belt" then
								leave2()
							end

							return
						end

						while true do
							if value439 or func253() then
								if not value439 then
									value440, value441 = func288()
								end

								if value439 or #value440 > 0 and value441 < func290() then
									if not value439 then
										value442 = true
									end

									if value442 then
										value438 = true
									end

									value439 = false

									if not value438 then
										local now2 = os.clock()
										local result59 = func279()
										local lastPower = tonumber(result59 and result59.SpeedPower) or 0

										if tbl266.lastPower and now2 > tbl266.lastPowerAt then
											local n = now2 - tbl266.lastPowerAt

											if n > 0.2 then
												local n9 = math.max(0, lastPower - tbl266.lastPower)
												tbl266.trainEarned = tbl266.trainEarned + n9
												tbl266.trainRate = n9 / n

												if n9 > 0 then
													tbl266.lastPowerGainAt = now2
												end
											end
										end

										tbl266.lastPower = lastPower
										tbl266.lastPowerAt = now2
										local result60 = func283()
										local n

										if result60 then
											n = result60.Position + Vector3.new(0, result60.Size.Y * 0.5 + 3.2, 0)
										else
											n = nil
										end

										local character = localPlayer.Character
										local humanoidRootPart

										if not character then
											humanoidRootPart = nil
										else
											local humanoid = character:FindFirstChildOfClass("Humanoid")
											humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

											if not (not not humanoid and not not humanoidRootPart and not (humanoid.Health <= 0)) then
												humanoidRootPart = nil
											end
										end

										if not n or not humanoidRootPart then
											return
										end
										tbl266.job = "belt"
										local result61 = func283()
										local flag335 = not result61 or not humanoidRootPart

										if not flag335 then
											local flag336

											if func286(humanoidRootPart) then
												flag336 = math.abs(humanoidRootPart.Position.Y - result61.Position.Y) < 10
											else
												flag336 = false
											end

											flag335 = not flag336
										end

										if flag335 then
											tbl266.training = false
											func292(n)
											return
										end

										flag100 = false
										flag99 = nil
										if tbl266.training then
											return
										end
										local value444 = obj16
										local flag337

										if obj16 then
											flag337 = value444
										else
											flag337 = now2 - tbl266.lastTrain < 1.2
										end

										if flag337 then
											return
										end
										tbl266.lastTrain = now2

										local ok, result, result2 = pcall(function()
											return func277("Treadmill", "AskWearStill")
										end)

										local value445 = tbl266
										local training = nil
										local value446 = nil

										if ok then
											training = true
											value446 = nil

											if result == true then
												value446 = true
											end
										end

										if not value446 then
											local result62 = func283()
											training = not not result62 and not not humanoidRootPart

											if training then
												if func286(humanoidRootPart) then
													training = math.abs(humanoidRootPart.Position.Y - result62.Position.Y) < 10
												else
													training = false
												end
											end
										end

										value445.training = training

										if not ok or result ~= true then
											local func311 = func82
											local str147 = tostring(result2 or result)
											func311("plot", "wear fail", str147)
										end

										return
									end
								end
							end

							if value438 then
								break
							end
							value442 = func291()
							local flag338 = true
							value439 = true
							if not true then
								value439 = flag338
								break
							end
						end
					until not value438
				end

				local function func312()
					local now2 = os.clock()
					if now2 - tbl266.lastPaint < 0.45 then
						return
					end
					tbl266.lastPaint = now2
					local str148 = "idle"

					if func253() then
						if func142() and tbl9.AutoPlaceEggs ~= true then
							str148 = "night loop"
						elseif tbl266.job ~= "pad" then
							str148 = not tbl266.lastPlaceWhy and "running" or tostring(tbl266.lastPlaceWhy)
						else
							str148 = "flying to plot"
						end
					end

					local text = str148 .. " · placed " .. tbl266.placed .. " · hatched " .. tbl266.hatched
					local autoPlaceEggs = tbl10.AutoPlaceEggs

					if autoPlaceEggs and autoPlaceEggs.status then
						pcall(function()
							autoPlaceEggs.status.Text = text
						end)
					end

					local text2 = (not tbl9.UpgTrails and "idle" or "running") .. " · bought " .. tbl266.bought
					local upgTrails = tbl10.UpgTrails

					if upgTrails and upgTrails.status then
						pcall(function()
							upgTrails.status.Text = text2
						end)
					end

					local list83, list84, value447 = func302()
					local n = #list83
					local n9 = #list84
					local autoSellPets = tbl9.AutoSellPets or tbl9.AutoSellEggs
					local str149 = "off"

					if autoSellPets then
						local value448 = nil

						if value447 <= 0 then
							value448 = true
							str149 = "enter sell-under value (e.g. 250k); any sells nothing"
						end

						if not value448 then
							if tbl266.job ~= "sell" then
								str149 = n + n9 ~= 0 and "selling" or "nothing under the floor"
								value448 = true
							end

							if not value448 then
								local character = localPlayer.Character
								local value449

								if not character then
									value449 = nil
								else
									local humanoid = character:FindFirstChildOfClass("Humanoid")
									local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

									if humanoid and humanoidRootPart and not (humanoid.Health <= 0) then
										value449 = humanoidRootPart
									else
										value449 = nil
									end
								end

								if value449 then
									local result63 = func303()

									if typeof(result63) == "Vector3" and Vector3.new(value449.Position.X - result63.X, 0, value449.Position.Z - result63.Z).Magnitude < 5.5 then
										str149 = tbl266.sellWhy or "equipping"
										value448 = true
									end
								end

								if not value448 then
									str149 = "flying to seller"
								end
							end
						end
					end

					local text3 = str149 .. " · sold " .. tbl266.soldPets .. " · " .. n .. " waiting"
					local autoSellPets2 = tbl10.AutoSellPets

					if autoSellPets2 and autoSellPets2.status then
						pcall(function()
							autoSellPets2.status.Text = text3
						end)
					end

					local text4 = str149 .. " · sold " .. tbl266.soldEggs .. " · " .. n9 .. " waiting"
					local autoSellEggs = tbl10.AutoSellEggs

					if autoSellEggs and autoSellEggs.status then
						pcall(function()
							autoSellEggs.status.Text = text4
						end)
					end

					local text5 = (not tbl9.ClaimIndex and "off" or tbl266.claimWhy or "running") .. " · claimed " .. tbl266.claimIndex
					local claimIndex = tbl10.ClaimIndex

					if claimIndex and claimIndex.status then
						pcall(function()
							claimIndex.status.Text = text5
						end)
					end

					if tbl266.job == "leave" then
						local text6 = "leaving · " .. func275(tbl266.trainRate) .. "/s · earned " .. func275(tbl266.trainEarned) .. " this session"
						local autoTreadmill = tbl10.AutoTreadmill

						if autoTreadmill and autoTreadmill.status then
							local function func313()
								autoTreadmill.status.Text = text6
							end

							pcall(func313)
							return
						end
					elseif tbl266.job == "belt" and not tbl266.training then
						local text6 = "walking to treadmill · " .. func275(tbl266.trainRate) .. "/s · earned " .. func275(tbl266.trainEarned) .. " this session"
						local autoTreadmill = tbl10.AutoTreadmill

						if autoTreadmill and autoTreadmill.status then
							pcall(function()
								autoTreadmill.status.Text = text6
							end)

							return
						end
					elseif tbl266.training then
						local text6 = "training · " .. func275(tbl266.trainRate) .. "/s · earned " .. func275(tbl266.trainEarned) .. " this session"
						local autoTreadmill = tbl10.AutoTreadmill

						if autoTreadmill and autoTreadmill.status then
							local function func314()
								autoTreadmill.status.Text = text6
							end

							pcall(func314)
							return
						end
					else
						local text6 = "not training · " .. func275(tbl266.trainRate) .. "/s · earned " .. func275(tbl266.trainEarned) .. " this session"
						local autoTreadmill = tbl10.AutoTreadmill

						if autoTreadmill and autoTreadmill.status then
							pcall(function()
								autoTreadmill.status.Text = text6
							end)
						end
					end
				end

				local function func315()
					local character = localPlayer.Character
					local flag339

					if not character then
						flag339 = nil
					else
						local humanoid = character:FindFirstChildOfClass("Humanoid")
						local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
						local value450

						if humanoid and humanoidRootPart and not (humanoid.Health <= 0) then
							value450 = humanoidRootPart
						else
							value450 = nil
						end

						flag339 = value450
					end

					if flag12 or flag11 then
						if (flag339 and func286(flag339) or tbl266.training == true or tbl266.ghostMounted == true or tbl266.job == "belt" or tbl266.job == "ghost" or tbl266.job == "leave") and not tbl266.scrambleReleaseRequested then
							tbl266.scrambleReleaseRequested = true
							func294(true)
							tbl266.ghostMounted = false
							tbl266.ghostMountedAt = nil

							pcall(function()
								flag339.Anchored = false
								flag339.AssemblyLinearVelocity = Vector3.new(0, math.min(flag339.AssemblyLinearVelocity.Y, 0), 0)
								flag339.AssemblyAngularVelocity = Vector3.zero
								local humanoid = flag339.Parent and flag339.Parent:FindFirstChildOfClass("Humanoid")

								if humanoid then
									humanoid.PlatformStand = false
									humanoid.Sit = false
									humanoid.Jump = false
									humanoid:ChangeState(Enum.HumanoidStateType.Running)
								end
							end)
						end

						tbl266.job = "idle"
						tbl266.training = false
						return
					end

					tbl266.scrambleReleaseRequested = false
					local flag340 = str37 and type(str37.haltUntil) == "number"

					if flag340 then
						local haltUntil = str37.haltUntil
						flag340 = os.clock() < haltUntil
					end

					if flag340 and not str37.running then
						tbl266.job = "idle"
						tbl266.training = false
						flag100 = false
						flag99 = nil
						return
					end

					if tbl266.job == "leave" and (func253() or func254()) then
						tbl266.job = "idle"
						tbl266.training = false
						func294(false)
					end

					if tbl266.job == "leave" then
						tbl266.training = false

						if flag339 and func286(flag339) then
							local func316 = func293
							local flag341

							if not str37 or not str37.running then
								flag341 = false
							else
								local state = str37.state
								flag341 = state == "BaitJump" or state == "GoEgg" or state == "Grab" or state == "Return" or state == "Bank" or state == "Chase" or state == "Safe" or state == "FeedGo" or state == "Feed" or state == "ChestGo" or state == "ChestOpen"
							end

							func316(flag341)
							return
						end

						tbl266.job = "idle"
						local flag342

						if not str37 or not str37.running then
							flag342 = false
						else
							local state = str37.state
							flag342 = state == "BaitJump" or state == "GoEgg" or state == "Grab" or state == "Return" or state == "Bank" or state == "Chase" or state == "Safe" or state == "FeedGo" or state == "Feed" or state == "ChestGo" or state == "ChestOpen"
						end

						if not flag342 and (not str37 or not str37.running) and not flag12 and not flag11 then
							flag100 = false
							flag99 = nil
						end

						local func317 = func107
						local result64 = func131()
						func317(result64)
						if not flag97 then
							return
						end

						if tbl9.Flight or tbl9.BypassSpeed or func88() or flag12 or flag11 or tbl9.AutoPlaceEggs or tbl9.NightEggLoop or tbl9.AutoTreadmill or tbl9.AutoHatch or flag100 and tbl9.StealTravel == "Flight" then
							func91()
							func92()
							func96(true)
							return
						end

						if next(tbl147) then
							func96(false)
						end

						return
					end

					local flag343

					if not str37 or not str37.running then
						flag343 = false
					else
						local state = str37.state
						flag343 = state == "BaitJump" or state == "GoEgg" or state == "Grab" or state == "Return" or state == "Bank" or state == "Chase" or state == "Safe" or state == "FeedGo" or state == "Feed" or state == "ChestGo" or state == "ChestOpen"
					end

					if flag343 then
						if tbl266.job == "sell" then
							tbl266.job = "idle"
						end

						if flag339 and func286(flag339) then
							tbl266.job = "leave"
							func293(true)
						end

						return
					end

					local flag344, list85, flag345, flag346

					if (tbl9.AutoSellPets or tbl9.AutoSellEggs) and func137(tbl9.SellUnderGen) > 0 then
						local list86, list87 = func302()

						if (tbl9.AutoSellPets and #list86 or 0) + (tbl9.AutoSellEggs and #list87 or 0) > 0 then
							if flag339 and func286(flag339) then
								tbl266.job = "leave"
								func293()
								return
							end

							local result65 = func303()

							if flag339 then
								local result66 = func303()

								if not flag339 or typeof(result66) ~= "Vector3" or not (Vector3.new(flag339.Position.X - result66.X, 0, flag339.Position.Z - result66.Z).Magnitude < 5.5) then
									tbl266.job = "sell"

									if result65 then
										func292(result65, true)
									end

									return
								end
							end

							tbl266.job = "sell"

							if flag100 or flag99 then
								flag100 = false
								flag99 = nil

								if not tbl9.Flight then
									func94(select(1, func83()), flag339, true)
									flag106 = false
								end
							end

							return
						end

						flag344 = nil
						list85 = nil
						flag345 = nil
						flag346 = nil

						if tbl266.job == "sell" then
							tbl266.job = "idle"
							flag100 = false
							flag99 = nil
							flag344 = nil
							list85 = nil
							flag345 = nil
							flag346 = nil
						end
					else
						flag344 = nil
						list85 = nil
						flag345 = nil
						flag346 = nil

						if tbl266.job == "sell" then
							tbl266.job = "idle"
							flag100 = false
							flag99 = nil
							flag344 = nil
							list85 = nil
							flag345 = nil
							flag346 = nil
						end
					end

					repeat
						if flag344 or func253() then
							local flag347 = not flag344

							if flag347 then
								list85, flag345 = func288()
							end

							flag347 = flag347 and type(list85) == "table" and #list85 > 0 and tonumber(flag345) ~= nil and flag345 < func290()
							local autoPlaceEggs2 = tbl9.AutoPlaceEggs == true or func142()

							if flag344 or autoPlaceEggs2 or flag347 then
								if not flag344 then
									flag346 = true
								end

								if flag346 then
									if flag339 and func286(flag339) then
										tbl266.training = false
										func294(false)

										pcall(function()
											flag339.Anchored = false
											flag339.AssemblyLinearVelocity = Vector3.new(0, math.min(flag339.AssemblyLinearVelocity.Y, 0), 0)
											flag339.AssemblyAngularVelocity = Vector3.zero
											local humanoid = flag339.Parent and flag339.Parent:FindFirstChildOfClass("Humanoid")

											if humanoid then
												humanoid.PlatformStand = false
												humanoid.Sit = false
												humanoid.Jump = false
												humanoid:ChangeState(Enum.HumanoidStateType.Running)
											end
										end)

										tbl266.job = "pad"
										local result67 = func284()

										if result67 then
											func292(result67, true)
										end

										return
									end

									tbl266.job = "pad"
									local result68 = func284()

									if result68 then
										if flag339 then
											local petArea = func281()
											petArea = petArea and petArea.PetArea
											local flag348

											if not petArea or not flag339 then
												flag348 = false
											else
												local result69 = func283()
												local flag349 = not not result69 and not not flag339

												if flag349 then
													if func286(flag339) then
														flag349 = math.abs(flag339.Position.Y - result69.Position.Y) < 10
													else
														flag349 = false
													end
												end

												flag348 = not flag349 and func282(petArea, flag339.Position, 2)
											end

											if flag348 then
												flag100 = false
												flag99 = nil
												return
											end

											if result68.Y + 35 < flag339.Position.Y then
												local parent = flag339.Parent
												local humanoid = parent and parent:FindFirstChildOfClass("Humanoid")

												pcall(function()
													flag339.Anchored = false
													flag339.CFrame = CFrame.new(result68.X, result68.Y + 3.2, result68.Z)
													flag339.AssemblyLinearVelocity = Vector3.zero
													flag339.AssemblyAngularVelocity = Vector3.zero

													if humanoid then
														humanoid.PlatformStand = false
														humanoid.Sit = false
														humanoid.Jump = false
														humanoid:ChangeState(Enum.HumanoidStateType.Running)
													end
												end)

												return
											end
										end

										func292(result68, true)
									end

									return
								end

								local flag350 = not (func253() or func254())

								if flag350 then
									flag350 = tbl9.AutoTreadmill == true or tbl9.GhostTreadmill == true or tbl9.TrainWhenIdle == true and func88()
								end

								local flag351 = not func88() or not str37 or not str37.running or str37.allowTrain and str37.allowTrain() == true
								if flag350 and flag351 then
									func310()
									return
								end

								if tbl266.training or tbl266.job == "belt" then
									leave2()
									return
								end

								if tbl266.job == "pad" or tbl266.job == "belt" or tbl266.job == "sell" then
									tbl266.job = "idle"
								end

								if (not str37 or not str37.running) and not flag12 and not flag11 then
									flag100 = false
									flag99 = nil
								end

								return
							end
						end

						flag346 = func291()
						flag344 = true
					until not true
				end

				local value451 = nil

				local function func318(list88, str150)
					local tbl271 = {}

					for i = 1, #list88 do
						local entry47 = list88[i]
						local str151 = tostring(entry47.cat or "?")
						local str152 = str150 .. ":" .. str151
						local entry48 = tbl271[str152]

						if not entry48 then
							entry48 = {
								kind = str150,
								cat = str151,
								cfg = entry47.cfg,
								earn = entry47.earn,
								rec = entry47.rec,
								price = 0,
								n = 0,
							}

							tbl271[str152] = entry48
						end

						entry48.n = entry48.n + 1
						entry48.price = entry48.price + (tonumber(entry47.price) or 0)

						if (entry47.earn or 0) < (entry48.earn or 0) then
							entry48.earn = entry47.earn
						end
					end

					local list89 = {}

					for _, value452 in pairs(tbl271) do
						list89[#list89 + 1] = value452
					end

					table.sort(list89, function(param172, param173)
						if param172.earn ~= param173.earn then
							return param172.earn < param173.earn
						end
						return tostring(param172.cat) < tostring(param173.cat)
					end)

					return list89
				end

				local function func319(list90, list91, param174, flag352)
					list90 = type(list90) == "table" and list90 or {}
					list91 = type(list91) == "table" and list91 or {}
					local n = tonumber(param174) or 0
					local tbl272 = {}
					local tbl273 = {}
					local str153

					if type(flag352) == "string" and flag352 ~= "" then
						str153 = flag352
					elseif n <= 0 then
						str153 = "set a $/s floor or nothing sells"
					else
						tbl272 = func318(list90, "pet")
						tbl273 = func318(list91, "egg")

						if #list90 + #list91 ~= 0 then
							str153 = #list90 .. " pets · " .. #list91 .. " eggs under " .. func275(n) .. "/s"
						else
							str153 = "nothing under " .. func275(n) .. "/s — plot/pen pets stay"
						end
					end

					local value453 = str153
					local sellPreview = tbl10.SellPreview

					if sellPreview and sellPreview.status then
						pcall(function()
							sellPreview.status.Text = value453
						end)
					end

					if not flag101 or not flag101.sellPreview then
						local sellPreview2 = tbl10.SellPreview

						if sellPreview2 and sellPreview2.status then
							local text = "preview missing"

							pcall(function()
								sellPreview2.status.Text = text
							end)
						end

						func82("plot", "preview missing espApi.sellPreview")
						return
					end

					local ok, result = pcall(flag101.sellPreview, tbl272, tbl273, str153)

					if not ok then
						local text = "failed · " .. tostring(result)
						local sellPreview2 = tbl10.SellPreview

						if sellPreview2 and sellPreview2.status then
							pcall(function()
								sellPreview2.status.Text = text
							end)
						end

						local func320 = func82
						local str154 = tostring(result)
						func320("plot", "preview ERR", str154)
						return
					end

					if result ~= true then
						local sellPreview2 = tbl10.SellPreview

						if sellPreview2 and sellPreview2.status then
							local text = "failed to open"

							pcall(function()
								sellPreview2.status.Text = text
							end)
						end
					end
				end

				local function preview2()
					local tbl274 = {}
					local sellPets, sellEggs, sellFloor

					if pcall(function()
						local tbl275 = tbl274
						local tbl276 = tbl274
						local tbl277 = tbl274
						local value454, value455, value456 = func302()
						tbl275[1] = value454
						tbl276[2] = value455
						tbl277[3] = value456
					end) then
						sellPets = tbl274[1]
						sellEggs = tbl274[2]
						sellFloor = tbl274[3]
					else
						sellPets = tbl266.sellPets or {}
						sellEggs = tbl266.sellEggs or {}
						sellFloor = tbl266.sellFloor or func137(tbl9.SellUnderGen)
					end

					func319(sellPets, sellEggs, sellFloor)
				end

				return {
					sync = function()
						local flag353 = not flag12 and not flag11

						if flag353 then
							flag353 = not (tbl9.NightEggLoop or tbl9.AutoPlaceEggs or tbl9.AutoHatch or tbl9.EquipBest or tbl9.UpgTrails or tbl9.UpgTreadmill or tbl9.UpgPen or tbl9.AutoSellPets or tbl9.AutoSellEggs or tbl9.AutoTreadmill or tbl9.GhostTreadmill or tbl9.ClaimIndex)
						end

						if flag353 then
							leave2()
						end

						local func321 = func107
						local result70 = func131()
						func321(result70)
						if not flag97 then
							return
						end
						local flag354 = (tbl9.Flight or tbl9.BypassSpeed) and true

						if not flag354 then
							flag354 = func88()

							if not flag354 then
								flag354 = (tbl9.AutoPlaceEggs or tbl9.NightEggLoop or tbl9.AutoTreadmill) and true or not not tbl9.AutoHatch or flag100 and tbl9.StealTravel == "Flight"
							end
						end

						if flag354 then
							func91()
							func92()
							func96(true)
							return
						end

						if next(tbl147) then
							func96(false)
						end
					end,
					stop = function()
						stopGhost2(false)
						tbl266.training = false
						tbl266.job = "idle"

						if not str37 or not str37.running then
							flag100 = false
							flag99 = nil
						end

						local func322 = func107
						local result71 = func131()
						func322(result71)
						if not flag97 then
							return
						end

						if tbl9.Flight or tbl9.BypassSpeed or func88() or tbl9.AutoPlaceEggs or tbl9.NightEggLoop or tbl9.AutoTreadmill or tbl9.AutoHatch or flag100 and tbl9.StealTravel == "Flight" then
							func91()
							func92()
							func96(true)
							return
						end

						if next(tbl147) then
							func96(false)
						end
					end,
					stopGhost = stopGhost2,
					tick = function(...) end,
					wanted = function()
						local nightEggLoop = tbl9.NightEggLoop
						local ghostTreadmill

						if nightEggLoop then
							ghostTreadmill = nightEggLoop
						else
							local autoPlaceEggs = tbl9.AutoPlaceEggs

							if autoPlaceEggs then
								ghostTreadmill = autoPlaceEggs
							else
								local autoHatch = tbl9.AutoHatch

								if autoHatch then
									ghostTreadmill = autoHatch
								else
									local equipBest = tbl9.EquipBest

									if equipBest then
										ghostTreadmill = equipBest
									else
										local upgTrails = tbl9.UpgTrails

										if upgTrails then
											ghostTreadmill = upgTrails
										else
											local upgTreadmill = tbl9.UpgTreadmill

											if upgTreadmill then
												ghostTreadmill = upgTreadmill
											else
												local upgPen = tbl9.UpgPen

												if upgPen then
													ghostTreadmill = upgPen
												else
													local autoSellPets = tbl9.AutoSellPets

													if autoSellPets then
														ghostTreadmill = autoSellPets
													else
														local autoSellEggs = tbl9.AutoSellEggs

														if autoSellEggs then
															ghostTreadmill = autoSellEggs
														else
															local autoTreadmill = tbl9.AutoTreadmill

															if autoTreadmill then
																ghostTreadmill = autoTreadmill
															else
																ghostTreadmill = tbl9.GhostTreadmill or tbl9.ClaimIndex
															end
														end
													end
												end
											end
										end
									end
								end
							end
						end

						return ghostTreadmill
					end,
					driving = function()
						return flag100 == true and (tbl266.job == "pad" or tbl266.job == "sell")
					end,
					penDriving = function()
						return flag100 == true and tbl266.job == "pad"
					end,
					job = function()
						return tbl266.job
					end,
					training = function()
						return tbl266.training == true
					end,
					plotStatus = function()
						local list92, value457 = func288()
						local character = localPlayer.Character
						character = character and character:FindFirstChild("HumanoidRootPart")
						local petArea = func281()
						petArea = petArea and petArea.PetArea

						return {
							placed = tbl266.placed,
							hatched = tbl266.hatched,
							lastPlaceWhy = tbl266.lastPlaceWhy,
							eligible = type(list92) == "table" and #list92 or 0,
							placedCount = tonumber(value457) or 0,
							capacity = func290(),
							ready = func291() == true,
							insidePen = character and petArea and func282(petArea, character.Position, 2) or false,
							onBelt = character and func286(character) or false,
							canPlant = flag96 and type(flag96.PlantEgg) == "function" or false,
							support = obj16 ~= nil,
						}
					end,
					treadmillWalking = function()
						return tbl266.job == "belt"
					end,
					leaving = function()
						return tbl266.job == "leave"
					end,
					leave = leave2,
					kickBelt = function()
						local character = localPlayer.Character
						local humanoidRootPart

						if not character then
							humanoidRootPart = nil
						else
							local humanoid = character:FindFirstChildOfClass("Humanoid")
							humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
							--[=[ SOURCE LEAK ]=] -- discord.gg/x7YbZeezpm

							if not (not not humanoid and not not humanoidRootPart and not (humanoid.Health <= 0)) then
								humanoidRootPart = nil
							end
						end

						if not humanoidRootPart or not func286(humanoidRootPart) then
							if tbl266.training or tbl266.job == "belt" then
								tbl266.training = false
								tbl266.job = "idle"
							end

							return
						end

						local now2 = os.clock()
						if now2 - (tbl266.lastKick or 0) < 0.55 then
							return
						end
						tbl266.lastKick = now2
						tbl266.training = false
						tbl266.job = "leave"
						local func323 = func293
						local flag355

						if not str37 or not str37.running then
							flag355 = false
						else
							local state = str37.state
							flag355 = state == "BaitJump" or state == "GoEgg" or state == "Grab" or state == "Return" or state == "Bank" or state == "Chase" or state == "Safe" or state == "FeedGo" or state == "Feed" or state == "ChestGo" or state == "ChestOpen"
						end

						if not flag355 then
							flag355 = (str37 and str37.running) == true
						end

						func323(flag355)
					end,
					holding = function()
						return tbl266.training == true or tbl266.job == "sell"
					end,
					preview = preview2,
					queuePreview = function()
						local sellPets = type(tbl266.sellPets) == "table" and tbl266.sellPets or {}
						local sellEggs = type(tbl266.sellEggs) == "table" and tbl266.sellEggs or {}
						local num23 = tonumber(tbl266.sellFloor)

						if num23 == nil then
							func319(sellPets, sellEggs, func137(tbl9.SellUnderGen), "opening…")
						else
							func319(sellPets, sellEggs, num23)
						end

						tbl266.previewQueued = true
						if value451 then
							return
						end

						local connection3 = RunService.Stepped:Connect(function()
							if not flag98 then
								return
							end

							if not tbl266.previewQueued then
								return
							end
							tbl266.previewQueued = false
							local obj33 = value451
							value451 = nil
							local ok, result = pcall(preview2)

							if not ok then
								local text = "failed · " .. tostring(result)
								local sellPreview = tbl10.SellPreview

								if sellPreview and sellPreview.status then
									pcall(function()
										sellPreview.status.Text = text
									end)
								end

								local func324 = func82
								local str155 = tostring(result)
								func324("plot", "preview ERR", str155)
							end

							if obj33 then
								tbl146[obj33] = nil

								pcall(function()
									obj33:Disconnect()
								end)
							end
						end)

						if connection3 then
							tbl146[connection3] = true
						end

						value451 = connection3
					end,
					stats = function()
						return {
							hatched = tbl266.hatched,
							soldPets = tbl266.soldPets,
							soldEggs = tbl266.soldEggs,
							placed = tbl266.placed,
							claimIndex = tbl266.claimIndex,
							claimCash = tbl266.claimCash,
						}
					end,
				}
			end

			flag102 = func274()
			local function func325(...) end
			str37.keepHook = function(...) end
			str37.clearBaitRoute = function(...) end

			str37.queueBaitRetry = function(baitRetryWanted)
				if type(baitRetryWanted) ~= "table" then
					return
				end

				if (str37.baitRetryCount or 0) >= 2 then
					return
				end
				str37.baitRetryWanted = baitRetryWanted
				str37.baitRetryCount = (str37.baitRetryCount or 0) + 1
				str37.baitRetryAt = os.clock() + 0.65
			end

			str37.beginBaitJump = function()
				if str37.state == "BaitJump" then
					return
				end
				flag99 = nil
				flag100 = false
				str37.baitJumped = false
				str37.baitHadCarry = str37.carryUid == str37.baitUid
				str37.baitJumpedAt = 0
				str37.baitClaimAt = 0
				str37.baitRejected = false
				str37.baitStrikeSent = false
				str37.baitStrikeAt = 0
				str37.baitStrikeServerAt = 0
				str37.baitLanding = nil
				str37.baitPinFrames = 0
				str37.baitPinStartedAt = nil
				str37.baitReleaseTried = false
				str37.baitReleaseAttempts = 0
				str37.baitReleaseNextAt = 0
				str37.baitReleaseAllowed = false
				str37.baitSettleUntil = 0
				str37.baitDropSeenAt = 0
				str37.baitDeadline = os.clock() + 15
				str37.baitAnchorPart = nil
				str37.baitWasAnchored = false
				func82("steal", str37.state, "->", "BaitJump", "forest bait ready", str37.baitWanted and str37.baitWanted.name or "egg")
				str37.state = "BaitJump"
				str37.since = os.clock()
				str37.baitGeneration = (str37.baitGeneration or 0) + 1
				local baitGeneration = str37.baitGeneration

				if str37.baitWatch then
					str37.baitWatch:Disconnect()
				end

				str37.baitWatch = RunService.Heartbeat:Connect(function()
					if str37.baitGeneration ~= baitGeneration then
						return
					end
					local flag356 = not flag98 or not func88() or not tbl9.ForestBaitJump or str37.state ~= "BaitJump" or flag12 or flag11
					local flag357

					if flag356 then
						flag357 = flag356
					else
						local baitDeadline = str37.baitDeadline
						flag357 = os.clock() >= baitDeadline
					end

					if not flag357 then
						local since = str37.since
						flag357 = os.clock() - since >= 20
					end

					if flag357 then
						local state2 = str37.state == "BaitJump"
						str37.clearBaitRoute()

						if state2 then
							str37.baitNextArea = "None"
							str37.state = str37.carrying and "Return" or "Scan"
							str37.since = os.clock()
							flag99 = nil
							flag100 = false
						end
					end
				end)

				func325()
			end

			str37.findForestBait = function(...) end

			str37.promptIsTarget = function(obj, num24, param175)
				if not obj or not obj.Parent or not func133(obj) then
					return false
				end

				if not num24 then
					return false
				end
				local n = tonumber(param175) or 5
				local rec = num24.rec
				local flag358

				if rec then
					flag358 = num24.rec.Uid and tostring(num24.rec.Uid)
				else
					flag358 = rec
				end

				if flag358 and flag358 ~= "" then
					local parent = obj

					for i = 1, 6 do
						if not parent then
							break
						end
						local value458 = nil

						pcall(function()
							for _, item38 in ipairs({ "Uid", "EggUid", "RecordUid", "AssetUid", "EggId" }) do
								local attribute = parent:GetAttribute(item38)
								if attribute ~= nil and tostring(attribute) == flag358 then
									value458 = true
									return
								end
							end

							local str156 = tostring(parent.Name or "")

							if str156 ~= "" and str156 ~= "CarryAreaEgg" and str156 ~= "SmartPromptPart" and str156 == flag358 then
								value458 = true
							end
						end)

						if value458 then
							return true
						end
						parent = parent.Parent
					end
				end

				if typeof(num24.pos) ~= "Vector3" then
					return false
				end
				local parent = obj.Parent
				local position3

				if parent:IsA("BasePart") then
					position3 = parent.Position
				elseif parent:IsA("Model") then
					local ok, result = pcall(function()
						return parent:GetPivot()
					end)

					position3 = ok and not not result and result.Position or nil
				else
					local isBasePart = parent.Parent and parent.Parent:IsA("BasePart")
					position3 = nil

					if isBasePart then
						position3 = parent.Parent.Position
					end
				end

				if typeof(position3) ~= "Vector3" then
					return false
				end
				return n >= Vector3.new(position3.X - num24.pos.X, 0, position3.Z - num24.pos.Z).Magnitude
			end

			str37.muteHazards = function(param176)
				str37.hazardSaved = str37.hazardSaved or {}

				local function func326(instance11)
					if not instance11 or not instance11:IsA("BasePart") then
						return
					end

					if str37.hazardSaved[instance11] == nil then
						str37.hazardSaved[instance11] = { c = instance11.CanCollide, t = instance11.CanTouch }
					end

					if instance11.CanCollide ~= false then
						instance11.CanCollide = false
					end

					if instance11.CanTouch ~= false then
						instance11.CanTouch = false
					end
				end

				if param176 then
					local now2 = os.clock()
					local hazardOn = str37.hazardOn

					if hazardOn then
						hazardOn = now2 - (str37.hazardAt or 0) < 2.4
					end

					if hazardOn then
						return
					end
					str37.hazardOn = true
					str37.hazardAt = now2
					local objects = workspace:FindFirstChild("__OBJECTS")
					local machines = objects and objects:FindFirstChild("Machines")
					local fuseMachine = machines and machines:FindFirstChild("FuseMachine")

					if fuseMachine then
						func326(fuseMachine)

						for _, descendant in ipairs(fuseMachine:GetDescendants()) do
							func326(descendant)
						end
					end

					if machines then
						for _, descendant in ipairs(machines:GetDescendants()) do
							if descendant:IsA("BasePart") and descendant.CanCollide == true then
								func326(descendant)
							end
						end
					end

					return
				end

				str37.hazardOn = false
				str37.hazardAt = 0

				for k in pairs(str37.hazardSaved) do
					if k.Parent then
						local flag359 = str37.hazardSaved[k]
						-- S​L​ ​|​ ​S​o​u​r​c​e​ ​L​e​a​k | https://discord.gg/x7YbZeezpm

						pcall(function()
							if type(flag359) == "table" then
								k.CanCollide = flag359.c == true
								k.CanTouch = flag359.t == true
								return
							end

							k.CanCollide = flag359 == true
						end)
					end
				end

				str37.hazardSaved = {}
			end

			str37.allowTrain = function(...) end

			str37.muteBelt = function(param177)
				str37.beltSaved = str37.beltSaved or {}

				local function func327(instance12)
					if not instance12 or not instance12:IsA("BasePart") then
						return false
					end
					local lowered15 = string.lower(instance12.Name)
					local parent = instance12.Parent and string.lower(instance12.Parent.Name) or ""
					local obj34 = lowered15

					pcall(function()
						obj34 = string.lower(instance12:GetFullName())
					end)

					local flag360 = lowered15 == "treadmillbottom"
					local pos

					if flag360 then
						pos = flag360
					else
						local flag361 = lowered15 == "bottom"

						if flag361 then
							pos = parent:find("treadmill", 1, true) or obj34:find("treadmill", 1, true)
						else
							pos = flag361
						end
					end

					if pos then
						return true
					end
					local pos2 = lowered15:find("wear", 1, true) or lowered15:find("sensor", 1, true) or lowered15:find("trigger", 1, true) or lowered15:find("hitbox", 1, true) or lowered15:find("activate", 1, true) or lowered15:find("detector", 1, true) or parent:find("wear", 1, true)
					local pos3

					if pos2 then
						pos3 = obj34:find("treadmill", 1, true) or obj34:find("belt", 1, true) or parent:find("treadmill", 1, true)
					else
						pos3 = pos2
					end

					if pos3 then
						return true
					end

					if instance12.CanTouch == true and instance12.Size.Y <= 6 and (lowered15:find("treadmill", 1, true) or parent:find("treadmill", 1, true) or obj34:find("clienttreadmill", 1, true)) then
						return true
					end
					return false
				end

				local function func328(part4)
					local tbl278 = str37.beltSaved[part4]

					if type(tbl278) ~= "table" then
						tbl278 = { cf = part4.CFrame, anchored = part4.Anchored, t = part4.CanTouch, c = part4.CanCollide }
						str37.beltSaved[part4] = tbl278
					end

					pcall(function()
						part4.Anchored = true
						part4.CanTouch = false
						part4.CFrame = tbl278.cf * CFrame.new(0, -80, 0)
					end)
				end

				if param177 then
					str37.beltSunk = true
					local now2 = os.clock()
					local flag362 = not str37.beltOn

					if not flag362 then
						flag362 = now2 - (str37.beltAt or 0) >= 2.4
					end

					if flag362 then
						str37.beltOn = true
						str37.beltAt = now2

						pcall(function()
							local value459, value460, obj35 = func218()

							if obj35 then
								for _, descendant in ipairs(obj35:GetDescendants()) do
									if func327(descendant) then
										func328(descendant)
									end
								end
							end

							local clientTreadmillRenders = workspace:FindFirstChild("__ClientTreadmillRenders")

							if clientTreadmillRenders then
								for _, descendant in ipairs(clientTreadmillRenders:GetDescendants()) do
									if func327(descendant) then
										func328(descendant)
									end
								end
							end
						end)
					end

					for k in pairs(str37.beltSaved) do
						if k.Parent then
							func328(k)
						end
					end

					return
				end

				str37.beltSunk = false
				str37.beltOn = false
				str37.beltAt = 0

				for k, value461 in pairs(str37.beltSaved) do
					if k.Parent and type(value461) == "table" then
						pcall(function()
							k.CFrame = value461.cf
							k.Anchored = value461.anchored == true
							k.CanTouch = value461.t == true
							k.CanCollide = value461.c == true
						end)
					end
				end

				str37.beltSaved = {}
			end

			str37.floorY = function()
				local value462 = select(1, func140())
				if typeof(value462) == "Vector3" then
					return value462.Y
				end
				return 70
			end

			str37.rescueVoid = function(...) end
			str37.resetStuck = function(...) end
			str37.liveCarry = function(...) end
			str37.adoptCarry = function(...) end

			str37.pickSatchelEvent = function()
				if not flag96 or type(flag96.ReadOwnerEggs) ~= "function" then
					return
				end
				local value463 = nil

				pcall(function()
					value463 = flag96.ReadOwnerEggs(localPlayer.UserId)
				end)

				if type(value463) ~= "table" then
					return
				end
				local eventKeepGen = func137(tbl9.EventKeepGen)
				local value464 = nil
				local value465 = nil

				for k, value466 in pairs(value463) do
					if type(value466) == "table" and value466.HasParasite == true and value466.Placement == nil then
						local uid = value466.Uid or k

						if not str37.eventSkip or not str37.eventSkip[uid] then
							local assetCategory = value466.AssetCategory
							local displayName

							if directory and assetCategory then
								displayName = directory[assetCategory]
							else
								displayName = nil
							end

							local flag363 = func136(value466, displayName)

							if not (eventKeepGen > 0) or not (eventKeepGen <= flag363) then
								if str37.findEventEggTool(uid) then
									if not value464 or flag363 < value464.earn then
										value464 = { uid = uid, earn = flag363 }
										displayName = displayName and (displayName.DisplayName or value466.AssetCategory)
										value464.name = displayName or tostring(value466.AssetCategory)
									end
								else
									value465 = value465 or uid
								end
							end
						end
					end
				end

				if not value464 and value465 then
					str37.wearEventEgg(value465)
				end

				return value464
			end

			str37.monsterStand = function()
				local monsterParasiteMonsters = workspace:FindFirstChild("MonsterParasiteMonsters")
				if not monsterParasiteMonsters then
					return
				end
				local model = nil

				for _, child in ipairs(monsterParasiteMonsters:GetChildren()) do
					local userId = localPlayer.UserId

					if child:GetAttribute("OwnerUserId") == userId then
						model = child
						break
					else
						model = nil
					end
				end

				model = model or monsterParasiteMonsters:FindFirstChildWhichIsA("Model")
				if not model then
					return
				end
				local rootPart = model:FindFirstChild("RootPart") or model.PrimaryPart
				if not rootPart or not rootPart:IsA("BasePart") then
					return
				end
				local vector = Vector3.new(rootPart.CFrame.LookVector.X, 0, rootPart.CFrame.LookVector.Z)
				local unit

				if not (vector.Magnitude < 0.05) then
					unit = vector.Unit
				else
					unit = Vector3.new(0, 0, -1)
				end

				local n = tonumber(str37.feedPad) or 5

				if n < 1.2 then
					n = 1.2
				end

				local n9 = rootPart.Position + unit * n
				local n10 = rootPart.Position.Y + 2

				if type(func84) ~= "function" or not func84() then
					local num25 = func95(Vector3.new(n9.X, rootPart.Position.Y + 8, n9.Z))

					if type(num25) ~= "number" or not (num25 < rootPart.Position.Y + 10) then
						n10 = rootPart.Position.Y + 3
					else
						n10 = num25 + 3
					end
				end

				local feedPrompt = rootPart:FindFirstChild("FeedPrompt") or model:FindFirstChild("FeedPrompt", true)
				return Vector3.new(n9.X, n10, n9.Z), model, feedPrompt, rootPart
			end

			str37.eventToolUid = function()
				local character = localPlayer.Character
				character = character and character:FindFirstChildWhichIsA("Tool")
				if not character or character:GetAttribute("ItemType") ~= "AssetEgg" then
					return
				end
				local attribute = character:GetAttribute("UID") or character:GetAttribute("Uid")
				if type(attribute) == "string" and attribute ~= "" then
					return attribute, character
				end
			end

			str37.findEventEggTool = function(flag364)
				local flag365 = type(flag364) == "string"

				if flag365 then
					flag364 = flag364 ~= "" and flag364
				else
					flag364 = flag365
				end

				local value467 = flag364 or nil

				local function func329(instance13)
					if not instance13 then
						return
					end

					for _, child in ipairs(instance13:GetChildren()) do
						if not child:IsA("Tool") or child:GetAttribute("ItemType") ~= "AssetEgg" then
							continue
						end
						local attribute = child:GetAttribute("UID") or child:GetAttribute("Uid")

						if type(attribute) == "string" and attribute ~= "" then
							if value467 then
								if attribute ~= value467 then
									continue
								end
								return child, attribute
							end

							if child:GetAttribute("HasParasite") ~= true then
								continue
							end
							return child, attribute
						end
					end
				end

				local value468, value469 = func329(localPlayer.Character)
				if value468 then
					return value468, value469
				end
				local value470, value471 = func329(localPlayer:FindFirstChild("Backpack"))
				if value470 then
					return value470, value471
				end

				if value467 then
					return
				end
				local value472 = nil

				pcall(function()
					value472 = flag96 and flag96.ReadOwnerEggs(localPlayer.UserId)
				end)

				if type(value472) ~= "table" then
					return
				end

				local function func330(instance14)
					if not instance14 then
						return
					end

					for _, child in ipairs(instance14:GetChildren()) do
						if not child:IsA("Tool") or child:GetAttribute("ItemType") ~= "AssetEgg" then
							continue
						end
						local attribute = child:GetAttribute("UID") or child:GetAttribute("Uid")
						local flag366 = type(attribute) == "string" and (value472[attribute] or value472[tostring(attribute)])

						if type(flag366) ~= "table" then
							for k, value473 in pairs(value472) do
								if type(value473) == "table" and (attribute == value473.Uid or k == attribute) then
									flag366 = value473
									break
								end
							end
						end

						if type(flag366) == "table" and flag366.HasParasite == true and flag366.Placement == nil then
							return child, attribute
						end
					end
				end

				return func330(localPlayer.Character) or func330(localPlayer:FindFirstChild("Backpack"))
			end

			str37.wearEventEgg = function(flag367)
				local str157 = tostring(flag367 or "")
				if str157 == "" then
					return false
				end

				if str37.eventToolUid() == str157 then
					return true
				end
				local now2 = os.clock()
				if now2 - (str37.lastWear or 0) < 0.4 then
					return false
				end
				str37.lastWear = now2
				local obj36 = select(1, func83())

				local function func331(instance15)
					if not instance15 then
						return
					end

					for _, child in ipairs(instance15:GetChildren()) do
						local isTool = child:IsA("Tool")

						if isTool then
							isTool = (child:GetAttribute("UID") or child:GetAttribute("Uid")) == str157
						end

						if isTool then
							return child
						end
					end
				end

				local character4 = func331(localPlayer.Character) or func331(localPlayer:FindFirstChild("Backpack"))

				if character4 and character4:GetAttribute("ItemType") ~= "AssetEgg" then
					character4 = nil
				end

				if character4 and obj36 and character4.Parent ~= localPlayer.Character then
					pcall(function()
						obj36:EquipTool(character4)
					end)
				end

				if flag96 and type(flag96.WearEggTool) == "function" then
					pcall(flag96.WearEggTool, str157)
				end

				return str37.eventToolUid() == str157
			end

			str37.mpInvoke = function(param178, ...)
				local packed5 = table.pack(...)
				local monsterParasite = func102({ "Remotes" })

				if monsterParasite then
					monsterParasite = monsterParasite.MonsterParasite and monsterParasite.MonsterParasite[param178]
				end

				if monsterParasite == nil then
					return false, "no remote"
				end
				local value474 = func103(monsterParasite)
				local flag368

				if value474 then
					flag368 = value474
				else
					flag368 = typeof(monsterParasite) == "Instance" and monsterParasite or monsterParasite
				end

				local invokeServer = (type(flag368) == "table" or typeof(flag368) == "Instance") and flag368.InvokeServer
				if type(invokeServer) ~= "function" then
					return false, "no invoke"
				end
				local ok, result

				if select("#", ...) <= 0 then
					ok, result = pcall(invokeServer, flag368)
				else
					ok, result = pcall(invokeServer, flag368, packed5[1])
				end

				if not ok then
					return false, (tostring(result))
				end

				if type(result) == "table" then
					return result.Success == true, tostring(result.Message or ""), result
				end
				return result == true, tostring(result), result
			end

			str37.feedWaitMsg = function(flag369, param179)
				local lower = string.lower
				local str158 = tostring(flag369 or "")
				local obj37 = lower(str158)

				if type(param179) == "table" then
					local lower2 = string.lower
					local str159 = tostring(param179.Message or "")
					obj37 ..= " " .. lower2(str159)
				end

				return obj37:find("wait", 1, true) ~= nil or obj37:find("cooldown", 1, true) ~= nil
			end

			str37.askFeed = function(flag370)
				if type(flag370) ~= "string" or flag370 == "" then
					return false, "no egg"
				end

				if flag370 ~= str37.eventToolUid() then
					str37.wearEventEgg(flag370)
				end

				if flag370 ~= str37.eventToolUid() then
					return false, "no egg"
				end
				local AskFeed, value475, value476 = str37.mpInvoke("AskFeed")
				str37.lastFeedRes = value476
				return AskFeed, value475, value476
			end

			str37.isChestTool = function(obj)
				if not obj or not obj:IsA("Tool") then
					return false
				end

				if obj:GetAttribute("ItemType") == "MonsterChest" then
					return true
				end
				return obj.Name == "Monster Chest"
			end

			str37.findChestTool = function()
				local function func332(instance16)
					if not instance16 then
						return
					end

					for _, child in ipairs(instance16:GetChildren()) do
						if str37.isChestTool(child) then
							return child
						end
					end
				end

				return func332(localPlayer.Character) or func332(localPlayer:FindFirstChild("Backpack"))
			end

			str37.worldChest = function()
				for _, child in ipairs(workspace:GetChildren()) do
					if child.Name ~= "MonsterChest" or not child:IsA("Model") then
						continue
					end
					local position3, chestPrompt

					if not child or not child.Parent then
						position3 = nil
						child = nil
						chestPrompt = nil
					else
						local primaryPart = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart", true)
						chestPrompt = child:FindFirstChild("ChestPrompt", true)

						if primaryPart then
							position3 = primaryPart.Position
						else
							position3 = nil
							child = nil
							chestPrompt = nil
						end
					end

					if position3 then
						return position3, child, chestPrompt
					end
				end

				local monsterParasiteMonsters = workspace:FindFirstChild("MonsterParasiteMonsters")

				if monsterParasiteMonsters then
					for _, child in ipairs(monsterParasiteMonsters:GetChildren()) do
						if child.Name ~= "MonsterChest" then
							continue
						end
						local position3, chestPrompt

						if not child or not child.Parent then
							position3 = nil
							child = nil
							chestPrompt = nil
						else
							local primaryPart = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart", true)
							chestPrompt = child:FindFirstChild("ChestPrompt", true)

							if primaryPart then
								position3 = primaryPart.Position
							else
								position3 = nil
								child = nil
								chestPrompt = nil
							end
						end

						if position3 then
							return position3, child, chestPrompt
						end
					end
				end
			end

			str37.equipChest = function()
				local flag371 = str37.findChestTool()
				if not flag371 then
					return false
				end

				if flag371.Parent == localPlayer.Character then
					return true
				end
				local obj38 = select(1, func83())

				if obj38 then
					pcall(function()
						obj38:EquipTool(flag371)
					end)
				end

				local flag372 = str37.findChestTool()

				if flag372 then
					local character = localPlayer.Character
					flag372 = str37.findChestTool().Parent == character
				end

				return flag372
			end

			str37.noChestMsg = function(flag373, param180)
				local lower = string.lower
				local str160 = tostring(flag373 or "")
				local obj39 = lower(str160)

				if type(param180) == "table" then
					local lower2 = string.lower
					local str161 = tostring(param180.Message or "")
					obj39 ..= " " .. lower2(str161)
				end

				return obj39:find("chest", 1, true) ~= nil and (obj39:find("no", 1, true) ~= nil or obj39:find("don't", 1, true) ~= nil or obj39:find("dont", 1, true) ~= nil or obj39:find("any", 1, true) ~= nil or obj39:find("have", 1, true) ~= nil) or obj39:find("no chest", 1, true) ~= nil
			end

			str37.openChest = function()
				local obj40 = str37.findChestTool()
				if not obj40 then
					return false, "no chest"
				end

				pcall(function()
					obj40:Activate()
				end)

				local value477 = HttpService:GenerateGUID(false)
				local AskChestClaim, value478, value479 = str37.mpInvoke("AskChestClaim", value477)
				if AskChestClaim and type(value479) == "table" and type(value479.OpeningId) == "string" then
					str37.mpInvoke("AskChestRevealComplete", value479.OpeningId)
					return true, value478
				end

				if AskChestClaim then
					return true, value478
				end
				return false, value478
			end

			str37.runEvent = function(...) end
			func86 = function(...) end

			func143 = function()
				str37.running = false
				flag100 = false
				flag99 = nil
				str37.target = nil
				str37.eventUid = nil
				str37.pendingCarry = nil
				str37.clearBaitRoute()
				str37.haltUntil = os.clock() + 2.2
				str37.muteHazards(false)

				if str37.muteBelt then
					str37.muteBelt(false)
				end

				if str37.state ~= "Idle" then
					func82("steal", str37.state, "->", "Idle", "disabled", str37.target and str37.target.name or "")
					str37.state = "Idle"
					str37.since = os.clock()
				else
					str37.state = "Idle"
				end

				func325()

				if flag102 and flag102.stop then
					pcall(flag102.stop)
				end

				local character = localPlayer.Character
				local humanoidRootPart, humanoid

				if not character then
					humanoidRootPart = nil
					humanoid = nil
				else
					humanoid = character:FindFirstChildOfClass("Humanoid")
					humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

					if not humanoid or not humanoidRootPart or humanoid.Health <= 0 then
						humanoidRootPart = nil
						humanoid = nil
					end
				end

				local flag374 = humanoidRootPart
				local obj41 = humanoid

				pcall(function()
					if flag374 then
						flag374.AssemblyLinearVelocity = Vector3.zero
						flag374.AssemblyAngularVelocity = Vector3.zero
					end

					if obj41 then
						obj41:Move(Vector3.zero, false)
						obj41.Sit = false

						if not tbl9.Flight then
							obj41.PlatformStand = false
						end
					end
				end)

				if flag374 and flag374.Position.Y < 58 then
					local value480 = select(1, func140())

					pcall(function()
						if typeof(value480) == "Vector3" and value480.Y >= 58 then
							flag374.CFrame = CFrame.new(value480.X, value480.Y + 6, value480.Z)
						else
							flag374.CFrame = CFrame.new(0, 74, 0)
						end

						flag374.AssemblyLinearVelocity = Vector3.zero
					end)
				end

				if not tbl9.Flight then
					func93()
					func94(obj41, flag374, true)
				end

				local func333 = func107
				local result72 = func131()
				func333(result72)

				if flag97 then
					local flag375 = (tbl9.Flight or tbl9.BypassSpeed) and true
					local flag376

					if flag375 then
						flag376 = flag375
					else
						local value481 = func88() or flag12 or flag11

						if value481 then
							flag376 = value481
						else
							local flag377 = (tbl9.AutoPlaceEggs or tbl9.NightEggLoop or tbl9.AutoTreadmill) and true

							if flag377 then
								flag376 = flag377
							else
								local autoHatch = tbl9.AutoHatch

								if autoHatch then
									flag376 = autoHatch
								else
									local value482 = flag100

									if flag100 then
										flag376 = tbl9.StealTravel == "Flight"
									else
										flag376 = value482
									end
								end
							end
						end
					end

					if flag376 then
						func91()
						func92()
						func96(true)
					elseif next(tbl147) then
						func96(false)
					end
				end

				func82("steal", "loop stopped")
			end

			if flag96 and flag96.CarryChanged and flag96.CarryChanged.Connect then
				func89(flag96.CarryChanged:Connect(function(param181)
					if type(param181) ~= "table" then
						return
					end
					local uid = param181.Uid
					str37.pendingCarry = { carrying = param181.IsCarrying == true, uid = type(uid) == "string" and uid or nil }
				end))
			end

			func144 = function(param182, on)
				local entry49 = tbl10[param182]
				if not entry49 then
					func82("wire", "missing widget", param182)
					return
				end
				entry49.on = on
			end

			local function func334(param183)
				if param183 then
					if str37.running then
						return
					end
					str37.running = true
					str37.stillFor = 0
					str37.lastPos = nil
					str37.pendingCarry = nil
					str37.clearBaitRoute()

					if str37.state ~= "Scan" then
						func82("steal", str37.state, "->", "Scan", "start", str37.target and str37.target.name or "")
						str37.state = "Scan"
						str37.since = os.clock()
					else
						str37.state = "Scan"
					end

					func325()
					flag100 = false
					flag99 = nil
					local func335 = func107
					local result73 = func131()
					func335(result73)

					if flag97 then
						local flag378 = (tbl9.Flight or tbl9.BypassSpeed) and true

						if not flag378 then
							flag378 = func88() or flag12 or flag11

							if not flag378 then
								flag378 = (tbl9.AutoPlaceEggs or tbl9.NightEggLoop or tbl9.AutoTreadmill) and true or not not tbl9.AutoHatch or flag100 and tbl9.StealTravel == "Flight"
							end
						end

						if flag378 then
							func91()
							func92()
							func96(true)
						elseif next(tbl147) then
							func96(false)
						end
					end

					func82("steal", "loop started", tbl9.StealTravel)
					return
				end

				func143()
			end

			local function func336(str162)
				tbl9[str162] = false
				local entry50 = tbl10[str162]

				if entry50 and entry50.set then
					pcall(entry50.set, false)
				end

				local genv = getgenv and getgenv() or _G
				local toggles = genv.Toggles and genv.Toggles["CB_" .. str162]

				if toggles and toggles.Value ~= false and type(toggles.SetValue) == "function" then
					pcall(toggles.SetValue, toggles, false)
				end
			end

			func144("AutoSteal", function(flag379)
				if flag379 and tbl9.AutoIndexSteal == true then
					func336("AutoIndexSteal")
				end

				func334(func88())
			end)

			func144("AutoIndexSteal", function(flag380)
				if flag380 and tbl9.AutoSteal == true then
					func336("AutoSteal")
				end

				func334(func88())
			end)

			func144("AutoEvent", function()
				func325()
			end)

			func145 = function(instance17, flag381)
				if instance17 and instance17.Parent then
					instance17.Text = tostring(flag381 or "")
				end
			end

			func146 = function(list93)
				if type(list93) ~= "table" then
					return 0
				end
				local n = 0

				for k in pairs(list93) do
					n += 1
				end

				return n
			end

			func147 = function(childName2, param184)
				local shared = ReplicatedStorage:FindFirstChild("Shared")
				shared = shared and shared:FindFirstChild("Flags")
				shared = shared and shared:FindFirstChild(childName2)
				if not shared then
					return false
				end
				local ok, result = pcall(require, shared)
				ok = ok and type(result) == "table" and result[param184]
				return type(ok) == "table" and ok.Value == true
			end

			func148 = function(childName3, param185)
				local shared = ReplicatedStorage:FindFirstChild("Shared")
				shared = shared and shared:FindFirstChild("Flags")
				shared = shared and shared:FindFirstChild(childName3)
				if not shared then
					return nil
				end
				local ok, result = pcall(require, shared)
				ok = ok and type(result) == "table" and result[param185]
				return type(ok) == "table" and ok.Value or nil
			end

			func149 = function(param186)
				local n = math.max(0, math.floor(tonumber(param186) or 0))
				return string.format("%dm %02ds", math.floor(n / 60), n % 60)
			end

			local function func337(childName4)
				local packages = ReplicatedStorage:FindFirstChild("Packages")
				packages = packages and packages:FindFirstChild("Networking")
				return packages and packages:FindFirstChild(childName4)
			end

			local CollectionService = game:GetService("CollectionService")
			local tbl279 = {}
			local function func338(...) end

			local function func339(flag382)
				local flag383, obj42 = func338()

				local function func340(instance18)
					if not instance18 then
						return nil
					end

					for _, child in ipairs(instance18:GetChildren()) do
						if child:IsA("Tool") and child:GetAttribute("IsBat") == true then
							return child
						end
					end
				end

				local flag384 = func340(flag383) or func340(localPlayer:FindFirstChild("Backpack"))

				if flag384 and flag382 and flag383 and flag384.Parent ~= flag383 then
					pcall(function()
						obj42:EquipTool(flag384)
					end)
				end

				return flag384
			end

			local function func341(str163, delay2, param187)
				tbl279[str163] = (tbl279[str163] or 0) + 1
				local entry51 = tbl279[str163]

				task.spawn(function()
					while flag98 and tbl9[str163] and tbl279[str163] == entry51 do
						local ok, result = pcall(param187)

						if not ok then
							func82("event", str163 .. " error", tostring(result))
						end

						task.wait(delay2)
					end
				end)
			end

			local function func342(flag385, param188, param189, param190)
				func144(flag385, function(param191)
					tbl279[flag385] = (tbl279[flag385] or 0) + 1

					if param191 then
						func341(flag385, param188, param189)
					elseif param190 then
						pcall(param190)
					end

					if flag385 == "AutoScramble" or flag385 == "AutoScrambleParts" then
						func107(func131())
					end
				end)
			end

			local function func343()
				local value483, value484, num26 = func338()
				if not num26 then
					return
				end
				local ok, result = pcall(require, ReplicatedStorage.Data.Sakura)
				if not ok or type(result) ~= "table" then
					return
				end
				local n = tonumber(tbl9.BloomTreeRange) or 90

				if tbl9.AutoGreatBloom then
					local obj43 = func339(true)
					local AskStrikeTree = func337("RE/Bloomery/AskStrikeTree")

					if obj43 and AskStrikeTree and type(result.TreeTag) == "string" then
						for _, item39 in ipairs(CollectionService:GetTagged(result.TreeTag)) do
							local isBasePart = item39:IsA("BasePart") and item39 or item39:FindFirstChildWhichIsA("BasePart", true)

							if isBasePart and (isBasePart.Position - num26.Position).Magnitude <= n then
								pcall(function()
									obj43:Activate()
								end)

								pcall(function()
									AskStrikeTree:FireServer(item39)
								end)
							end
						end
					end
				end

				if tbl9.CrystalVacuum then
					local AskGatherPetal = func337("RF/Bloomery/AskGatherPetal")

					if AskGatherPetal and type(result.CrystalTag) == "string" then
						for _, item40 in ipairs(CollectionService:GetTagged(result.CrystalTag)) do
							local isBasePart = item40:IsA("BasePart") and item40 or item40:FindFirstChildWhichIsA("BasePart", true)

							if isBasePart and (isBasePart.Position - num26.Position).Magnitude <= n then
								pcall(function()
									AskGatherPetal:InvokeServer(item40)
								end)
							end
						end
					end
				end
			end

			local function func344()
				local ok, result = pcall(require, ReplicatedStorage.Shared.Save)
				local ok2, result2 = pcall(require, ReplicatedStorage.Data.Sakura)
				if not ok or not ok2 or type(result) ~= "table" or type(result.Get) ~= "function" then
					return
				end
				local ok3, result3 = pcall(result.Get)
				if not ok3 or type(result3) ~= "table" or type(result3.Sakura) ~= "table" then
					return
				end

				if result3.Sakura.Egg == false or result3.Sakura.Egg == nil then
					return
				end
				local n = tonumber(result3.SakuraCrystals) or 0
				local n9 = tonumber(result3.Sakura.Deposited) or tonumber(result3.Sakura.Crystals) or 0
				local n10 = type(result2.GetRequiredCrystals) == "function" and result2.GetRequiredCrystals() or 0
				local n11 = math.max(0, math.min(n, (tonumber(type(result2.GetFreeChargeCap) == "function" and result2.GetFreeChargeCap(n10) or n10) or 0) - n9))
				local AskHandoff = func337("RF/Bloomery/AskHandoff")

				if AskHandoff and n11 > 0 then
					pcall(function()
						AskHandoff:InvokeServer(n11)
					end)
				end
			end
			;(getgenv and getgenv() or _G).CokeboysRollBloomMutation = function()
				local AskMutate = func337("RF/Bloomery/AskMutate")

				if AskMutate then
					pcall(function()
						AskMutate:InvokeServer()
					end)
				end
			end

			func342("AutoGreatBloom", 0.35, func343)
			func342("CrystalVacuum", 0.5, func343)
			func342("AutoDepositCrystals", 1.5, func344)
			local tbl280 = {}

			for _, item41 in ipairs({
				"Crane",
				"Salamander",
				"Spideron",
				"Crustacia",
				"Red Panda",
				"Snowy Owl",
				"Bladehide",
				"Mantaris",
				"Koi",
				"Rhinotaur",
			}) do
				tbl280[string.lower(item41):gsub("[^%w]", "")] = true
			end

			local function func345(param192)
				if type(param192) == "string" then
					return param192
				end

				if type(param192) ~= "table" then
					return nil
				end
				return param192.Category or param192.AssetCategory or param192.PetCategory or param192._id or param192.Id or param192.Name
			end

			local function func346(param193)
				local str164 = type(param193) == "string" and string.lower(param193):gsub("[^%w]", "") or ""
				local flag386 = type(param193) == "string" and directory and directory[param193] or nil
				return str164, type(flag386) == "table" and type(flag386.DisplayName) == "string" and string.lower(flag386.DisplayName):gsub("[^%w]", "") or ""
			end

			local function func347(param194, list94)
				for _, item42 in ipairs({
					param194.CurrentBannerId,
					param194.BannerId,
					param194.BannerDisplayName,
					param194.CurrentBanner,
					param194.Banner,
					param194.CurrentEgg,
					param194.CurrentEggId,
					param194.EggId,
					param194.RewardCategory,
					param194.RewardId,
					param194.Reward,
				}) do
					if type(item42) == "table" then
						item42 = item42._id or item42.Id or item42.Name or item42.Category or item42.AssetCategory
					end

					if type(item42) == "string" and string.lower(item42):find("shattered", 1, true) then
						return true
					end
				end

				for _, item43 in ipairs(list94) do
					local value485 = func345(item43)
					if tbl280[type(value485) == "string" and string.lower(value485):gsub("[^%w]", "") or ""] then
						return true
					end
				end

				return false
			end

			local function func348()
				local AskState = func337("RF/Rift/AskState")
				local AskTradeIn = func337("RF/Rift/AskTradeIn")
				if not AskState or tbl9.ShatteredRiftFarm == true and not AskTradeIn then
					return
				end

				local ok, result = pcall(function()
					return AskState:InvokeServer()
				end)

				if not ok or type(result) ~= "table" or type(result.Requirements) ~= "table" then
					return
				end
				local requirements = result.Requirements
				table.clear(tbl149)
				flag103 = false
				flag104 = false
				if not func347(result, requirements) then
					return
				end

				for _, requirement in ipairs(requirements) do
					local value486 = func345(requirement)

					if type(value486) == "string" then
						local flag387, flag388 = func346(value486)

						if flag387 ~= "" then
							tbl149[flag387] = true
						end

						if flag388 ~= "" then
							tbl149[flag388] = true
						end
					end
				end

				flag103 = next(tbl149) ~= nil
				if tbl9.ShatteredRiftFarm ~= true then
					return
				end
				local ok2, result2 = pcall(require, ReplicatedStorage.Shared.Save)
				local ok3, result3 = pcall(require, ReplicatedStorage.Shared.Util.FuseKernel)
				local ok4, result4 = pcall(require, ReplicatedStorage.Shared.Util.AssetItems)
				if not ok2 or not ok3 or not ok4 or type(result2.Get) ~= "function" then
					return
				end
				local ok5, result5 = pcall(result2.Get)
				if not ok5 or type(result5) ~= "table" or type(result5.Inventory) ~= "table" then
					return
				end
				local tbl281 = {}

				if type(result5.EquippedAssets) == "table" then
					for k, equippedAsset in pairs(result5.EquippedAssets) do
						if type(k) == "string" then
							tbl281[k] = true
						end

						if type(equippedAsset) == "string" then
							tbl281[equippedAsset] = true
						end
					end
				end

				local tbl282 = {}

				for k, value487 in pairs(result5.Inventory) do
					if type(k) == "string" and type(value487) == "table" and not tbl281[k] and value487.IsFavorite ~= true and value487.InFuse ~= true and value487.InPen ~= true and value487.Placement == nil then
						local flag389 = true

						if type(result3.MayEnterRift) == "function" then
							local ok6, result6 = pcall(result3.MayEnterRift, k, value487)
							flag389 = ok6 and result6 == true
						end

						if flag389 then
							local result6

							if type(result4.Decode) ~= "function" then
								result6 = value487
							else
								local ok6
								ok6, result6 = pcall(result4.Decode, value487)

								if not (ok6 and type(result6) == "table") then
									result6 = value487
								end
							end

							local huge = math.huge

							if type(result4.WeightKg) == "function" then
								local ok6, result7 = pcall(result4.WeightKg, result6)

								if ok6 then
									huge = tonumber(result7)
									huge = huge or math.huge
								end
							end

							table.insert(tbl282, {
								uid = k,
								category = value487.Category or value487.AssetCategory or result6.Category or result6.AssetCategory,
								weight = huge,
							})
						end
					end
				end

				local tbl283 = {}
				local tbl284 = {}

				for _, requirement in ipairs(requirements) do
					local value488 = func345(requirement)
					local flag390, flag391 = func346(value488)
					local value489 = nil

					for _, item44 in ipairs(tbl282) do
						local flag392, flag393 = func346(item44.category)

						if not tbl284[item44.uid] and flag390 ~= "" and (flag392 == flag390 or flag392 == flag391 or flag393 == flag390 or flag393 ~= "" and flag393 == flag391) and (not value489 or item44.weight < value489.weight) then
							value489 = item44
						end
					end

					if value489 then
						tbl284[value489.uid] = true
						table.insert(tbl283, value489.uid)
					end
				end

				flag104 = #tbl283 == #requirements and #tbl283 > 0
				if not flag104 then
					return
				end

				if not (str37 and str37.running and str37.state == "Scan" and str37.target == nil and str37.carrying ~= true and str37.heldUid == nil and not flag12 and not flag11) then
					return
				end

				if t291 and (t291.training == true or t291.job == "belt" or t291.job == "ghost") then
					flag105 = true
					v2235()
					flag105 = false
					return
				end

				if t291 and t291.job ~= nil and t291.job ~= "idle" then
					return
				end
				flag105 = true

				local ok6, result6 = pcall(function()
					return AskTradeIn:InvokeServer(tbl283)
				end)

				if ok6 and result6 then
					local AskFinishReveal = func337("RF/Rift/AskFinishReveal")

					if AskFinishReveal then
						pcall(function()
							AskFinishReveal:InvokeServer()
						end)
					end
				end

				flag105 = false
				flag103 = false
				flag104 = false
			end

			local function func349()
				tbl279.ShatteredRiftFarm = (tbl279.ShatteredRiftFarm or 0) + 1
				flag105 = false
				flag103 = false
				flag104 = false
				table.clear(tbl149)
				func334(func88())

				if tbl9.ShatteredRiftFarm == true then
					func341("ShatteredRiftFarm", 3, func348)
				end
			end

			func144("ShatteredRiftFarm", function()
				func349()
			end)

			local function cokeboysOpenMonsterChests()
				if str37.mpInvoke("AskChestTake") or str37.findChestTool() then
					str37.equipChest()
					task.wait(0.15)
					str37.openChest()
				end
			end
			;(getgenv and getgenv() or _G).CokeboysOpenMonsterChests = cokeboysOpenMonsterChests

			func342("AutoEventChests", 2, cokeboysOpenMonsterChests)
			;(getgenv and getgenv() or _G).CokeboysEnterBoss = function()
				local AskEnter = func337("RF/BossEvent/AskEnter")

				if AskEnter then
					pcall(function()
						AskEnter:InvokeServer()
					end)
				end
			end

			local function func350(part5)
				if typeof(part5) == "Vector3" then
					return part5
				end

				if typeof(part5) == "CFrame" then
					return part5.Position
				end

				if type(part5) ~= "table" then
					return nil
				end

				if typeof(part5.Position) == "Vector3" then
					return part5.Position
				end

				if typeof(part5.CFrame) == "CFrame" then
					return part5.CFrame.Position
				end
				local num27 = tonumber(part5.X or part5.x)
				local num28 = tonumber(part5.Y or part5.y)
				local num29 = tonumber(part5.Z or part5.z)
				if num27 and num28 and num29 then
					return Vector3.new(num27, num28, num29)
				end
			end

			func342("AutoCollectRings", 0.65, function()
				local value490, value491, num30 = func338()
				if not num30 or type(localPlayer:GetAttribute("LvdTeam")) ~= "string" then
					return
				end
				local n = tonumber(tbl9.RingCollectRange) or 140
				local FetchRings = func337("RF/LightVsDarkness/FetchRings")
				local AskCollectRing = func337("RE/LightVsDarkness/AskCollectRing")
				local ok, result = pcall(require, ReplicatedStorage.Data.LightVsDarkness)

				if FetchRings and AskCollectRing and ok and type(result.DecodeRings) == "function" then
					local ok2, result2, result3, result4, result5 = pcall(function()
						return FetchRings:InvokeServer()
					end)

					if ok2 and result2 and type(result4) == "table" then
						for k, value492 in pairs(result4) do
							local ok3, result6 = pcall(result.DecodeRings, value492)

							if ok3 and type(result6) == "table" then
								for k2, value493 in pairs(result6) do
									local flag394 = type(result5) == "table" and type(result5[k]) == "table" and result5[k][k2]
									local num31 = func350(value493)

									if not flag394 and num31 and (num31 - num30.Position).Magnitude <= n then
										pcall(function()
											AskCollectRing:FireServer(result2, k, k2)
										end)
									end
								end
							end
						end
					end
				end

				local FetchPowerUps = func337("RF/LightVsDarkness/FetchPowerUps")
				local AskCollectPowerUp = func337("RE/LightVsDarkness/AskCollectPowerUp")

				if FetchPowerUps and AskCollectPowerUp then
					local ok2, result2, result3 = pcall(function()
						return FetchPowerUps:InvokeServer()
					end)

					if ok2 and result2 and type(result3) == "table" then
						for _, value494 in pairs(result3) do
							local num32 = func350(value494)
							local id = type(value494) == "table" and (value494.Id or value494.ID or value494.id)

							if id and num32 and (num32 - num30.Position).Magnitude <= n then
								pcall(function()
									AskCollectPowerUp:FireServer(result2, id)
								end)
							end
						end
					end
				end
			end)

			local tbl285 = {
				target = nil,
				traveling = false,
				lastTeleport = 0,
				settleUntil = 0,
				lastFace = 0,
				lastSwing = 0,
				lastSnapshot = 0,
				snapshotBusy = false,
				snapshotToken = 0,
				active = false,
				activeUntil = 0,
				windowIndex = nil,
				areaNames = {},
				visitedAreas = {},
				areaTarget = nil,
				areaArrival = 0,
				lastAreaReset = 0,
				maximumHealth = setmetatable({}, { __mode = "k" }),
				bat = nil,
				weaponCursor = 0,
				pendingWeapon = nil,
				weaponReadyAt = 0,
				nextWeaponAt = 0,
				swingPhase = "idle",
				swingPhaseAt = 0,
				originalWeapon = nil,
				alternateWeapon = nil,
				droneFolder = nil,
				drones = {},
				droneAdded = nil,
				droneRemoving = nil,
				groundRayParams = RaycastParams.new(),
				groundRayFilter = {},
				state = {},
				quest = {},
			}

			tbl285.groundRayParams.FilterType = Enum.RaycastFilterType.Exclude

			local tbl286 = {
				busy = false,
				targetId = nil,
				lastPrompt = 0,
				attempts = {},
				settledId = nil,
				settleUntil = 0,
				allInactiveSince = 0,
			}

			local function func351(...) end
			local function func352(...) end
			local function func353(...) end
			local function func354(z)if z and(z:IsA("Model"))and(z.Name:match("^PersonalDrone_"))then  tbl285 .drones[z]=true;end;end
			local function func355(...) end
			local function func356(z,n)if not(z and z.Parent and(z:IsA("Model"))and(z.Name:match("^PersonalDrone_")))then return nil;end;local V=z:FindFirstChild("Hitbox",true)or z.PrimaryPart or(z:FindFirstChildWhichIsA("BasePart",true));if not(V and(V:IsA("BasePart")))then return nil;end;local x,H=V:GetAttribute("Health")or(z:GetAttribute("Health"))or(V:GetAttribute("HP"))or(z:GetAttribute("HP")),V:GetAttribute("MaxHealth")or(z:GetAttribute("MaxHealth"))or(V:GetAttribute("MaxHP"))or(z:GetAttribute("MaxHP"));local q,e=tonumber(x),tonumber(H);H= tbl285 .maximumHealth[z];e=if e==nil then H or q else e;if e and(H==nil or e>H)then  tbl285 .maximumHealth[z]=e;else e=H or e;end;H=e and(math.floor(e+0.5))or nil;if n and(H==nil or n[H]~=true)then return nil;end;if x~=nil and(q or 0)<=0 then return nil;end;return V,H;end
			tbl285.exitRoute = { points = nil, index = 1, busy = false, retryAt = 0 }
			tbl285.travelDestination = function(...) end

			func342("AutoScrambleParts", 0.2, function(...) end, function()
				tbl286.busy = false
				func352(false)
				tbl286.targetId = nil
				tbl286.attempts = {}
				tbl286.settledId = nil
				tbl286.settleUntil = 0
				tbl286.allInactiveSince = 0

				if not func88() and not flag12 then
					func353()
				end
			end)

			func342("AutoScramble", 0.04, function(...) end, function()
				tbl285.exitRoute = { points = nil, index = 1, busy = false, retryAt = 0 }
				func351(false)
				tbl285.target = nil
				tbl285.snapshotToken = tbl285.snapshotToken + 1
				tbl285.snapshotBusy = false
				tbl285.areaTarget = nil
				tbl285.areaArrival = 0
				tbl285.visitedAreas = {}
				func355(nil)
				tbl285.maximumHealth = setmetatable({}, { __mode = "k" })
				tbl285.bat = nil
				tbl285.weaponCursor = 0
				tbl285.pendingWeapon = nil
				tbl285.weaponReadyAt = 0
				tbl285.nextWeaponAt = 0
				tbl285.swingPhase = "idle"
				tbl285.swingPhaseAt = 0
				tbl285.originalWeapon = nil
				tbl285.alternateWeapon = nil
				tbl285.active = false

				if not func88() then
					func353()
				end
			end)

			local function cokeboysRefreshEvents()
				local playerGui = localPlayer:FindFirstChildOfClass("PlayerGui")
				local ok, result = pcall(require, ReplicatedStorage.Data.Sakura)
				ok = ok and type(result) == "table"
				local n = 0
				local n9 = 0
				local flag395 = false

				if ok then
					if type(result.TreeTag) == "string" then
						n9 = #CollectionService:GetTagged(result.TreeTag)
						flag395 = n9 > 0
					end

					local n10 = tonumber(result.IntervalSeconds) or 1800
					local n11 = tonumber(result.OffsetSeconds) or 0
					local serverTimeNow = workspace:GetServerTimeNow()
					n = serverTimeNow + n10 - (serverTimeNow + n11) % n10 - serverTimeNow
				end

				func145(greatBloomStatus, flag395 and string.format("active · trees %d", n9) or "inactive · next Great Bloom in " .. func149(n))
				local objects = workspace:FindFirstChild("__OBJECTS")
				objects = objects and objects:FindFirstChild("Machines")
				local flag396 = func147("RiftFlags", "RecipesEnabled") and objects and objects:FindFirstChild("RiftMachine") ~= nil
				local n10 = tonumber(func148("RiftFlags", "RotationSeconds")) or 10800
				local n11 = n10 - workspace:GetServerTimeNow() % n10
				local AskState = func337("RF/Rift/AskState")
				local value495 = flag396 and AskState
				local value496 = nil

				if value495 then
					local ok2, result2 = pcall(function()
						return AskState:InvokeServer()
					end)

					ok2 = ok2 and type(result2) == "table" and type(result2.Requirements) == "table"
					value496 = nil

					if ok2 then
						local list95 = {}

						for _, requirement in ipairs(result2.Requirements) do
							local flag397 = type(requirement) == "string" and requirement

							if not flag397 then
								flag397 = type(requirement) == "table"

								if flag397 then
									flag397 = requirement.Category or requirement.AssetCategory or requirement.PetCategory or requirement.Name or requirement._id
								end
							end

							if type(flag397) == "string" and flag397 ~= "" then
								local value497 = directory and directory[flag397]
								list95[#list95 + 1] = type(value497) == "table" and (value497.DisplayName or flag397) or flag397
							end
						end

						value496 = nil

						if #list95 > 0 then
							value496 = tostring(result2.BannerDisplayName or result2.BannerId or "Rift") .. " · " .. table.concat(list95, " · ")
						end
					end
				end

				local func357 = func145

				if flag396 then
					flag396 = (value496 and "recipe · " .. value496 or "recipe ready") .. " · rotates in " .. func149(n11)
				end

				func357(riftStatus, flag396 or "inactive · Rift recipe or machine unavailable")
				local monsterParasiteMonsters = workspace:FindFirstChild("MonsterParasiteMonsters")
				local MonsterParasiteFlags = monsterParasiteMonsters ~= nil or func147("MonsterParasiteFlags", "Enabled")
				local n12 = 0
				local n13 = 0

				if monsterParasiteMonsters then
					for _, child in ipairs(monsterParasiteMonsters:GetChildren()) do
						if child.Name == "MonsterChest" then
							n13 += 1
						else
							n12 += 1
						end
					end
				end

				func145(hungryMonsterStatus, MonsterParasiteFlags and string.format("active · monsters %d · chests %d", n12, n13) or "inactive · waiting for the Hungry Monster")
				playerGui = playerGui and playerGui:FindFirstChild("BossSpawningCountdown")
				local content = playerGui and playerGui:FindFirstChild("Content", true)
				local BossEventFlags = func147("BossEventFlags", "Enabled") or playerGui and playerGui.Enabled == true
				content = content and tostring(content.Text):gsub("<.->", "") or ""
				func145(boss, BossEventFlags and (content ~= "" and content or "boss event active") or "inactive · boss arena closed")
				local FetchScore = func337("RF/LightVsDarkness/FetchScore")
				local FetchRings = func337("RF/LightVsDarkness/FetchRings")
				local FetchPowerUps = func337("RF/LightVsDarkness/FetchPowerUps")
				local n14 = 0

				if FetchScore then
					local ok2

					ok2, n14 = pcall(function()
						return FetchScore:InvokeServer()
					end)

					ok2 = ok2 and type(n14) == "number"
					local n15 = 0

					if not ok2 then
						n14 = n15
					end
				end

				local result2 = nil

				if FetchRings then
					local ok2

					ok2, result2 = pcall(function()
						return FetchRings:InvokeServer()
					end)

					local value498 = nil

					if not ok2 then
						result2 = value498
					end
				end

				local result3 = nil

				if FetchPowerUps then
					local ok2

					ok2, result3 = pcall(function()
						return FetchPowerUps:InvokeServer()
					end)

					local value499 = nil

					if not ok2 then
						result3 = value499
					end
				end

				local value500 = func146(result2)
				local value501 = func146(result3)
				func145(lightVsDarkness, (result2 ~= nil or result3 ~= nil) and string.format("active · score %s · rings %d · power-ups %d", tostring(n14), value500, value501) or string.format("inactive · score %s · no rings or power-ups", tostring(n14)))
				local Request = func337("RF/Scramble/Request")
				local snapshot = nil

				if Request then
					local ok2, result4 = pcall(function()
						return Request:InvokeServer("Snapshot")
					end)

					ok2 = ok2 and type(result4) == "table"
					snapshot = nil

					if ok2 then
						snapshot = type(result4.Snapshot) == "table" and result4.Snapshot or result4
					end
				end

				local window = type(snapshot) == "table" and snapshot.Window
				local flag398 = type(window) == "table" and window.Active == true
				local scrambleLocalVisuals = workspace:FindFirstChild("ScrambleLocalVisuals")
				local n15 = 0

				if scrambleLocalVisuals then
					for _, descendant in ipairs(scrambleLocalVisuals:GetDescendants()) do
						local hitbox = descendant:FindFirstChild("Hitbox", true)
						local match = descendant.Name:match("^PersonalDrone_") and hitbox

						if match then
							match = (tonumber(hitbox:GetAttribute("Health")) or 0) > 0
						end

						if match then
							n15 += 1
						end
					end
				end

				local serverTimeNow = workspace:GetServerTimeNow()
				local flag399 = type(window) == "table" and (flag398 and tonumber(window.EndsAt) or tonumber(window.NextAt))
				local func358 = func145

				if flag398 then
					flag398 = string.format("active · ends in %s · drones %d", func149((flag399 or serverTimeNow) - serverTimeNow), n15)
				end

				if not flag398 then
					flag398 = string.format("inactive · next experiment in %s", func149((flag399 or serverTimeNow) - serverTimeNow))
				end

				func358(value64, flag398)
			end
			;(getgenv and getgenv() or _G).CokeboysRefreshEvents = cokeboysRefreshEvents

			task.spawn(function()
				while flag98 do
					local cokeboysLinoriaLibrary = func25()
					cokeboysLinoriaLibrary = cokeboysLinoriaLibrary and cokeboysLinoriaLibrary.CokeboysLinoriaLibrary

					if obj4.Visible == true or type(cokeboysLinoriaLibrary) == "table" and cokeboysLinoriaLibrary.Toggled == true then
						pcall(cokeboysRefreshEvents)
					end

					task.wait(5)
				end
			end)
		end

		func144("AntiTrap", function(param195)
			func82("engine", "anti trap", param195)
			local func359 = func107
			local result74 = func131()
			func359(result74)

			if flag97 then
				local flag400 = (tbl9.Flight or tbl9.BypassSpeed) and true

				if not flag400 then
					flag400 = func88() or flag12 or flag11

					if not flag400 then
						flag400 = (tbl9.AutoPlaceEggs or tbl9.NightEggLoop or tbl9.AutoTreadmill) and true or not not tbl9.AutoHatch or flag100 and tbl9.StealTravel == "Flight"
					end
				end

				if flag400 then
					func91()
					func92()
					func96(true)
				elseif next(tbl147) then
					func96(false)
				end
			end

			func99()
		end)

		func144("AntiMob", function(param196)
			func82("engine", "anti ragdoll", param196)
			local func360 = func107
			local result75 = func131()
			func360(result75)

			if flag97 then
				local flag401 = (tbl9.Flight or tbl9.BypassSpeed) and true

				if not flag401 then
					flag401 = func88() or flag12 or flag11 or (tbl9.AutoPlaceEggs or tbl9.NightEggLoop or tbl9.AutoTreadmill) and true or not not tbl9.AutoHatch or flag100 and tbl9.StealTravel == "Flight"
				end

				if flag401 then
					func91()
					func92()
					func96(true)
				elseif next(tbl147) then
					func96(false)
				end
			end

			func106()
		end)

		func144("BatAura", function(param197)
			func82("esp", "bat aura", param197)

			if str37.bat and str37.bat.setLive then
				str37.bat.setLive(param197)
			end
		end)

		func144("BypassSpeed", function()
			if tbl9.BypassSpeed ~= true then
				local value502 = select(1, func83())

				pcall(function()
					if value502 then
						value502.WalkSpeed = walkSpeed
					end
				end)
			end

			local func361 = func107
			local result76 = func131()
			func361(result76)
			if not flag97 then
				return
			end

			if tbl9.Flight or tbl9.BypassSpeed or func88() or flag12 or flag11 or tbl9.AutoPlaceEggs or tbl9.NightEggLoop or tbl9.AutoTreadmill or tbl9.AutoHatch or flag100 and tbl9.StealTravel == "Flight" then
				func91()
				func92()
				func96(true)
				return
			end

			if next(tbl147) then
				func96(false)
			end
		end)

		func144("StealTravel", function(param198)
			local func362 = func82
			local str165 = tostring(param198)
			func362("wire", "travel mode", str165)

			if func88() then
				local func363 = func107
				local result77 = func131()
				func363(result77)
				if not flag97 then
					return
				end
				local flag402 = (tbl9.Flight or tbl9.BypassSpeed) and true

				if not flag402 then
					flag402 = func88() or flag12 or flag11 or (tbl9.AutoPlaceEggs or tbl9.NightEggLoop or tbl9.AutoTreadmill) and true or not not tbl9.AutoHatch or flag100 and tbl9.StealTravel == "Flight"
				end

				if flag402 then
					func91()
					func92()
					func96(true)
					return
				end

				if next(tbl147) then
					func96(false)
				end
			end
		end)

		func144("StealSpeed", function(param199)
			func82("engine", "steal speed", param199)
		end)

		func144("StealMode", function(param200)
			local func364 = func82
			local str166 = tostring(param200)
			func364("steal", "pick", str166)

			if value16 then
				func28(value16, obj7.Text)
			end
		end)

		func144("BypassCap", function(param201)
			func82("engine", "cap", param201)
		end)

		func144("Flight", function(flag403)
			func98(flag403 == true)

			if flag403 then
				func93()
				local character = localPlayer.Character
				local humanoidRootPart

				if not character then
					humanoidRootPart = nil
				else
					local humanoid = character:FindFirstChildOfClass("Humanoid")
					humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

					if not (not not humanoid and not not humanoidRootPart and not (humanoid.Health <= 0)) then
						humanoidRootPart = nil
					end
				end

				local value503 = humanoidRootPart

				if value503 then
					pcall(function()
						local assemblyLinearVelocity = value503.AssemblyLinearVelocity
						value503.AssemblyLinearVelocity = Vector3.new(assemblyLinearVelocity.X, 0, assemblyLinearVelocity.Z)
						value503.AssemblyAngularVelocity = Vector3.zero
					end)
				end
			else
				local character = localPlayer.Character
				local humanoid, humanoidRootPart

				if not character then
					humanoid = nil
				else
					humanoid = character:FindFirstChildOfClass("Humanoid")
					humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

					if not humanoid or not humanoidRootPart or humanoid.Health <= 0 then
						humanoidRootPart = nil
						humanoid = nil
					end
				end

				flag106 = false
				func94(humanoid, humanoidRootPart, true)
			end

			local func365 = func107
			local result78 = func131()
			func365(result78)
			if not flag97 then
				return
			end

			if tbl9.Flight or tbl9.BypassSpeed or func88() or flag12 or flag11 or tbl9.AutoPlaceEggs or tbl9.NightEggLoop or tbl9.AutoTreadmill or tbl9.AutoHatch or flag100 and tbl9.StealTravel == "Flight" then
				func91()
				func92()
				func96(true)
				return
			end

			if next(tbl147) then
				func96(false)
			end
		end)

		func144("FlightSpeed", function(param202)
			if tbl9.Flight then
				func82("engine", "flight speed", param202)
			end
		end)

		func144("EggESP", function()
			if flag101 and flag101.setLive then
				flag101.setLive()
			end

			func82("esp", "field", tbl9.EggESP)
		end)

		func144("PlayerESP", function()
			if flag101 and flag101.setLive then
				flag101.setLive()
			end

			func82("esp", "players", tbl9.PlayerESP)
		end)

		func144("ESPFilter", function(param203)
			local func366 = func82
			local str167 = tostring(param203)
			func366("esp", "filter", str167)
		end)

		func144("ESPBeam", function()
			if flag101 and flag101.setLive then
				flag101.setLive()
			end

			func82("esp", "beam", tbl9.ESPBeam)
		end)

		func144("PlotESP", function()
			if flag101 and flag101.setLive then
				flag101.setLive()
			end

			func82("esp", "plot", tbl9.PlotESP)

			if flag101.bumpPlot then
				flag101.bumpPlot()
			end
		end)

		func144("StatsPanel", function(param204)
			if flag101.stats then
				flag101.stats(param204)
			end

			func82("esp", "stats panel", param204)
		end)

		func144("ClaimIndex", function()
			if flag102 then
				flag102.sync()
			end
		end)

		func144("AutoPlaceEggs", function()
			if flag102 then
				flag102.sync()
			end
		end)

		func144("DontPlaceRiftEggs", function()
			if flag102 then
				flag102.sync()
			end
		end)

		func144("NightEggLoop", function()
			if flag102 then
				flag102.sync()
			end
		end)

		func144("AutoHatch", function()
			if flag102 then
				flag102.sync()
			end
		end)

		func144("EquipBest", function()
			if flag102 then
				flag102.sync()
			end
		end)

		func144("UpgTrails", function()
			if flag102 then
				flag102.sync()
			end
		end)

		func144("UpgTreadmill", function()
			if flag102 then
				flag102.sync()
			end
		end)

		func144("UpgPen", function()
			if flag102 then
				flag102.sync()
			end
		end)

		func144("AutoSellPets", function()
			if flag102 then
				flag102.sync()
			end
		end)

		func144("AutoSellEggs", function()
			if flag102 then
				flag102.sync()
			end
		end)

		func144("SellNonRiftRecipeEggs", function()
			if flag102 then
				flag102.sync()
			end
		end)

		func144("AutoTreadmill", function(flag404)
			if flag102 then
				if not flag404 and flag102.leave then
					flag102.leave()
				end

				flag102.sync()
			end
		end)

		func144("GhostTreadmill", function(flag405)
			if flag405 and tbl9.AutoTreadmill then
				local autoTreadmill = tbl10.AutoTreadmill

				if autoTreadmill and autoTreadmill.set then
					pcall(autoTreadmill.set, false)
				end

				tbl9.AutoTreadmill = false
			end

			if flag102 then
				if not flag405 and flag102.stopGhost then
					flag102.stopGhost(true)
				end

				flag102.sync()
			end
		end)

		func144("AutoHop", function(flag406)
			if flag139 and flag139.setLive then
				flag139.setLive(flag406 == true)
			end
		end)

		func144("HopNow", function()
			if flag139 and flag139.now then
				flag139.now()
			end
		end)

		func144("SellPreview", function()
			if tbl11.open then
				tbl11.open()
			end
		end)

		tbl11.open = function()
			tbl9.StatsPanel = true

			if tbl10.StatsPanel and tbl10.StatsPanel.set then
				pcall(tbl10.StatsPanel.set, true)
			end

			if flag101 and flag101.stats then
				pcall(flag101.stats, true)
			end

			if flag102 and flag102.queuePreview then
				local ok, result = pcall(flag102.queuePreview)

				if not ok then
					local sellPreview = tbl10.SellPreview

					if sellPreview and sellPreview.status then
						sellPreview.status.Text = "failed · " .. tostring(result)
					end

					local func367 = func82
					local str168 = tostring(result)
					func367("plot", "preview ERR", str168)
				end

				return
			end

			local sellPreview = tbl10.SellPreview

			if sellPreview and sellPreview.status then
				sellPreview.status.Text = "preview missing"
			end
		end

		func144("HookTest", function()
			local hookTest = tbl10.HookTest

			if not flag138 or not flag138.test then
				if hookTest and hookTest.status then
					hookTest.status.Text = "missing"
				end

				return
			end

			if hookTest and hookTest.status then
				hookTest.status.Text = "sending…"
			end

			task.spawn(function()
				local flag407, value504 = flag138.test()

				if hookTest and hookTest.status then
					local status = hookTest.status
					local text

					if not flag407 then
						text = "fail · " .. tostring(value504)
					else
						text = "sent"
					end

					status.Text = text
				end

				local func368 = func82
				local str169 = not flag407 and "test fail" or "test ok"
				local str170 = tostring(value504)
				func368("hook", str169, str170)
			end)
		end)

		do
			local tbl287 = { saved = {}, connection = nil }
			local value505 = nil

			value505 = function()
				local hideOwnPenPets = tbl9.HideOwnPenPets == true or tbl9.HideOtherPenPets == true
				local clientRenderedAssets = workspace:FindFirstChild("ClientRenderedAssets")
				local cokeboysHiddenPenPets = ReplicatedStorage:FindFirstChild("__CokeboysHiddenPenPets")

				if hideOwnPenPets and not cokeboysHiddenPenPets then
					cokeboysHiddenPenPets = Instance.new("Folder")
					cokeboysHiddenPenPets.Name = "__CokeboysHiddenPenPets"
					cokeboysHiddenPenPets.Parent = ReplicatedStorage
				end

				for k, value506 in pairs(tbl287.saved) do
					local num33 = tonumber(k:GetAttribute("OwnerUserId"))

					if not (num33 == localPlayer.UserId and tbl9.HideOwnPenPets == true or num33 ~= nil and num33 ~= localPlayer.UserId and tbl9.HideOtherPenPets == true) then
						if k.Parent then
							pcall(function()
								k.Parent = value506
							end)
						end

						tbl287.saved[k] = nil
					end
				end

				if clientRenderedAssets and hideOwnPenPets then
					for _, child in ipairs(clientRenderedAssets:GetChildren()) do
						local num34 = tonumber(child:GetAttribute("OwnerUserId"))

						if num34 == localPlayer.UserId and tbl9.HideOwnPenPets == true or num34 ~= nil and num34 ~= localPlayer.UserId and tbl9.HideOtherPenPets == true then
							tbl287.saved[child] = clientRenderedAssets

							pcall(function()
								child.Parent = cokeboysHiddenPenPets
							end)
						end
					end

					if not tbl287.connection then
						tbl287.connection = clientRenderedAssets.ChildAdded:Connect(function()
							task.defer(value505)
						end)

						tbl146[tbl287.connection] = true
					end
				elseif tbl287.connection then
					local connection3 = tbl287.connection
					tbl287.connection = nil
					tbl146[connection3] = nil

					pcall(function()
						connection3:Disconnect()
					end)
				end
			end

			local function func369()
				for k, value507 in pairs(tbl287.saved) do
					if k and k.Parent and value507 then
						pcall(function()
							k.Parent = value507
						end)
					end

					tbl287.saved[k] = nil
				end

				if tbl287.connection then
					pcall(function()
						tbl287.connection:Disconnect()
					end)

					tbl287.connection = nil
				end
			end

			func144("HideOtherPenPets", value505)
			func144("HideOwnPenPets", value505)

			func144("Optimizer", function(param205)
				flag101.opt(param205)
				func82("esp", "optimizer", param205)
			end)

			func144("FPSCap", function(param206)
				flag101.fps()
				func82("esp", "fps cap", param206)
			end)

			func89(UserInputService.InputBegan:Connect(function(input, gameProcessed)
				if gameProcessed then
					return
				end

				if tbl9.BypassBind and input.KeyCode == tbl9.BypassBind then
					local bypassSpeed = not tbl9.BypassSpeed
					local result79 = func25()
					local cbBypassSpeed = result79.Toggles and result79.Toggles.CB_BypassSpeed

					if cbBypassSpeed and type(cbBypassSpeed.SetValue) == "function" then
						cbBypassSpeed:SetValue(bypassSpeed)
					elseif tbl10.BypassSpeed and tbl10.BypassSpeed.set then
						tbl10.BypassSpeed.set(bypassSpeed)

						if tbl10.BypassSpeed.on then
							tbl10.BypassSpeed.on(bypassSpeed)
						end

						pcall(func40)
					else
						tbl9.BypassSpeed = bypassSpeed
						func107(func131())
					end
				end

				if tbl9.FlightBind and input.KeyCode == tbl9.FlightBind then
					local flight = not tbl9.Flight

					if tbl10.Flight and tbl10.Flight.set then
						tbl10.Flight.set(flight)
					else
						tbl9.Flight = flight
					end

					if tbl10.Flight and tbl10.Flight.on then
						tbl10.Flight.on(flight)
					else
						local func370 = func107
						local result80 = func131()
						func370(result80)

						if flag97 then
							local flag408 = (tbl9.Flight or tbl9.BypassSpeed) and true
							local flag409

							if flag408 then
								flag409 = flag408
							else
								flag409 = func88() or flag12 or flag11

								if not flag409 then
									flag409 = (tbl9.AutoPlaceEggs or tbl9.NightEggLoop or tbl9.AutoTreadmill) and true or not not tbl9.AutoHatch or flag100 and tbl9.StealTravel == "Flight"
								end
							end

							if flag409 then
								func91()
								func92()
								func96(true)
							elseif next(tbl147) then
								func96(false)
							end
						end
					end

					if flag33 then
						return
					end

					if flag34 then
						return
					end
					flag34 = true
					local flag410 = gen

					task.delay(0.35, function()
						flag34 = false
						if flag410 ~= (func26().gen or 0) then
							return
						end
						func40()
					end)
				end
			end))

			func89(UserInputService:GetPropertyChangedSignal("TouchEnabled"):Connect(function()
				func98(tbl9.Flight == true)
			end))

			local function func371()
				local ok, result = pcall(function()
					func135()

					for _, descendant in ipairs(workspace:GetDescendants()) do
						if descendant:IsA("ProximityPrompt") then
							func132(descendant)
						end
					end
				end)

				if not ok then
					local func372 = func82
					local str171 = tostring(result)
					func372("prompts", "ERR", "scan", str171)
				end

				local connection3 = workspace.DescendantAdded:Connect(function(descendant)
					if descendant:IsA("ProximityPrompt") then
						task.defer(func132, descendant)
					end
				end)

				if connection3 then
					tbl146[connection3] = true
				end

				local connection4 = ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
					func132(prompt)
					if not func133(prompt) then
						return
					end

					if func133(prompt) and str37 and str37.running and func88() then
						if (str37.state == "GoEgg" or str37.state == "Grab") and str37.promptIsTarget and str37.promptIsTarget(prompt, str37.target, 5) then
							func134(prompt)
						end

						return
					end

					if value232 then
						if pcall(value232, prompt, 0) then
							return
						end
					end

					pcall(function()
						prompt:InputHoldBegin()
						prompt:InputHoldEnd()
					end)
				end)

				if connection4 then
					tbl146[connection4] = true
				end

				pcall(function()
					local connection5 = ProximityPromptService.PromptShown:Connect(function(param207)
						flag136 = param207
						func132(param207)
						local promptIsTarget = str37

						if str37 then
							promptIsTarget = str37.running and func88() and func133(param207) and str37.state == "Grab" and str37.promptIsTarget and str37.promptIsTarget(param207, str37.target, 5)
						end

						if promptIsTarget then
							func134(param207)
						end
					end)

					if connection5 then
						tbl146[connection5] = true
					end
				end)

				pcall(function()
					local connection5 = ProximityPromptService.PromptHidden:Connect(function(flag411)
						if flag411 == flag136 then
							flag136 = nil
						end
					end)

					if connection5 then
						tbl146[connection5] = true
					end
				end)

				func82("prompts", "instant HoldDuration=0")
			end

			func371()

			local function func373()
				local func374 = func107
				local result81 = func131()
				func374(result81)
				if not flag97 then
					return
				end
				local flag412 = (tbl9.Flight or tbl9.BypassSpeed) and true

				if not flag412 then
					flag412 = func88() or flag12 or flag11

					if not flag412 then
						flag412 = (tbl9.AutoPlaceEggs or tbl9.NightEggLoop or tbl9.AutoTreadmill) and true or not not tbl9.AutoHatch or flag100 and tbl9.StealTravel == "Flight"
					end
				end

				if flag412 then
					func91()
					func92()
					func96(true)
					return
				end

				if next(tbl147) then
					func96(false)
				end
			end

			func373()
			pcall(func45, false)

			if tbl9.GenSnipeFloor == "999999999999999999999999999" then
				tbl9.GenSnipeFloor = "100m"
				tbl9.AutoSteal = false
				tbl9.AutoIndexSteal = false
				tbl9.AutoTreadmill = false
				tbl9.TrainWhenIdle = false

				for _, item45 in ipairs({ "GenSnipeFloor", "AutoSteal", "AutoTreadmill", "TrainWhenIdle" }) do
					local entry52 = tbl10[item45]

					if entry52 and entry52.set then
						pcall(entry52.set, tbl9[item45])
					end
				end

				pcall(func40, true)
			end

			local flag413

			if type(tbl9.ScrambleHealthTarget) == "string" then
				if tbl9.ScrambleHealthTarget == "3 HP" or tbl9.ScrambleHealthTarget == "5 HP" or tbl9.ScrambleHealthTarget == "10 HP" then
					tbl9.ScrambleHealthTarget = { tbl9.ScrambleHealthTarget }
				else
					tbl9.ScrambleHealthTarget = { "All robots" }
				end

				flag413 = true
			elseif type(tbl9.ScrambleHealthTarget) == "table" then
				local tbl288 = {}
				local flag414 = false
				local n = 0

				for _, item46 in ipairs(tbl9.ScrambleHealthTarget) do
					if string.lower(tostring(item46)):find("all", 1, true) then
						flag414 = true
					end

					local num35 = tonumber(tostring(item46):match("%d+"))

					if num35 and not tbl288[num35] then
						tbl288[num35] = true
						n += 1
					end
				end

				flag414 = flag414 or n == 0 or n == 3 or n == 2 and tbl288[3] and tbl288[10] and not tbl288[5]
				flag413 = false

				if flag414 then
					tbl9.ScrambleHealthTarget = { "All robots" }
					flag413 = true
				end
			else
				tbl9.ScrambleHealthTarget = { "All robots" }
				flag413 = true
			end

			if flag413 then
				local scrambleHealthTarget = tbl10.ScrambleHealthTarget

				if scrambleHealthTarget and scrambleHealthTarget.set then
					pcall(scrambleHealthTarget.set, tbl9.ScrambleHealthTarget)
				end
			end

			task.spawn(function()
				local gen2 = func26().gen or 0
				local str172 = ""

				while gen2 == (func26().gen or 0) do
					task.wait(1.5)

					local ok, result = pcall(function()
						return HttpService:JSONEncode(func39(true))
					end)

					if ok and type(result) == "string" and result ~= str172 then
						if func40() then
							str172 = result
						end
					end
				end
			end)

			if not flag14 then
				flag13 = tbl9.PhoneUI == true
			end

			if func24 then
				local ok, result = pcall(func24)

				if not ok then
					func82("ui", "legacy layout failed", tostring(result))
				end
			end

			if str37.bat and str37.bat.setLive then
				str37.bat.setLive(tbl9.BatAura == true)
			end

			obj4.Visible = false
			TextButton.Visible = false

			task.spawn(function()
				local genv = getgenv and getgenv() or _G

				if genv.CokeboysLinoriaLibrary and type(genv.CokeboysLinoriaLibrary.Unload) == "function" then
					pcall(function()
						genv.CokeboysLinoriaLibrary:Unload()
					end)
				end

				local ok, result = pcall(function()
					return game:HttpGet("https://raw.githubusercontent.com/yenkgg/UE-Linoria-Lib/1d88c661943a3a66faa45e5df47fb57f5e45134f/Library.lua")
				end)

				if not ok or type(result) ~= "string" then
					func82("ui", "Linoria download failed", tostring(result))
					return
				end
				local str173 = result:gsub("local State = InputService%.MouseIconEnabled;", "local State = true; InputService.MouseIconEnabled = true;", 1):gsub("while Library%.Toggled and ScreenGui%.Parent do", "while false and Library.Toggled and ScreenGui.Parent do", 1)
				local ok2, result2 = pcall(loadstring, str173)
				if not ok2 or type(result2) ~= "function" then
					func82("ui", "Linoria compile failed", tostring(result2))
					return
				end
				local ok3, cokeboysLinoriaLibrary = pcall(result2)
				if not ok3 or type(cokeboysLinoriaLibrary) ~= "table" then
					func82("ui", "Linoria startup failed", tostring(cokeboysLinoriaLibrary))
					return
				end

				if tbl9.AntiAFK == nil then
					tbl9.AntiAFK = true
				end

				local list96 = {}

				local connection3 = localPlayer.Idled:Connect(function()
					if tbl9.AntiAFK ~= true then
						return
					end

					pcall(function()
						local VirtualUser = game:GetService("VirtualUser")
						VirtualUser:CaptureController()
						VirtualUser:ClickButton2(Vector2.zero, workspace.CurrentCamera and workspace.CurrentCamera.CFrame or CFrame.new())
					end)
				end)

				genv.CokeboysLinoriaLibrary = cokeboysLinoriaLibrary
				genv.CokeboysLinoriaActive = true
				cokeboysLinoriaLibrary.Font = Enum.Font.BuilderSans
				cokeboysLinoriaLibrary.FontSize = 14
				cokeboysLinoriaLibrary.FontColor = Color3.fromRGB(242, 242, 238)
				cokeboysLinoriaLibrary.MainColor = Color3.fromRGB(20, 20, 20)
				cokeboysLinoriaLibrary.BackgroundColor = Color3.fromRGB(12, 12, 12)
				cokeboysLinoriaLibrary.AccentColor = Color3.fromRGB(247, 199, 0)
				cokeboysLinoriaLibrary.AccentColorDark = cokeboysLinoriaLibrary:GetDarkerColor(cokeboysLinoriaLibrary.AccentColor)
				cokeboysLinoriaLibrary.OutlineColor = Color3.fromRGB(55, 55, 52)
				cokeboysLinoriaLibrary.RiskColor = Color3.fromRGB(255, 105, 85)
				cokeboysLinoriaLibrary.ShowCustomCursor = false
				cokeboysLinoriaLibrary.ShowToggleFrameInKeybinds = true
				cokeboysLinoriaLibrary.UseBlur = false
				cokeboysLinoriaLibrary.NotifySide = "Right"
				UserInputService.MouseIconEnabled = true

				for _, item47 in ipairs({
					"AutoGreatBloom",
					"CrystalVacuum",
					"AutoDepositCrystals",
					"AutoRift",
					"RiftRerollShort",
					"AutoEvent",
					"AutoEventChests",
					"AutoCollectRings",
				}) do
					tbl9[item47] = false
				end

				local viewportSize = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1280, 720)
				local n7 = math.clamp(viewportSize.X - 24, 360, 820)
				math.clamp(viewportSize.Y - 72, 300, 600)
				local vector2 = Vector2.new

				local obj44 = cokeboysLinoriaLibrary:CreateWindow({
					Title = "",
					Center = true,
					AutoShow = not tbl9.StartMin,
					Resizable = true,
					ShowCustomCursor = false,
					UnlockMouseWhileOpen = true,
					NotifySide = "Right",
					TabPadding = 5,
					MenuFadeTime = 0.12,
					Size = UDim2.fromOffset(n7, vector2),
					MinSize = Vector2.new(math.min(520, n7), math.min(300, vector2)),
					MaxSize = Vector2.new(1050, 760),
				})

				local connection4 = nil
				local uiScale2 = Instance.new("UIScale")
				uiScale2.Name = "CokeboysViewportScale"
				uiScale2.Parent = obj44.Holder

				local function func375()
					local currentCamera = workspace.CurrentCamera
					local viewportSize2 = currentCamera and currentCamera.ViewportSize or Vector2.new(1280, 720)
					local size = obj44.Holder.Size
					uiScale2.Scale = math.clamp(math.min((viewportSize2.X - 12) / math.max(360, size.X.Offset), (viewportSize2.Y - 12) / math.max(300, size.Y.Offset), 1), 0.72, 1)
				end

				local function func376()
					if connection4 then
						connection4:Disconnect()
						connection4 = nil
					end

					local currentCamera = workspace.CurrentCamera

					if currentCamera then
						connection4 = currentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(func375)
					end

					func375()
				end

				func376()
				list96[#list96 + 1] = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(func376)
				local str174 = ""
				local value508 = nil
				local value509 = nil
				local inner = obj44.Holder and obj44.Holder:FindFirstChild("Inner")

				if inner then
					for _, child in ipairs(inner:GetChildren()) do
						if child:IsA("Frame") and child.Position.Y.Offset == 25 then
							child.Position = UDim2.new(0, 8, 0, 39)
							child.Size = UDim2.new(1, -16, 0, 31)
							child.BorderSizePixel = 0
						elseif child:IsA("Frame") and child.Position.Y.Offset == 58 then
							child.Position = UDim2.new(0, 8, 0, 75)
							child.Size = UDim2.new(1, -16, 1, -83)
							child.BorderSizePixel = 0
						end
					end

					local imageLabel = Instance.new("ImageLabel")
					imageLabel.Name = "CokeboysMark"
					imageLabel.BackgroundTransparency = 1
					imageLabel.Position = UDim2.fromOffset(10, 6)
					imageLabel.Size = UDim2.fromOffset(26, 26)
					imageLabel.Image = "rbxthumb://type=Asset&id=128335611339738&w=420&h=420"
					imageLabel.ImageColor3 = Color3.new(1, 1, 1)
					imageLabel.ScaleType = Enum.ScaleType.Fit
					imageLabel.ZIndex = 8
					imageLabel.Parent = inner
					local textLabel = Instance.new("TextLabel")
					textLabel.BackgroundTransparency = 1
					textLabel.Position = UDim2.fromOffset(43, 4)
					textLabel.Size = UDim2.fromOffset(150, 16)
					textLabel.Font = Enum.Font.BuilderSansBold
					textLabel.Text = "COKEBOYS"
					textLabel.TextColor3 = Color3.fromRGB(248, 248, 242)
					textLabel.TextSize = 14
					textLabel.TextXAlignment = Enum.TextXAlignment.Left
					textLabel.ZIndex = 8
					textLabel.Parent = inner
					local textLabel2 = Instance.new("TextLabel")
					textLabel2.BackgroundTransparency = 1
					textLabel2.Position = UDim2.fromOffset(43, 20)
					textLabel2.Size = UDim2.fromOffset(150, 12)
					textLabel2.Font = Enum.Font.BuilderSans
					textLabel2.Text = "STEAL AN EGG"
					textLabel2.TextColor3 = Color3.fromRGB(142, 142, 136)
					textLabel2.TextSize = 9
					textLabel2.TextXAlignment = Enum.TextXAlignment.Left
					textLabel2.ZIndex = 8
					textLabel2.Parent = inner
					local imageLabel2 = Instance.new("ImageLabel")
					imageLabel2.Name = "PikachuSilhouette"
					imageLabel2.Active = false
					imageLabel2.BackgroundTransparency = 1
					imageLabel2.AnchorPoint = Vector2.new(1, 1)
					imageLabel2.Position = UDim2.new(1, 20, 1, 20)
					imageLabel2.Size = UDim2.fromOffset(275, 275)
					imageLabel2.Image = "rbxassetid://11754499452"
					imageLabel2.ImageColor3 = Color3.fromRGB(247, 199, 0)
					imageLabel2.ImageTransparency = 0.86
					imageLabel2.Rotation = -45
					imageLabel2.ScaleType = Enum.ScaleType.Fit
					imageLabel2.ZIndex = 4
					imageLabel2.Parent = inner
					local frame = Instance.new("Frame")
					frame.Name = "CokeboysHeaderRule"
					frame.BorderSizePixel = 0
					frame.BackgroundColor3 = Color3.fromRGB(55, 55, 52)
					frame.Position = UDim2.new(0, 8, 0, 37)
					frame.Size = UDim2.new(1, -16, 0, 1)
					frame.ZIndex = 7
					frame.Parent = inner
					local textBox = Instance.new("TextBox")
					value509 = textBox
					textBox.Name = "EggSearch"
					textBox.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
					textBox.BorderSizePixel = 0
					textBox.Position = UDim2.new(1, -268, 0, 7)
					textBox.Size = UDim2.fromOffset(229, 22)
					textBox.ClearTextOnFocus = false
					textBox.Font = Enum.Font.BuilderSans
					textBox.PlaceholderText = "Search all features..."
					textBox.PlaceholderColor3 = Color3.fromRGB(120, 120, 116)
					textBox.Text = ""
					textBox.TextColor3 = Color3.fromRGB(240, 240, 235)
					textBox.TextSize = 12
					textBox.TextXAlignment = Enum.TextXAlignment.Left
					textBox.ZIndex = 20
					textBox.Parent = inner
					local uiPadding = Instance.new("UIPadding")
					uiPadding.PaddingLeft = UDim.new(0, 8)
					uiPadding.PaddingRight = UDim.new(0, 8)
					uiPadding.Parent = textBox
					local uiCorner = Instance.new("UICorner")
					uiCorner.CornerRadius = UDim.new(0, 5)
					uiCorner.Parent = textBox
					local uiStroke = Instance.new("UIStroke")
					uiStroke.Color = Color3.fromRGB(55, 55, 52)
					uiStroke.Thickness = 1
					uiStroke.Parent = textBox

					textBox:GetPropertyChangedSignal("Text"):Connect(function()
						str174 = string.lower(textBox.Text or "")

						if value508 then
							value508(str174)
						end
					end)
				end

				local function func377(param208, param209)
					local entry53 = tbl10[param208]
					if not entry53 then
						return
					end

					if entry53.set then
						pcall(entry53.set, param209)
					else
						tbl9[param208] = param209
					end

					if entry53.on then
						task.spawn(entry53.on, param209)
					end

					pcall(func40)
				end

				local function func378(flag415)
					return type(flag415) == "string" and flag415 ~= "" and flag415 or nil
				end

				local function func379(obj45, str175, param210, param211)
					return obj45:AddToggle("CB_" .. str175, {
						Text = param210,
						Tooltip = func378(param211),
						Default = tbl9[str175] == true,
						Callback = function(value)
							func377(str175, value)
						end,
					})
				end

				local function func380(obj46, str176, param212, param213, param214, param215, flag416)
					return obj46:AddSlider("CB_" .. str176, {
						Text = param212,
						Tooltip = func378(param213),
						Default = tonumber(tbl9[str176]) or param214,
						Min = param214,
						Max = param215,
						Rounding = 0,
						Suffix = flag416 or "",
						Compact = false,
						HideMax = true,
						Callback = function(value)
							func377(str176, value)
						end,
					})
				end

				local function func381(obj47, str177, param216, param217, flag417)
					return obj47:AddInput("CB_" .. str177, {
						Text = param216,
						Tooltip = func378(param217),
						Default = tostring(tbl9[str177] or ""),
						Placeholder = flag417 or "",
						Numeric = false,
						Finished = true,
						ClearTextOnFocus = false,
						Callback = function(value)
							func377(str177, value)
						end,
					})
				end

				local function func382(obj48, str178, param218, param219, list97, flag418)
					local entry54 = tbl9[str178]
					local tbl289

					if flag418 then
						tbl289 = {}
						local func383 = ipairs
						entry54 = type(entry54) == "table" and entry54
						local tbl290 = entry54 or {}

						for _, value510 in func383(tbl290) do
							tbl289[value510] = true
						end
					else
						tbl289 = entry54
					end

					return obj48:AddDropdown("CB_" .. str178, {
						Text = param218,
						Tooltip = func378(param219),
						Values = list97,
						Default = tbl289,
						Multi = flag418 == true,
						Searchable = #list97 > 8,
						Callback = function(value)
							if flag418 then
								local tbl291 = {}

								for _, item48 in ipairs(list97) do
									if value[item48] then
										table.insert(tbl291, item48)
									end
								end

								func377(str178, tbl291)
							else
								func377(str178, value)
							end
						end,
					})
				end

				local function func384(obj49, param220, param221, param222)
					return obj49:AddButton({
						Text = param221,
						Tooltip = func378(param222),
						Func = function()
							local entry55 = tbl10[param220]

							if entry55 and entry55.btn and firesignal then
								pcall(firesignal, entry55.btn.MouseButton1Click)
							elseif entry55 and entry55.on then
								task.spawn(entry55.on)
							end
						end,
					})
				end

				local list98 = {}
				local flag419 = false

				local function func385(obj50, str179, flag420)
					local value511 = obj50:AddLabel(str179 .. "\n" .. tostring(flag420 and flag420.Text or "Waiting..."), true)
					list98[#list98 + 1] = { row = value511, title = str179, label = flag420 }

					if not flag419 then
						flag419 = true

						task.spawn(function()
							while not cokeboysLinoriaLibrary.Unloaded do
								if obj44.Holder.Visible then
									for _, item49 in ipairs(list98) do
										pcall(function()
											item49.row:SetText(item49.title .. "\n" .. tostring(item49.label and item49.label.Text or "Waiting..."))
										end)
									end

									task.wait(1)
								else
									obj44.Holder:GetPropertyChangedSignal("Visible"):Wait()
								end
							end
						end)
					end

					return value511
				end

				local cokeboysTabs = {
					Farm = obj44:AddTab("Auto Farm"),
					Pen = obj44:AddTab("Pets & Eggs"),
					Economy = obj44:AddTab("Upgrades"),
					Speed = obj44:AddTab("Movement"),
					Events = obj44:AddTab("Events"),
					Safety = obj44:AddTab("Protection"),
					Info = obj44:AddTab("Egg Index"),
					Settings = obj44:AddTab("Settings"),
				}

				genv.CokeboysTabs = cokeboysTabs

				if inner and value509 then
					local frame = Instance.new("Frame")
					frame.Name = "GlobalSearchResults"
					frame.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
					frame.BorderSizePixel = 0
					frame.Position = UDim2.new(1, -268, 0, 33)
					frame.Size = UDim2.fromOffset(229, 0)
					frame.Visible = false
					frame.ZIndex = 80
					frame.Parent = inner
					local uiCorner = Instance.new("UICorner")
					uiCorner.CornerRadius = UDim.new(0, 6)
					uiCorner.Parent = frame
					local uiStroke = Instance.new("UIStroke")
					uiStroke.Color = Color3.fromRGB(247, 199, 0)
					uiStroke.Thickness = 1
					uiStroke.Parent = frame

					local tbl292 = {
						{ "Auto steal", "Farm", "steal egg travel speed target priority fill missing index" },
						{ "Target priority", "Farm", "best value rarity mutation generation snipe weight" },
						{ "Areas and filters", "Farm", "zones area egg types mutations" },
						{ "Auto place eggs", "Pen", "place pen eggs night hatch loop" },
						{ "Auto hatch", "Pen", "hatch eggs ready" },
						{ "Equip best pets", "Pen", "pets equip best" },
						{ "Sell pets and eggs", "Pen", "auto sell preview income" },
						{ "Automatic upgrades", "Economy", "upgrade trails treadmill pen money" },
						{ "Ghost treadmill", "Economy", "unanchor speedpower moving train" },
						{ "Auto treadmill", "Economy", "speedpower training" },
						{ "Movement and flight", "Speed", "bypass speed flight cap" },
						{ "Performance", "Speed", "optimizer fps hide pets other players own pen" },
						{
							"Dr. Scramble",
							"Events",
							"event drone bat auto scramble lost vault parts robot health 3 5 10",
						},
						{ "Anti trap", "Safety", "protection traps" },
						{ "Anti ragdoll", "Safety", "protection knockdown" },
						{ "Bat aura", "Safety", "swing nearby players" },
						{
							"Egg and Player ESP",
							"Safety",
							"visual player names health distance beam target plot stats",
						},
						{ "Egg Index", "Info", "live eggs map steal stop preview" },
						{ "Webhook", "Settings", "notifications url stolen hatched sold rewards" },
						{ "Server hop", "Settings", "hop server players idle" },
						{ "Menu settings", "Settings", "keybind unload about" },
					}

					local tbl293 = {}

					for i = 1, 6 do
						local textButton = Instance.new("TextButton")
						textButton.AutoButtonColor = false
						textButton.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
						textButton.BorderSizePixel = 0
						textButton.Position = UDim2.fromOffset(5, 5 + (i - 1) * 29)
						textButton.Size = UDim2.new(1, -10, 0, 25)
						textButton.Font = Enum.Font.BuilderSans
						textButton.TextColor3 = Color3.fromRGB(238, 238, 232)
						textButton.TextSize = 12
						textButton.TextXAlignment = Enum.TextXAlignment.Left
						textButton.Visible = false
						textButton.ZIndex = 82
						textButton.Parent = frame
						local uiPadding = Instance.new("UIPadding")
						uiPadding.PaddingLeft = UDim.new(0, 8)
						uiPadding.Parent = textButton
						local uiCorner2 = Instance.new("UICorner")
						uiCorner2.CornerRadius = UDim.new(0, 4)
						uiCorner2.Parent = textButton

						textButton.Activated:Connect(function()
							local attribute = textButton:GetAttribute("TabKey")

							if attribute and cokeboysTabs[attribute] then
								cokeboysTabs[attribute]:ShowTab()
								value509.Text = ""
								frame.Visible = false
							end
						end)

						tbl293[i] = textButton
					end

					value508 = function(flag421)
						local lowered16 = string.lower(tostring(flag421 or "")):gsub("^%s+", ""):gsub("%s+$", "")
						local list99 = {}

						if lowered16 ~= "" then
							for _, item50 in ipairs(tbl292) do
								if string.find(string.lower(item50[1] .. " " .. item50[2] .. " " .. item50[3]), lowered16, 1, true) then
									list99[#list99 + 1] = item50
								end
							end
						end

						local n = math.min(#list99, #tbl293)
						frame.Visible = n > 0
						frame.Size = UDim2.fromOffset(229, n > 0 and 10 + n * 29 or 0)

						for i, item51 in ipairs(tbl293) do
							local entry56 = list99[i]
							item51.Visible = entry56 ~= nil
							item51.Text = entry56 and entry56[1] .. "   ·   " .. entry56[2] or ""
							item51:SetAttribute("TabKey", entry56 and entry56[2] or nil)
						end
					end
				end

				local value512 = cokeboysTabs.Farm:AddLeftGroupbox("Main loop")
				func379(value512, "AutoSteal", "Auto steal", "Automatically steals eligible eggs.")
				func379(value512, "AutoIndexSteal", "Auto fill index", "Targets egg types missing from your personal index.")
				func379(value512, "ForestBaitJump", "Instant steal", "Uses a bait egg from your selected area to speed up supported steals.")
				func382(value512, "InstantStealBaitArea", "Instant Steal bait area", "Choose where Instant Steal picks up its temporary bait egg: Forest, Lake or Desert.", { "Forest", "Lake", "Desert" }, false)
				func382(value512, "StealTravel", "Travel mode", "Movement used only while Auto Steal is running.", { "Speed", "Flight" }, false)
				func380(value512, "StealSpeed", "Travel speed", "Studs per second.", 50, 1300, " studs/s")
				local value513 = cokeboysTabs.Farm:AddRightGroupbox("Target priority")
				func382(value513, "StealMode", "What to take", "Choose how eggs are ranked.", { "Best value", "Egg type filter", "Gen ($/s) snipe" }, false)
				func381(value513, "GenSnipeFloor", "Egg ($/s) snipe", "Minimum generation value.", "any · e.g. 100m")
				func381(value513, "MinWeight", "Minimum weight", "The same Kg the game shows; blank means any.", "any")
				func382(cokeboysTabs.Farm:AddLeftGroupbox("Areas"), "Areas", "Areas", "Zones Auto Steal may target.", list1, true)
				local Filters = cokeboysTabs.Farm:AddRightGroupbox("Filters")
				func379(Filters, "UseRarity", "Egg type filter", "Only use selected egg types.")
				func382(Filters, "Rarities", "Egg types", "Allowed egg rarities.", tbl6, true)
				func379(Filters, "UseMutation", "Mutation filter", "Only use selected mutations.")
				func382(Filters, "Mutations", "Mutations", "Allowed mutations.", tbl7, true)
				local Eggs = cokeboysTabs.Pen:AddLeftGroupbox("Eggs")
				func379(Eggs, "AutoPlaceEggs", "Auto place eggs", "Places eligible eggs in your pen.")
				func379(Eggs, "NightEggLoop", "Place & hatch eggs at night", "Travels to your pen, places eggs and hatches ready eggs during nighttime.")
				func379(Eggs, "DontPlaceRiftEggs", "Don't place Shattered Rift eggs", "Keeps Shattered Rift reward eggs in inventory; sacrifice eggs can still be placed.")
				func382(Eggs, "NeverPlaceRarity", "Never place rarer", "Preserve eggs at or above this rarity.", { "Place all", unpack(tbl6) }, false)
				func381(Eggs, "PlaceMinGen", "Only place eggs worth", "Minimum $/s.", "any · e.g. 1.5m")
				func379(Eggs, "AutoHatch", "Auto hatch", "Hatches eggs when ready.")
				func379(Eggs, "EquipBest", "Equip best pets", "Uses the game's equip-best action.")
				local Selling = cokeboysTabs.Pen:AddRightGroupbox("Selling")
				func381(Selling, "SellUnderGen", "Sell earning under", "Nothing sells when blank.", "nothing · e.g. 250k")
				func379(Selling, "AutoSellPets", "Auto sell pets", "Sells eligible low-earning pets.")
				func379(Selling, "AutoSellEggs", "Auto sell eggs", "Sells spare eligible eggs.")
				func384(Selling, "SellPreview", "Preview sale", "Preview which assets match your rules.")
				func379(cokeboysTabs.Pen:AddRightGroupbox("Selling filters"), "SellNonRiftRecipeEggs", "Protect pets needed for the Shattered Rift pool", "When enabled, auto sell keeps every pet and egg in the Shattered Rift sacrifice pool. Sell-under still applies to everything else.")
				local value514 = cokeboysTabs.Economy:AddLeftGroupbox("Automatic upgrades")
				func379(value514, "UpgTrails", "Upgrade trails", "Buys affordable trail upgrades.")
				func379(value514, "UpgTreadmill", "Upgrade treadmill", "Buys the next affordable treadmill.")
				func379(value514, "UpgPen", "Upgrade pen", "Buys additional pen capacity.")
				func381(value514, "KeepMoney", "Keep this much money", "Never spend below this amount.", "spend freely · e.g. 500m")
				local Treadmill = cokeboysTabs.Economy:AddRightGroupbox("Treadmill")
				func379(Treadmill, "AutoTreadmill", "Auto treadmill", "Walks to your treadmill and trains SpeedPower automatically.")
				func379(Treadmill, "GhostTreadmill", "Ghost treadmill", "Keeps training active while you move.")
				func379(Treadmill, "TrainWhenIdle", "Train when idle", "Trains during safe downtime.")
				func380(Treadmill, "ReadyEarly", "Get ready early", "Step off before an egg reset.", 0, 15, " s")
				local Movement = cokeboysTabs.Speed:AddLeftGroupbox("Movement")
				local bypassSpeed = func379(Movement, "BypassSpeed", "Bypass speed", "Use the key picker on this row to toggle it anywhere.")
				local str180 = "B"

				pcall(function()
					str180 = tbl9.BypassBind.Name
				end)

				bypassSpeed:AddKeyPicker("CB_BypassKey", {
					Default = str180,
					NoUI = true,
					Text = "Toggle bypass speed",
					Mode = "Toggle",
					ChangedCallback = function(flag422)
						func377("BypassBind", Enum.KeyCode[tostring(flag422 or "B"):gsub("Enum%.KeyCode%.", "")] or Enum.KeyCode.B)
					end,
				})

				func380(Movement, "BypassCap", "Bypass speed cap", "Walking speed cap.", 150, 1300, " studs/s")
				local flight = func379(Movement, "Flight", "Flight", "Desktop: WASD · Space/Ctrl vertical. Touch: thumbstick · on-screen Up/Down.")
				local str181 = "F"

				pcall(function()
					str181 = tbl9.FlightBind.Name
				end)

				flight:AddKeyPicker("CB_FlightKey", {
					Default = str181,
					NoUI = true,
					Text = "Toggle flight",
					Mode = "Toggle",
					ChangedCallback = function(flag423)
						func377("FlightBind", Enum.KeyCode[tostring(flag423 or "F"):gsub("Enum%.KeyCode%.", "")] or Enum.KeyCode.F)
					end,
				})

				func380(Movement, "FlightSpeed", "Flight speed", "Flight velocity.", 150, 1300, " studs/s")
				local Performance = cokeboysTabs.Speed:AddRightGroupbox("Performance")
				func379(Performance, "Optimizer", "Game optimizer", "Reduces expensive visual effects.")
				func379(Performance, "HideOtherPenPets", "Hide other players' pets", "Hides other players' pen pets on your screen.")
				func379(Performance, "HideOwnPenPets", "Hide my pen pets", "Hides your pen pets on your screen.")
				func380(Performance, "FPSCap", "FPS cap", "Zero leaves the cap unchanged.", 0, 240, " fps")
				local value515 = cokeboysTabs.Events:AddLeftGroupbox("Dr. Scramble")
				func379(value515, "AutoScramble", "Auto Dr. Scramble", "Automatically handles Dr. Scramble robots.")
				func379(value515, "ScrambleWeaponSwitch", "Switch weapons", "Switch between available swing weapons during Dr. Scramble. Turn off to keep using one equipped weapon.")
				func380(value515, "ScrambleSwitchDelay", "Weapon switch delay", "Time between alternate weapon switches.", 200, 1000, " ms")
				func379(value515, "ScrambleRealClicks", "⚠ Real mouse clicks", "BEWARE: Faster Dr. Scramble input, but it clicks your screen and may activate game UI or other windows. Off by default.")
				func379(value515, "AutoScrambleParts", "Collect Lost Vault Parts", "Automatically collects available Lost Vault Parts.")
				local scrambleHealthTarget = func382(value515, "ScrambleHealthTarget", "Robot health targets", "All robots is fastest. Select individual tiers only when you want to exclude others.", { "All robots", "3 HP", "5 HP", "10 HP" }, true)

				task.defer(function()
					local tbl294 = {}
					local func386 = ipairs
					local scrambleHealthTarget2 = type(tbl9.ScrambleHealthTarget) == "table" and tbl9.ScrambleHealthTarget or {}
					local n = 0

					for _, value516 in func386(scrambleHealthTarget2) do
						if string.lower(tostring(value516)):find("all", 1, true) then
							tbl294 = { ["All robots"] = true }
							n = 1
							break
						elseif value516 == "3 HP" or value516 == "5 HP" or value516 == "10 HP" then
							tbl294[value516] = true
							n += 1
						end
					end
					-- join us: https://discord.gg/x7YbZeezpm

					if n == 0 then
						tbl294 = { ["All robots"] = true }
					end

					pcall(scrambleHealthTarget.SetValue, scrambleHealthTarget, tbl294)
				end)

				func385(value515, "Status", value64)
				local value517 = cokeboysTabs.Events:AddRightGroupbox("Shattered Rift")
				func379(value517, "ShatteredRiftFarm", "Stock & complete Shattered Rift", "Keeps the sacrifice pool, prioritizes the live three, and completes the recipe during safe downtime.")
				func385(value517, "Live recipe", riftStatus)
				local Defence = cokeboysTabs.Safety:AddLeftGroupbox("Defence")
				func379(Defence, "AntiTrap", "Anti trap", "Disables hostile traps.")
				func379(Defence, "AntiMob", "Anti ragdoll", "Prevents knockdowns while keeping your bat usable.")
				func379(Defence, "BatAura", "Bat aura", "Swings at nearby players.")
				local value518 = cokeboysTabs.Safety:AddRightGroupbox("Visual safety")
				func379(value518, "EggESP", "Egg ESP", "Shows eggs through the map.")
				func379(value518, "PlayerESP", "Player ESP", "Shows clean semi-transparent labels above other players.")
				func382(value518, "ESPFilter", "Show ESP on", "Controls which eggs are drawn.", { "All eggs", "Eggs matching my filters", "Stolen target only" }, false)
				func379(value518, "ESPBeam", "Beam to target", "Draws a line to the active target.")
				func379(value518, "PlotESP", "Plot egg ESP", "Shows payout and hatch timers.")
				func379(value518, "StatsPanel", "Stats panel", "Shows compact live session statistics.")
				local obj51 = cokeboysTabs.Info:AddLeftGroupbox("Live Egg Index")
				local obj52 = cokeboysTabs.Info:AddRightGroupbox("Live Egg Index")

				local function func387(param223)
					local parent = param223.Container and param223.Container.Parent and param223.Container.Parent.Parent and param223.Container.Parent.Parent.Parent

					if parent and parent:IsA("ScrollingFrame") then
						parent.ScrollBarThickness = 4
						parent.ScrollBarImageColor3 = Color3.fromRGB(247, 199, 0)
						parent.ScrollBarImageTransparency = 0.15
						return parent
					end
				end

				local value519 = func387(obj51)
				local value520 = func387(obj52)

				if value519 then
					value519.ScrollBarThickness = 0
				end

				local flag424 = false

				local function func388(obj53, num36)
					if not (obj53 and num36) then
						return
					end

					obj53:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
						if flag424 then
							return
						end
						flag424 = true
						local n = math.max(1, obj53.AbsoluteCanvasSize.Y - obj53.AbsoluteSize.Y)
						local n8 = math.max(0, num36.AbsoluteCanvasSize.Y - num36.AbsoluteSize.Y)
						num36.CanvasPosition = Vector2.new(0, math.clamp(obj53.CanvasPosition.Y / n, 0, 1) * n8)
						flag424 = false
					end)
				end

				func388(value519, value520)
				func388(value520, value519)
				local list100 = {}
				obj52:AddLabel("Refreshing live eggs...", true)
				local uid = nil

				local function func389()
					uid = nil
					str37.manualOnlyUid = nil
					str37.manualStartedAutoSteal = nil
					str37.target = nil
					str37.lockUid = nil
					str37.lockPos = nil
					func377("AutoSteal", false)
				end

				obj51:AddButton({ Text = "STOP STEALING", Tooltip = "Stops the selected egg steal immediately.", Func = func389 })

				local function func390(param224)
					local n = tonumber(param224) or 0
					if n >= 1e12 then
						return string.format("%.1fT", n / 1e12)
					end

					if n >= 1e9 then
						return string.format("%.1fB", n / 1e9)
					end

					if n >= 1000000 then
						return string.format("%.1fM", n / 1000000)
					end

					if n >= 1000 then
						return string.format("%.1fK", n / 1000)
					end
					return string.format("%.0f", n)
				end

				local function func391(flag425)
					if type(flag425) ~= "table" or not flag425.Uid then
						return
					end
					local value521 = func139(flag425)
					if typeof(value521) ~= "Vector3" then
						return
					end
					local assetCategory = flag425.AssetCategory or flag425.Category
					local value522 = directory and assetCategory and directory[assetCategory] or nil

					local target = {
						rec = flag425,
						cfg = value522,
						pos = value521,
						earn = func136(flag425, value522),
						rar = type(value522) == "table" and type(value522.Rarity) == "table" and (tonumber(value522.Rarity.RarityNumber) or 0) or 0,
					}

					local displayName

					if value522 then
						displayName = value522.DisplayName or assetCategory
					else
						displayName = value522
					end

					if not displayName then
						displayName = tostring(assetCategory or "Egg")
					end

					target.name = displayName
					target.area = tostring(flag425.AreaId or "")
					target.matched = true
					str37.target = target
					str37.lockUid = flag425.Uid
					str37.lockPos = value521
					str37.lockAt = os.clock()
					str37.manualOnlyUid = flag425.Uid
					uid = flag425.Uid
					str37.manualStartedAutoSteal = not func88()

					if not func88() then
						func377("AutoSteal", true)
					end
				end

				local function func392(obj54, param225, num37)
					for i = 1, param225 do
						local textButton = Instance.new("TextButton")
						textButton.AutoButtonColor = false
						textButton.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
						textButton.BorderSizePixel = 0
						textButton.Size = UDim2.new(1, -4, 0, 88)
						textButton.Text = ""
						textButton.Visible = false
						textButton.ZIndex = 7
						textButton.Parent = obj54.Container
						local uiCorner = Instance.new("UICorner")
						uiCorner.CornerRadius = UDim.new(0, 5)
						uiCorner.Parent = textButton
						local uiStroke = Instance.new("UIStroke")
						uiStroke.Color = Color3.fromRGB(55, 55, 52)
						uiStroke.Thickness = 1
						uiStroke.Parent = textButton
						local viewportFrame = Instance.new("ViewportFrame")
						viewportFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
						viewportFrame.BorderSizePixel = 0
						viewportFrame.Position = UDim2.fromOffset(7, 7)
						viewportFrame.Size = UDim2.fromOffset(74, 74)
						viewportFrame.Ambient = Color3.fromRGB(210, 210, 210)
						viewportFrame.LightColor = Color3.fromRGB(255, 245, 210)
						viewportFrame.LightDirection = Vector3.new(-1, -1, -1)
						viewportFrame.ZIndex = 8
						viewportFrame.Parent = textButton
						local uiCorner2 = Instance.new("UICorner")
						uiCorner2.CornerRadius = UDim.new(0, 4)
						uiCorner2.Parent = viewportFrame
						local textLabel = Instance.new("TextLabel")
						textLabel.BackgroundTransparency = 1
						textLabel.Position = UDim2.fromOffset(90, 10)
						textLabel.Size = UDim2.new(1, -168, 0, 22)
						textLabel.Font = Enum.Font.BuilderSansBold
						textLabel.TextColor3 = Color3.fromRGB(244, 244, 238)
						textLabel.TextSize = 14
						textLabel.TextXAlignment = Enum.TextXAlignment.Left
						textLabel.TextTruncate = Enum.TextTruncate.AtEnd
						textLabel.ZIndex = 8
						textLabel.Parent = textButton
						local textLabel2 = Instance.new("TextLabel")
						textLabel2.BackgroundTransparency = 1
						textLabel2.Position = UDim2.fromOffset(90, 36)
						textLabel2.Size = UDim2.new(1, -168, 0, 38)
						textLabel2.Font = Enum.Font.BuilderSans
						textLabel2.TextColor3 = Color3.fromRGB(247, 199, 0)
						textLabel2.TextSize = 11
						textLabel2.TextXAlignment = Enum.TextXAlignment.Left
						textLabel2.TextYAlignment = Enum.TextYAlignment.Top
						textLabel2.TextWrapped = true
						textLabel2.TextTruncate = Enum.TextTruncate.AtEnd
						textLabel2.ZIndex = 8
						textLabel2.Parent = textButton
						local textButton2 = Instance.new("TextButton")
						textButton2.Name = "StealEgg"
						textButton2.AutoButtonColor = false
						textButton2.BackgroundColor3 = Color3.fromRGB(35, 30, 12)
						textButton2.BorderSizePixel = 0
						textButton2.Position = UDim2.new(1, -73, 0.5, -15)
						textButton2.Size = UDim2.fromOffset(64, 30)
						textButton2.Font = Enum.Font.BuilderSansBold
						textButton2.Text = "STEAL"
						textButton2.TextColor3 = Color3.fromRGB(247, 199, 0)
						textButton2.TextSize = 11
						textButton2.ZIndex = 10
						textButton2.Parent = textButton
						local uiCorner3 = Instance.new("UICorner")
						uiCorner3.CornerRadius = UDim.new(0, 5)
						uiCorner3.Parent = textButton2
						local uiStroke2 = Instance.new("UIStroke")
						uiStroke2.Color = Color3.fromRGB(92, 76, 12)
						uiStroke2.Thickness = 1
						uiStroke2.Parent = textButton2

						local tbl295 = {
							button = textButton,
							icon = viewportFrame,
							name = textLabel,
							detail = textLabel2,
							outline = uiStroke,
							action = textButton2,
							actionStroke = uiStroke2,
						}

						textButton2.Activated:Connect(function()
							if tbl295.record then
								if uid == tbl295.record.Uid then
									func389()
									textButton2.Text = "STEAL"
									textButton2.BackgroundColor3 = Color3.fromRGB(35, 30, 12)
									textButton2.TextColor3 = Color3.fromRGB(247, 199, 0)
									uiStroke2.Color = Color3.fromRGB(92, 76, 12)
								else
									func391(tbl295.record)
									textButton2.Text = "STOP"
									textButton2.BackgroundColor3 = Color3.fromRGB(247, 199, 0)
									textButton2.TextColor3 = Color3.fromRGB(12, 12, 12)
									uiStroke2.Color = Color3.fromRGB(247, 199, 0)
								end
							end
						end)

						tbl295.rankIndex = num37 + (i - 1) * 2
						list100[#list100 + 1] = tbl295
					end

					obj54:Resize()
				end

				func392(obj51, 30, 1)
				func392(obj52, 30, 2)

				local function func393(num38)
					local areaEggSlotsClient = workspace:FindFirstChild("AreaEggSlotsClient")
					if not areaEggSlotsClient then
						return nil
					end
					local uid2 = tostring(num38.record.Uid)
					local value523 = nil
					local value524 = nil

					for _, child in ipairs(areaEggSlotsClient:GetChildren()) do
						if child:IsA("Model") then
							if tostring(child:GetAttribute("UID") or "") == uid2 or child.Name == uid2 or string.find(child.Name, uid2, 1, true) then
								return child
							end
							local ok4, result3 = pcall(child.GetPivot, child)

							if ok4 then
								local magnitude = (result3.Position - num38.position).Magnitude

								if magnitude < 8 and (not value523 or magnitude < value523) then
									value523 = magnitude
									value524 = child
								end
							end
						end
					end

					return value524
				end

				local function func394(param226, param227)
					local previewUid = tostring(param227.record.Uid)
					if param226.previewUid == previewUid then
						return
					end
					param226.icon:ClearAllChildren()
					local uiCorner = Instance.new("UICorner")
					uiCorner.CornerRadius = UDim.new(0, 4)
					uiCorner.Parent = param226.icon
					local flag426 = func393(param227)
					if not flag426 then
						return
					end
					local ok4, result3 = pcall(flag426.Clone, flag426)
					if not ok4 or not result3 then
						return
					end
					param226.previewUid = previewUid

					for _, descendant in ipairs(result3:GetDescendants()) do
						if descendant:IsA("Script") or descendant:IsA("LocalScript") or descendant:IsA("BillboardGui") or descendant:IsA("SurfaceGui") then
							descendant:Destroy()
						elseif descendant:IsA("BasePart") then
							descendant.Anchored = true
							descendant.CanCollide = false
							descendant.CanTouch = false
							descendant.CanQuery = false
						end
					end

					local worldModel = Instance.new("WorldModel")
					worldModel.Parent = param226.icon
					result3.Parent = worldModel
					local ok5, result4, result5 = pcall(result3.GetBoundingBox, result3)
					if not ok5 then
						result3:Destroy()
						return
					end
					local camera = Instance.new("Camera")
					camera.FieldOfView = 34
					local n = math.max(result5.X, result5.Y, result5.Z, 1)
					local position3 = result4.Position
					camera.CFrame = CFrame.new(position3 + Vector3.new(n * 1.35, n * 0.55, n * 1.7), position3)
					camera.Parent = param226.icon
					param226.icon.CurrentCamera = camera
				end

				local function func395(...) end
				func395()
				task.spawn(function(...) end)
				local areaEggSlotsClient = workspace:FindFirstChild("AreaEggSlotsClient")

				if areaEggSlotsClient then
					list96[#list96 + 1] = areaEggSlotsClient.ChildAdded:Connect(func395)
					list96[#list96 + 1] = areaEggSlotsClient.ChildRemoved:Connect(func395)
				end

				local value525 = flag96
				local fieldRefreshed

				if flag96 then
					fieldRefreshed = flag96.FieldRefreshed
				else
					fieldRefreshed = value525
				end

				if type(fieldRefreshed) == "table" and type(fieldRefreshed.Connect) == "function" then
					local ok4, result3 = pcall(function()
						return fieldRefreshed:Connect(func395)
					end)

					if ok4 and result3 then
						list96[#list96 + 1] = result3
					end
				end

				task.spawn(function(...) end)
				local Webhook2 = cokeboysTabs.Settings:AddLeftGroupbox("Webhook")
				func379(Webhook2, "HookEnabled", "Send outbound", "Enable webhook notifications.")
				func381(Webhook2, "HookUrl", "Endpoint URL", "Enter your Discord webhook URL.", "Paste Discord webhook URL here...")
				func379(Webhook2, "HookStolen", "Egg stolen", "Send stolen egg details.")
				func379(Webhook2, "HookHatched", "Egg hatched", "Send hatch details.")
				func379(Webhook2, "HookSold", "Sold pets or eggs", "Send sale details.")
				func379(Webhook2, "HookRewards", "Rewards claimed", "Send claimed rewards.")
				local obj55 = Webhook2:AddLabel("Status · waiting for a webhook URL", true)
				local flag427 = false

				Webhook2:AddButton({
					Text = "Test send",
					Tooltip = "Send one sample message and show the actual result.",
					Func = function()
						if flag427 then
							return
						end
						local cbHookUrl = genv.Options and genv.Options.CB_HookUrl
						local str182

						if cbHookUrl then
							str182 = tostring(cbHookUrl.Value or "")
						else
							str182 = cbHookUrl
						end

						local obj56

						if str182 then
							obj56 = str182
						else
							obj56 = tostring(tbl9.HookUrl or "")
						end

						local hookUrl = obj56:gsub("^%s+", ""):gsub("%s+$", "")

						if hookUrl == "" or not hookUrl:find("^https://") then
							pcall(function()
								obj55:SetText("Status · paste the full https:// webhook URL above")
							end)

							return
						end

						flag427 = true
						tbl9.HookUrl = hookUrl
						func377("HookEnabled", true)
						pcall(func40)

						pcall(function()
							obj55:SetText("Status · sending one test...")
						end)

						task.spawn(function()
							if not flag138 or type(flag138.test) ~= "function" then
								pcall(function()
									obj55:SetText("Status · sender unavailable")
								end)

								flag427 = false
								return
							end

							local flag428, value526 = flag138.test()

							pcall(function()
								obj55:SetText(flag428 and "Status · test sent successfully" or "Status · failed: " .. tostring(value526))
							end)

							flag427 = false
						end)
					end,
				})

				local value527 = cokeboysTabs.Settings:AddRightGroupbox("Webhook filters")
				func381(value527, "HookMinGen", "Minimum egg m/s", "Only send stolen and hatched eggs at or above this value. Blank sends everything.", "everything · e.g. 50m")
				local list101 = { "Any" }

				for _, item52 in ipairs(tbl6) do
					list101[#list101 + 1] = item52
				end

				func382(value527, "HookRarityFloor", "Minimum rarity", "Skip stolen and hatched eggs below this rarity.", list101, false)
				func379(value527, "SessionDigest", "10-minute session recap", "Send stolen, lost, hatched, sold and cash totals every ten minutes.")
				func382(value527, "HookPing", "Ping", "Choose whether webhook messages ping anyone.", { "No ping", "Here", "User id" }, false)
				func381(value527, "HookUserId", "Discord user ID", "Used only when Ping is set to User id.", "0")
				func379(value527, "HookUsername", "Show Roblox identity", "Include your Roblox name and headshot.")
				func379(value527, "ExportUrl", "Include URL in exports", "Allow exported configs to carry the webhook URL.")
				local Menu = cokeboysTabs.Settings:AddRightGroupbox("Menu")

				local function func396(flag429)
					local str183 = tostring(flag429 or "RightControl"):gsub("Enum%.KeyCode%.", ""):gsub("Enum%.UserInputType%.", "")
					local flag430 = Enum.KeyCode[str183]
					if not flag430 or flag430 == Enum.KeyCode.Unknown then
						return nil, nil
					end
					return str183, flag430
				end

				local func397 = select
				local value528, value529 = func396(tbl9.MenuKey)
				local menuKey = func397(1, value528, value529) or "RightControl"
				tbl9.MenuKey = menuKey

				Menu:AddLabel("Menu key"):AddKeyPicker("CB_MenuKey", {
					Default = menuKey,
					NoUI = true,
					Text = "Cokeboys menu",
					Mode = "Toggle",
					ChangedCallback = function(param228)
						local menuKey2 = select(1, func396(param228))
						if not menuKey2 then
							cokeboysLinoriaLibrary:Notify("Menu open/close must use a keyboard key. Touch users can use the reopen icon.", 4)
							return
						end
						tbl9.MenuKey = menuKey2
						pcall(func40)
					end,
				})

				cokeboysLinoriaLibrary.ToggleKeybind = "__CokeboysKeyboardHandled"

				list96[#list96 + 1] = UserInputService.InputBegan:Connect(function(input, gameProcessed)
					if gameProcessed or input.UserInputType ~= Enum.UserInputType.Keyboard then
						return
					end
					local value530, flag431 = func396(tbl9.MenuKey)

					if flag431 and input.KeyCode == flag431 then
						cokeboysLinoriaLibrary:Toggle()
					end
				end)

				pcall(func40)

				if tbl9.AntiAFK == nil then
					tbl9.AntiAFK = true
				end

				Menu:AddToggle("CB_AntiAFK", {
					Text = "Anti AFK",
					Tooltip = "Prevents Roblox's idle kick while this client is loaded.",
					Default = tbl9.AntiAFK == true,
					Callback = function(value)
						tbl9.AntiAFK = value == true
						pcall(func40)
					end,
				})

				Menu:AddLabel("Settings save automatically for this executor and are shared across Roblox accounts.", true)

				Menu:AddButton({
					Text = "Unload Cokeboys",
					Tooltip = "Stops every Cokeboys feature and removes all interfaces.",
					Func = function()
						local cokeboysFullUnload = genv.CokeboysFullUnload or genv.CokeboysUnload

						if type(cokeboysFullUnload) == "function" then
							cokeboysFullUnload()
						else
							cokeboysLinoriaLibrary:Notify("Full unload is not ready yet. Try again in a moment.", 4)
						end
					end,
				})

				local value531 = cokeboysTabs.Settings:AddLeftGroupbox("Server hop")
				func379(value531, "AutoHop", "Auto hop", "Leaves only when an enabled condition is met.")
				func381(value531, "HopIdle", "No steal for seconds", "Counts from the last successful bank; blank disables it.", "off · 90")
				func381(value531, "HopAfter", "Been here minutes", "Blank disables this condition.", "off · 20")
				func380(value531, "HopPages", "Pages to fetch", "More pages take longer.", 1, 10, " pages")
				func379(value531, "HopSkipFull", "Skip full servers", "Avoid servers with no free slot.")
				func382(value531, "HopPlayers", "Players", "Prefer emptier or fuller servers.", { "Lowest", "Highest" }, false)
				func384(value531, "HopNow", "Hop now", "Perform a single server hop.")
				func385(value531, "Hop status", tbl10.AutoHop and tbl10.AutoHop.status)
				local Community = cokeboysTabs.Settings:AddRightGroupbox("Community")

				Community:AddLabel([[Updates, support, previews and member chat

discord.gg/cokeboys]], true)

				local obj57 = Community:AddLabel("Official invite · ready to copy", true)

				Community:AddButton({
					Text = "💬  JOIN THE DISCORD",
					Tooltip = "Copies the official Cokeboys invite to your clipboard.",
					Func = function()
						local invite = discord
						local flag432 = false
						local value532 = setclipboard or toclipboard

						if type(value532) == "function" then
							flag432 = pcall(value532, invite)
						end

						pcall(function()
							obj57:SetText(flag432 and "✓ Invite copied · paste it into your browser" or "Invite: " .. invite)
							cokeboysLinoriaLibrary:Notify(flag432 and "Cokeboys invite copied!" or invite, 4)
						end)
					end,
				})

				if inner then
					for _, descendant in ipairs(obj44.Holder:GetDescendants()) do
						if descendant:IsA("TextLabel") and descendant.Parent == inner and descendant.TextXAlignment == Enum.TextXAlignment.Right then
							descendant.Visible = false
						elseif descendant:IsA("TextButton") or descendant:IsA("TextBox") then
							if not descendant:FindFirstChildOfClass("UICorner") then
								local uiCorner = Instance.new("UICorner")
								uiCorner.CornerRadius = UDim.new(0, 4)
								uiCorner.Parent = descendant
							end
						elseif descendant:IsA("Frame") then
							local absoluteSize2 = descendant.AbsoluteSize

							if (absoluteSize2.X >= 120 and absoluteSize2.Y >= 20 or absoluteSize2.X <= 18 and absoluteSize2.Y <= 18 and absoluteSize2.X >= 5 and absoluteSize2.Y >= 5) and not descendant:FindFirstChildOfClass("UICorner") then
								local uiCorner = Instance.new("UICorner")
								uiCorner.CornerRadius = UDim.new(0, absoluteSize2.X <= 18 and 3 or 5)
								uiCorner.Parent = descendant
							end
						end
					end

					local uiCorner = inner:FindFirstChildOfClass("UICorner") or Instance.new("UICorner")
					uiCorner.CornerRadius = UDim.new(0, 7)
					uiCorner.Parent = inner
				end

				local textButton = Instance.new("TextButton")
				textButton.Name = "CokeboysClose"
				textButton.AutoButtonColor = false
				textButton.BackgroundTransparency = 1
				textButton.Position = UDim2.new(1, -32, 0, 5)
				textButton.Size = UDim2.fromOffset(24, 24)
				textButton.Font = Enum.Font.BuilderSansBold
				textButton.Text = "×"
				textButton.TextColor3 = Color3.fromRGB(160, 160, 154)
				textButton.TextSize = 19
				textButton.ZIndex = 20
				textButton.Parent = inner

				textButton.Activated:Connect(function()
					cokeboysLinoriaLibrary:Toggle()
				end)

				local screenGui = Instance.new("ScreenGui")
				screenGui.Name = "CokeboysReopen"
				screenGui.ResetOnSpawn = false
				screenGui.IgnoreGuiInset = true
				screenGui.DisplayOrder = 1000
				screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				screenGui.Parent = gethui and gethui() or localPlayer:WaitForChild("PlayerGui")
				local imageButton = Instance.new("ImageButton")
				imageButton.Name = "OpenCokeboys"
				imageButton.AutoButtonColor = false
				imageButton.BackgroundTransparency = 1
				imageButton.BorderSizePixel = 0
				local currentCamera = workspace.CurrentCamera
				currentCamera = currentCamera and currentCamera.ViewportSize or Vector2.new(1920, 1080)
				local n8 = math.clamp(math.floor(math.min(currentCamera.X, currentCamera.Y) * 0.085), 44, 68)
				local udim22 = UserInputService.TouchEnabled and UDim2.fromOffset(currentCamera.X - 70, 90) or UDim2.new(0, 20, 0.33, -20)
				imageButton.Position = typeof(genv.CokeboysReopenPositionV2) == "UDim2" and genv.CokeboysReopenPositionV2 or udim22
				imageButton.Size = UDim2.fromOffset(n8, n8)
				imageButton.Image = "rbxthumb://type=Asset&id=117617748299186&w=420&h=420"
				imageButton.ScaleType = Enum.ScaleType.Fit
				imageButton.Visible = false
				imageButton.ZIndex = 2
				imageButton.Parent = screenGui
				local flag433 = false
				local flag434 = false
				local value533 = nil
				local value534 = nil
				local value535 = nil
				local connection5 = nil
				local connection6 = nil
				local GuiService = game:GetService("GuiService")
				local flag435 = false
				local enabled = true

				local function func398()
					flag433 = false
					flag434 = false
					value533 = nil
					value534 = nil
					value535 = nil

					if connection5 then
						connection5:Disconnect()
						connection5 = nil
					end

					if connection6 then
						connection6:Disconnect()
						connection6 = nil
					end
				end

				local function func399(z)local n=workspace.CurrentCamera;local V=n and n.ViewportSize or(Vector2.new(1920,1080));local n,x,H,q= imageButton .AbsoluteSize.X>0 and  imageButton .AbsoluteSize.X or  n8 , imageButton .AbsoluteSize.Y>0 and  imageButton .AbsoluteSize.Y or  n8 ,z.X.Scale*V.X+z.X.Offset,z.Y.Scale*V.Y+z.Y.Offset;H,q=math.clamp(H,4,math.max(4,V.X-n-4)),math.clamp(q,4,math.max(4,V.Y-x-4));return UDim2.fromOffset(H,q);end
				local function func400(...) end

				imageButton.InputBegan:Connect(function(input)
					if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then
						return
					end

					if GuiService.MenuIsOpen or not screenGui.Enabled or not imageButton.Visible then
						return
					end
					flag433 = true
					flag434 = false
					local vector22 = input.UserInputType == Enum.UserInputType.Touch and Vector2.new(input.Position.X, input.Position.Y) or UserInputService:GetMouseLocation()
					value533 = vector22
					value534 = input.UserInputType == Enum.UserInputType.Touch and input or nil
					local value536 = value534

					if not value534 then
						vector22 = value536
					end

					value535 = vector22 or nil

					if not connection6 then
						connection6 = RunService.RenderStepped:Connect(func400)
					end

					if connection5 then
						connection5:Disconnect()
					end

					connection5 = input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End or input.UserInputState == Enum.UserInputState.Cancel then
							local enabled2 = not flag434 and not cokeboysLinoriaLibrary.Toggled and not GuiService.MenuIsOpen and screenGui.Enabled
							genv.CokeboysReopenPositionV2 = imageButton.Position
							func398()

							if enabled2 then
								cokeboysLinoriaLibrary:Toggle()
							end
						end
					end)
				end)

				local connection7 = UserInputService.InputChanged:Connect(function(...) end)

				local function func401()
					func398()
					screenGui.Enabled = false

					if cokeboysLinoriaLibrary.ScreenGui then
						if not flag435 then
							enabled = cokeboysLinoriaLibrary.ScreenGui.Enabled ~= false
						end

						cokeboysLinoriaLibrary.ScreenGui.Enabled = false
					end

					flag435 = true
				end

				local function func402()
					if flag435 and not cokeboysLinoriaLibrary.Unloaded and cokeboysLinoriaLibrary.ScreenGui then
						cokeboysLinoriaLibrary.ScreenGui.Enabled = enabled
					end

					flag435 = false
					screenGui.Enabled = true
				end

				local connection8 = GuiService.MenuOpened:Connect(function()
					func401()
				end)

				local connection9 = GuiService.MenuClosed:Connect(function()
					func402()
				end)

				if GuiService.MenuIsOpen then
					func401()
				else
					screenGui.Enabled = true
				end

				task.defer(function()
					if imageButton.Parent then
						imageButton.Position = func399(UDim2.fromOffset(imageButton.AbsolutePosition.X, imageButton.AbsolutePosition.Y))
						genv.CokeboysReopenPositionV2 = imageButton.Position
					end
				end)

				local function func403()
					UserInputService.MouseIconEnabled = true
					imageButton.Visible = obj44.Holder.Visible ~= true
				end

				local connection10 = obj44.Holder:GetPropertyChangedSignal("Visible"):Connect(func403)
				func403()
				cokeboysLinoriaLibrary:SetWatermarkVisibility(false)

				cokeboysLinoriaLibrary:OnUnload(function()
					cokeboysLinoriaLibrary.Unloaded = true
					UserInputService.MouseIconEnabled = true

					if connection7 then
						connection7:Disconnect()
					end

					if connection5 then
						connection5:Disconnect()
					end

					if connection6 then
						connection6:Disconnect()
					end

					if connection10 then
						connection10:Disconnect()
					end

					if connection8 then
						connection8:Disconnect()
					end

					if connection9 then
						connection9:Disconnect()
					end

					if connection4 then
						connection4:Disconnect()
					end

					if connection3 then
						connection3:Disconnect()
					end

					for _, item53 in ipairs(list96) do
						pcall(function()
							item53:Disconnect()
						end)
					end

					if screenGui then
						screenGui:Destroy()
					end

					genv.CokeboysLinoriaActive = nil

					if genv.CokeboysTabs == cokeboysTabs then
						genv.CokeboysTabs = nil
					end

					if genv.CokeboysLinoriaLibrary == cokeboysLinoriaLibrary then
						genv.CokeboysLinoriaLibrary = nil
					end
				end)

				obj4.Visible = false
				TextButton.Visible = false
				obj1.Enabled = false
				obj1.Parent = nil

				task.defer(function()
					for k, value537 in pairs(tbl10) do
						if value537 and value537.kind == "toggle" and tbl9[k] == true and value537.on then
							task.spawn(function()
								local ok4, result3 = pcall(value537.on, true)

								if not ok4 then
									func82("config", "restore failed", k, tostring(result3))
								end
							end)
						end
					end
				end)
			end)

			if flag102 and flag102.sync then
				flag102.sync()
			end

			local ok, result = pcall(func138)

			if not ok then
				local str184 = tostring(result)
				func82("modules", "sync fail", str184)
			end

			task.spawn(function()
				while flag98 do
					task.wait(20)

					if flag98 then
						pcall(func138)
					end
				end
			end)

			if not func84() then
				func93()
				local value538 = select(1, func83())

				if value538 then
					pcall(function()
						value538.PlatformStand = false
					end)
				end
			end

			flag101.fps()

			if tbl9.Optimizer then
				flag101.opt(true)
			end

			value505()
			local func404 = destroy

			destroy = function()
				flag98 = false
				func97()
				pcall(func369)
				local result82 = func25()
				local cokeboysLinoriaLibrary = result82 and result82.CokeboysLinoriaLibrary

				if type(cokeboysLinoriaLibrary) == "table" and type(cokeboysLinoriaLibrary.Unload) == "function" and cokeboysLinoriaLibrary.Unloaded ~= true then
					pcall(function()
						cokeboysLinoriaLibrary:Unload()
					end)
				end

				local ok2, result2 = pcall(func143)

				if not ok2 then
					local func405 = func82
					local str185 = tostring(result2)
					func405("shutdown", "ERR", "stopSteal", str185)
				end

				local ok3, result3 = pcall(function()
					if str37 and str37.muteHazards then
						str37.muteHazards(false)
					end

					if str37 and str37.muteBelt then
						str37.muteBelt(false)
					end
				end)

				if not ok3 then
					local func406 = func82
					local str186 = tostring(result3)
					func406("shutdown", "ERR", "hazards", str186)
				end

				local ok4, result4 = pcall(function()
					if str37.bat and str37.bat.stop then
						str37.bat.stop()
					end
				end)

				if not ok4 then
					local func407 = func82
					local str187 = tostring(result4)
					func407("shutdown", "ERR", "bat", str187)
				end

				local ok5, result5 = pcall(function()
					if flag139 and flag139.stop then
						flag139.stop()
					end
				end)

				if not ok5 then
					local func408 = func82
					local str188 = tostring(result5)
					func408("shutdown", "ERR", "hop", str188)
				end

				local ok6, result6 = pcall(function()
					if flag102 and flag102.stop then
						flag102.stop()
					end
				end)

				if not ok6 then
					local func409 = func82
					local str189 = tostring(result6)
					func409("shutdown", "ERR", "plot", str189)
				end

				local ok7, result7 = pcall(function()
					func107(false)
					func96(false)
				end)

				if not ok7 then
					local func410 = func82
					local str190 = tostring(result7)
					func410("shutdown", "ERR", "engineOff", str190)
				end

				local ok8, result8 = pcall(function()
					local moduleRestores = tbl150.moduleRestores or {}

					for i = #moduleRestores, 1, -1 do
						local value539 = tbl150.moduleRestores[i]

						pcall(function()
							if value539.owner[value539.key] == value539.replacement then
								value539.owner[value539.key] = value539.original
							end
						end)
					end

					tbl150.moduleRestores = nil
					func105()
					func104(false)

					if tbl150.groups then
						func101(false)
					end

					func100()

					for _, item54 in ipairs({ "attrConn", "stConn", "hpConn" }) do
						local entry57 = tbl150[item54]
						tbl150[item54] = nil

						if entry57 then
							pcall(function()
								entry57:Disconnect()
							end)
						end
					end
				end)

				if not ok8 then
					local func411 = func82
					local str191 = tostring(result8)
					func411("shutdown", "ERR", "antiMob", str191)
				end

				local ok9, result9 = pcall(func90)

				if not ok9 then
					local func412 = func82
					local str192 = tostring(result9)
					func412("shutdown", "ERR", "conns", str192)
				end

				local ok10, result10 = pcall(flag101.clear)

				if not ok10 then
					local func413 = func82
					local str193 = tostring(result10)
					func413("shutdown", "ERR", "esp", str193)
				end

				local ok11, result11 = pcall(function()
					local parent = obj1 and obj1.Parent
					local value540 = name

					if parent and type(value540) == "string" then
						local obj58 = parent:FindFirstChild(value540)

						if obj58 then
							obj58:Destroy()
						end
					end

					local playerGui = localPlayer:FindFirstChild("PlayerGui")
					local value541 = name

					if playerGui and type(value541) == "string" then
						local obj59 = playerGui:FindFirstChild(value541)

						if obj59 then
							obj59:Destroy()
						end
					end

					if playerGui then
						local cokeboysWorldGui = playerGui:FindFirstChild("CokeboysWorldGui")

						if cokeboysWorldGui then
							cokeboysWorldGui:Destroy()
						end
					end

					if gethui then
						local ok11, result11 = pcall(gethui)

						if ok11 then
							local value542 = name

							if result11 then
								if type(value542) ~= "string" then
									return
								end
								local obj60 = result11:FindFirstChild(value542)

								if obj60 then
									obj60:Destroy()
								end
							end
						end
					end
				end)

				if not ok11 then
					local func414 = func82
					local str194 = tostring(result11)
					func414("shutdown", "ERR", "worldGui", str194)
				end

				local ok12, result12 = pcall(func93)

				if not ok12 then
					local func415 = func82
					local str195 = tostring(result12)
					func415("shutdown", "ERR", "ghost", str195)
				end

				local ok13, result13 = pcall(function()
					flag101.opt(false)
				end)

				if not ok13 then
					local func416 = func82
					local str196 = tostring(result13)
					func416("shutdown", "ERR", "opt", str196)
				end

				local ok14, result14 = pcall(function()
					func40(true)
				end)

				if not ok14 then
					local func417 = func82
					local str197 = tostring(result14)
					func417("shutdown", "ERR", "saveConfig", str197)
				end

				local genv = getgenv and getgenv() or _G
				local result83 = func26()
				result83.unload = nil
				result83.alive = false
				result83.dump = nil

				if type(genv.CokeboysUI) == "table" then
					genv.CokeboysUI[cokeboysUnloadUid] = nil
				end

				if type(genv.CokeboysDumpByUser) == "table" then
					genv.CokeboysDumpByUser[cokeboysUnloadUid] = nil
				end

				if genv.UI == ui then
					genv.UI = nil
				end

				if genv.CokeboysUnloadUid == cokeboysUnloadUid then
					genv.CokeboysUnloadUid = nil
					genv.CokeboysUnload = nil
				end

				func404()
			end
		end

		ui.Destroy = destroy

		do
			local result84 = func25()
			local result85 = func26()
			result85.unload = destroy
			result85.alive = true
			result84.CokeboysUnloadUid = cokeboysUnloadUid

			result84.CokeboysUnload = function()
				local localPlayer2 = Players.LocalPlayer
				local str198 = tostring(localPlayer2 and localPlayer2.UserId or 0)
				local cokeboysHub = result84.CokeboysHub
				local flag436 = type(cokeboysHub) == "table" and type(cokeboysHub.slots) == "table" and cokeboysHub.slots[str198]

				if type(flag436) == "table" and type(flag436.unload) == "function" then
					flag436.unload()
				end
			end
		end

		ui.CokeboysDump = function()
			local character = localPlayer.Character
			local humanoidRootPart

			if character then
				local humanoid = character:FindFirstChildOfClass("Humanoid")
				humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

				if not (not not humanoid and not not humanoidRootPart and not (humanoid.Health <= 0)) then
					humanoidRootPart = nil
				end
			end

			local tbl296 = {
				state = str37.state,
				travel = tbl9.StealTravel,
				stealSpeed = tbl9.StealSpeed,
				bypass = tbl9.BypassSpeed,
				cap = tbl9.BypassCap,
				engine = flag97,
				carrying = str37.carrying,
				trapped = flag107,
				trapEscaped = n6,
				stillFor = str37.stillFor,
				target = str37.target and str37.target.area .. " " .. str37.target.name or nil,
			}

			local pos

			if humanoidRootPart then
				pos = {}
				local n = math.floor(humanoidRootPart.Position.X)
				local n7 = math.floor(humanoidRootPart.Position.Y)
				local floor = math.floor
				local z = humanoidRootPart.Position.Z
				pos[1] = n
				pos[2] = n7

				do
					local values = table.pack(floor(z))
					table.move(values, 1, values.n, 3, pos)
				end
			else
				pos = humanoidRootPart
			end

			tbl296.pos = pos
			tbl296.wraps = tbl147 and next(tbl147) ~= nil
			tbl296.areas = tbl9.Areas
			tbl296.eggTypes = tbl9.EggTypes
			tbl296.stealMode = tbl9.StealMode
			tbl296.eggEsp = tbl9.EggESP
			tbl296.plotEsp = tbl9.PlotESP
			tbl296.night = func141()
			tbl296.nightEggLoop = func142()
			tbl296.plotJob = flag102 and flag102.job and flag102.job() or nil
			tbl296.training = flag102 and flag102.training and flag102.training() or false
			tbl296.plotStatus = flag102 and flag102.plotStatus and flag102.plotStatus() or nil

			local bait = {
				area = str37.baitArea,
				selectedArea = tbl9.InstantStealBaitArea,
				nextArea = str37.baitNextArea,
				wantedUid = str37.baitWanted and str37.baitWanted.rec and str37.baitWanted.rec.Uid,
				carriedUid = str37.carryUid,
				knockSeen = str37.baitKnockSeen == true,
				jumped = str37.baitJumped == true,
				releasePending = str37.baitReleasePending == true,
				anchored = str37.baitAnchorPart and str37.baitAnchorPart.Anchored or false,
			}

			local age = str37.state == "BaitJump"

			if age then
				local since = str37.since
				age = os.clock() - since
			end

			bait.age = age or 0
			tbl296.bait = bait
			return tbl296
		end

		do
			local result86 = func25()
			local cokeboysDump = ui.CokeboysDump
			func26().dump = cokeboysDump
			result86.CokeboysDumpByUser = type(result86.CokeboysDumpByUser) == "table" and result86.CokeboysDumpByUser or {}
			result86.CokeboysDumpByUser[cokeboysUnloadUid] = ui.CokeboysDump

			result86.CokeboysDump = function(...)
				local localPlayer2 = Players.LocalPlayer
				local str199 = tostring(localPlayer2 and localPlayer2.UserId or 0)
				local cokeboysDumpByUser = result86.CokeboysDumpByUser and result86.CokeboysDumpByUser[str199]
				if type(cokeboysDumpByUser) == "function" then
					return cokeboysDumpByUser(...)
				end
			end
		end

		func82("boot", "game logic attached · CokeboysDump() in F9")
	end

	func81()
end

-- join us: https://discord.gg/x7YbZeezpm