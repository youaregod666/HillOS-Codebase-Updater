local GUI = require("GUI")
local Text = require("Text")
local Paths = require("Paths")
local System = require("System")
local Filesystem = require("Filesystem")
local Image = require("Image")
local SHA = require("SHA-256")
local component = require("Component")
local EFI = component.eeprom
local Internet = require("Internet")

local VersionCheck
VersionCheck = System.HillOSVersion



local function DownloadNewerVersion_MoonSpace()
if Filesystem.exists("/Backup") then
        Filesystem.remove("/Backup")
        Filesystem.makeDirectory("/Backup")
    else
        Filesystem.makeDirectory("/Backup")
    end
    Filesystem.copy("/.system/Libraries/", "/Backup/.system/Libraries/")
    Filesystem.remove("/.system/Libraries/")
    Filesystem.makeDirectory("/.system/Libraries")
    Filesystem.copy("/.system/Boot/EFI/EFI.lua", "/Backup/.system/EFI.lua")
    Filesystem.remove("/.system/Boot/EFI/EFI.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/BigLetters.lua", "/.system/Libraries/BigLetters.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/Bit32.lua", "/.system/Libraries/Bit32.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/Color.lua", "/.system/Libraries/Color.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/Component.lua", "/.system/Libraries/Component.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/Compressor.lua", "/.system/Libraries/Compressor.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/Event.lua", "/.system/Libraries/Event.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/Filesystem.lua", "/.system/Libraries/Filesystem.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/GUI.lua", "/.system/Libraries/GUI.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/Image.lua", "/.system/Libraries/Image.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/Internet.lua", "/.system/Libraries/Internet.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/JSON.lua", "/.system/Libraries/JSON.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/Keyboard.lua", "/.system/Libraries/Keyboard.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/Network.lua", "/.system/Libraries/Network.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/Number.lua", "/.system/Libraries/Number.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/Paths.lua", "/.system/Libraries/Paths.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/SHA-256.lua", "/.system/Libraries/SHA-256.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/Screen.lua", "/.system/Libraries/Screen.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/System.lua", "/.system/Libraries/System.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/Text.lua", "/.system/Libraries/Text.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/Vector.lua", "/.system/Libraries/Vector.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/MeowEngine/Main.lua", "/.system/Libraries/MeowEngine/Main.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/OpenComputersGL/Main.lua", "/.system/Libraries/OpenComputersGL/Main.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/OpenComputersGL/Materials.lua", "/.system/Libraries/OpenComputersGL/Materials.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Libraries/OpenComputersGL/Renderer.lua", "/.system/Libraries/OpenComputersGL/Renderer.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS_TE/refs/heads/MoonSpace/.system/Boot/EFI/EFI.lua", "/.system/Boot/EFI/EFI.lua")
    Filesystem.remove("/.system/Updater.lua")
-- Checking if you have Lua 5.3. if you have it then reboot the system.
if computer.getArchitecture and computer.getArchitecture() == "Lua 5.2" then
	local computer = require("computer")
	computer.setArchitecture("Lua 5.3")
else
	computer.shutdown(true)
end
        
end

DownloadNewerVersion_MoonSpace()
