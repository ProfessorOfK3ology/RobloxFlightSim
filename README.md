# RobloxFlightSim
This is an open-source version of a very basic "flight simulator" I made using Roblox.

The setup for this system is simple. Just place `planeCloneScript` into ServerScriptService, `cameraScript2` into StarterPlayerScripts, and the plane model itself into ReplicatedStorage.

Please note that if your game has StreamingEnabled set to true, the script might not work if your player spawns too far away from the plane's starting position due to it not being loaded. In that case, just move your player's spawn closer to the plane, or vice versa.
