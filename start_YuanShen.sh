#!/bin/bash

# mangohud env STEAM_COMPAT_CLIENT_INSTALL_PATH=/home/snemc/.local/share/Steam STEAM_COMPAT_DATA_PATH=/home/snemc/.local/share/Steam/steamapps/compatdata/2515517677 '/home/snemc/.local/share/Steam/steamapps/common/Proton - Experimental/proton' run '/home/snemc/windows_d/Program Files/Genshin Impact/Genshin Impact Game/YuanShen.exe'


mangohud env  GST_PLUGIN_PATH="" LD_LIBRARY_PATH="/home/snemc/.local/share/anime-game-launcher/runners/wine-9.5-staging-tkg-amd64/lib:/home/snemc/.local/share/anime-game-launcher/runners/wine-9.5-staging-tkg-amd64/lib/wine/x86_64-unix:/home/snemc/.local/share/anime-game-launcher/runners/wine-9.5-staging-tkg-amd64/lib/wine/i386-unix" WINEARCH="win64" WINEFSYNC="1" WINEPREFIX="/home/snemc/.local/share/anime-game-launcher/prefix" WINE_FULLSCREEN_FSR="1" WINE_FULLSCREEN_FSR_MODE="balanced" WINE_FULLSCREEN_FSR_STRENGTH="2" bash -c "'/home/snemc/.local/share/anime-game-launcher/runners/wine-9.5-staging-tkg-amd64/bin/wine64'  '/home/snemc/windows_d/Program Files/Genshin Impact/Genshin Impact Game/YuanShen.exe'  -window-mode exclusive "
