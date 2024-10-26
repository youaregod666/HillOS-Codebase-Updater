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

local VersionCheck = ""
VersionCheck = System.HillOSVersion

local function DownloadNewerVersion_Snowyhill()
    if Filesystem.exists("/Backup") then
        Filesystem.remove("/Backup")
        Filesystem.makeDirectory("/Backup")
    else
        Filesystem.makeDirectory("/Backup")
    end
    Filesystem.copy("/.system/Libraries/", "/Backup/.system/Libraries/")
    Filesystem.remove("/.system/Libraries/")
    Filesystem.makeDirectory("/.system/Libraries")
    Filesystem.rename("/.system/Boot/EFI/EFI.lua", "/Backup/.system/EFI.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/BigLetters.lua", "/.system/Libraries/BigLetters.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/Bit32.lua", "/.system/Libraries/Bit32.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/Color.lua", "/.system/Libraries/Color.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/Component.lua", "/.system/Libraries/Component.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/Compressor.lua", "/.system/Libraries/Compressor.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/Event.lua", "/.system/Libraries/Event.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/Filesystem.lua", "/.system/Libraries/Filesystem.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/GUI.lua", "/.system/Libraries/GUI.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/Image.lua", "/.system/Libraries/Image.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/Internet.lua", "/.system/Libraries/Internet.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/JSON.lua", "/.system/Libraries/JSON.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/Keyboard.lua", "/.system/Libraries/Keyboard.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/Network.lua", "/.system/Libraries/Network.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/Number.lua", "/.system/Libraries/Number.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/Paths.lua", "/.system/Libraries/Paths.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/SHA-256.lua", "/.system/Libraries/SHA-256.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/Screen.lua", "/.system/Libraries/Screen.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/System.lua", "/.system/Libraries/System.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/Text.lua", "/.system/Libraries/Text.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/Vector.lua", "/.system/Libraries/Vector.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/MeowEngine/Main.lua", "/.system/Libraries/MeowEngine/Main.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/OpenComputersGL/Main.lua", "/.system/Libraries/OpenComputersGL/Main.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/OpenComputersGL/Materials.lua", "/.system/Libraries/OpenComputersGL/Materials.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Libraries/OpenComputersGL/Renderer.lua", "/.system/Libraries/OpenComputersGL/Renderer.lua")
    Internet.download("https://raw.githubusercontent.com/youaregod666/HillOS/SnowyHill/.system/Boot/EFI/EFI.lua", "/.system/Boot/EFI/EFI.lua")
    computer.shutdown(true)
end

local function DownloadNewerVersion_LongCopenhagen()

end

local function DownloadNewerVersion_LittleVally()

end

if VersionCheck == "1.1.8.2" then
    DownloadNewerVersion_Snowyhill()
elseif VersionCheck == "1.1.8.0" then
    DownloadNewerVersion_Snowyhill()
elseif VersionCheck == "1.2.8.6" then
    DownloadNewerVersion_LittleVally()
end



