-- Tạo ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Tạo TextBox
local textBox = Instance.new("TextBox")
textBox.Parent = screenGui
textBox.Size = UDim2.new(0, 446, 0, 50)
textBox.Position = UDim2.new(0.360450566, 0, 0.256281406, 0) -- Đã sửa cú pháp
textBox.TextColor3 = Color3.fromRGB(255, 255, 0) -- Màu vàng
textBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- Nền đen
textBox.BorderSizePixel = 0
textBox.Font = Enum.Font.SourceSansBold
textBox.TextSize = 20
textBox.PlaceholderText = "Enter key here"

-- Tạo TextLabel
local textLabel = Instance.new("TextLabel")
textLabel.Parent = screenGui
textLabel.Size = UDim2.new(0, 460, 0, 86) -- Kích thước
textLabel.Position = UDim2.new(0.418648303, -100, 0.179648235, -25) -- Vị trí trung tâm
textLabel.TextColor3 = Color3.fromRGB(255, 255, 0) -- Màu vàng cho văn bản
textLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Nền đen
textLabel.BorderSizePixel = 0
textLabel.Font = Enum.Font.SourceSansBold
textLabel.TextSize = 20

-- Lấy tên người chơi và đặt vào TextLabel
local player = game.Players.LocalPlayer
textLabel.Text = "Player: " .. player.Name .. "\nChào mừng bạn đến với Banana Hub. Nhập key để sử dụng."

-- Hàm keybnn để kiểm tra và chạy script
local function keybnn(key)
	if key ~= "" then -- Chỉ chạy khi có key
		repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
		getgenv().Key = key
		getgenv().NewUI = true
		loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaHub.lua"))()
	end
end

-- Sự kiện khi người chơi nhập và nhấn Enter
textBox.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local inputKey = textBox.Text
		keybnn(inputKey)
		textBox.Text = "" -- Xóa ô nhập sau khi xử lý
	end
end)