#ifndef FLUTTER_PLUGIN_FLUTTER_THEMEKIT_PLUS_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_THEMEKIT_PLUS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_themekit_plus {

class FlutterThemekitPlusPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterThemekitPlusPlugin();

  virtual ~FlutterThemekitPlusPlugin();

  // Disallow copy and assign.
  FlutterThemekitPlusPlugin(const FlutterThemekitPlusPlugin&) = delete;
  FlutterThemekitPlusPlugin& operator=(const FlutterThemekitPlusPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_themekit_plus

#endif  // FLUTTER_PLUGIN_FLUTTER_THEMEKIT_PLUS_PLUGIN_H_
