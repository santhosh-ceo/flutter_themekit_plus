#include "include/flutter_themekit_plus/flutter_themekit_plus_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_themekit_plus_plugin.h"

void FlutterThemekitPlusPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_themekit_plus::FlutterThemekitPlusPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
