import 'package:flutter/material.dart';
import 'package:flutter_themekit_plus/src/core/theme_controller.dart';
import 'package:flutter_themekit_plus/src/core/theme_extensions.dart';

class ThemePacks {
  static Map<String, ThemeKitData> get material => {
    'material': ThemeKitData(
      light: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
          primary: Colors.blue,
          secondary: Colors.blueAccent,
          surface: Colors.white,
          background: Colors.grey[100]!,
          error: Colors.red,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
        ),
        useMaterial3: true,
        extensions: [
          ThemeExtensions(
            typography: TypographyConfig(),
            shapes: ShapeConfig(cornerRadius: 12.0),
            animations: AnimationConfig(
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 300),
            ),
            padding: PaddingConfig(),
          ),
        ],
      ),
      dark: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
          primary: Colors.blue[700]!,
          secondary: Colors.blueAccent[700]!,
          surface: Colors.grey[900]!,
          background: Colors.black,
          error: Colors.red[700]!,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.white,
        ),
        useMaterial3: true,
        extensions: [
          ThemeExtensions(
            typography: TypographyConfig(),
            shapes: ShapeConfig(cornerRadius: 12.0),
            animations: AnimationConfig(
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 300),
            ),
            padding: PaddingConfig(),
          ),
        ],
      ),
    ),
  };

  static Map<String, ThemeKitData> get glassmorphism => {
    'glassmorphism': ThemeKitData(
      light: ThemeData(
        colorScheme: ColorScheme(
          primary: Colors.blue.withOpacity(0.8),
          secondary: Colors.purple.withOpacity(0.8),
          surface: Colors.white.withOpacity(0.2),
          background: Colors.grey[200]!.withOpacity(0.9),
          error: Colors.red.withOpacity(0.8),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: Colors.grey[200]!.withOpacity(0.9),
        extensions: [
          ThemeExtensions(
            typography: TypographyConfig(),
            shapes: ShapeConfig(cornerRadius: 16.0),
            animations: AnimationConfig(
              curve: Curves.easeOut,
              duration: Duration(milliseconds: 400),
            ),
            padding: PaddingConfig(),
          ),
        ],
      ),
      dark: ThemeData(
        colorScheme: ColorScheme(
          primary: Colors.blue[800]!.withOpacity(0.8),
          secondary: Colors.purple[800]!.withOpacity(0.8),
          surface: Colors.black.withOpacity(0.3),
          background: Colors.black.withOpacity(0.9),
          error: Colors.red[800]!.withOpacity(0.8),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.white,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: Colors.black.withOpacity(0.9),
        extensions: [
          ThemeExtensions(
            typography: TypographyConfig(),
            shapes: ShapeConfig(cornerRadius: 16.0),
            animations: AnimationConfig(
              curve: Curves.easeOut,
              duration: Duration(milliseconds: 400),
            ),
            padding: PaddingConfig(),
          ),
        ],
      ),
    ),
  };

  static Map<String, ThemeKitData> get pastel => {
    'pastel': ThemeKitData(
      light: ThemeData(
        colorScheme: ColorScheme(
          primary: Color(0xFFB3E5FC),
          secondary: Color(0xFFFFCCBC),
          surface: Color(0xFFE6F0FA),
          background: Color(0xFFF5F7FA),
          error: Color(0xFFFF8A80),
          onPrimary: Colors.black,
          onSecondary: Colors.black,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
        extensions: [
          ThemeExtensions(
            typography: TypographyConfig(),
            shapes: ShapeConfig(cornerRadius: 8.0),
            animations: AnimationConfig(curve: Curves.linear),
            padding: PaddingConfig(),
          ),
        ],
      ),
      dark: ThemeData(
        colorScheme: ColorScheme(
          primary: Color(0xFF81D4FA),
          secondary: Color(0xFFFFAB91),
          surface: Color(0xFF37474F),
          background: Color(0xFF263238),
          error: Color(0xFFEF5350),
          onPrimary: Colors.black,
          onSecondary: Colors.black,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.white,
          brightness: Brightness.dark,
        ),
        extensions: [
          ThemeExtensions(
            typography: TypographyConfig(),
            shapes: ShapeConfig(cornerRadius: 8.0),
            animations: AnimationConfig(
              curve: Curves.linear,
              duration: Duration(milliseconds: 200),
            ),
            padding: PaddingConfig(),
          ),
        ],
      ),
    ),
  };

  static Map<String, ThemeKitData> get neumorphism => {
    'neumorphism': ThemeKitData(
      light: ThemeData(
        colorScheme: ColorScheme(
          primary: Color(0xFFE0E0E0),
          secondary: Color(0xFFB0BEC5),
          surface: Color(0xFFECEFF1),
          background: Color(0xFFE0E0E0),
          error: Colors.redAccent,
          onPrimary: Colors.black,
          onSecondary: Colors.black,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
        extensions: [
          ThemeExtensions(
            typography: TypographyConfig(),
            shapes: ShapeConfig(cornerRadius: 20.0),
            animations: AnimationConfig(
              curve: Curves.easeIn,
              duration: Duration(milliseconds: 300),
            ),
            padding: PaddingConfig(),
          ),
        ],
      ),
      dark: ThemeData(
        colorScheme: ColorScheme(
          primary: Color(0xFF263238),
          secondary: Color(0xFF455A64),
          surface: Color(0xFF37474F),
          background: Color(0xFF263238),
          error: Colors.redAccent,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.white,
          brightness: Brightness.dark,
        ),
        extensions: [
          ThemeExtensions(
            typography: TypographyConfig(),
            shapes: ShapeConfig(cornerRadius: 20.0),
            animations: AnimationConfig(
              curve: Curves.easeIn,
              duration: Duration(milliseconds: 300),
            ),
            padding: PaddingConfig(),
          ),
        ],
      ),
    ),
  };

  static Map<String, ThemeKitData> get cyberpunk => {
    'cyberpunk': ThemeKitData(
      light: ThemeData(
        colorScheme: ColorScheme(
          primary: Color(0xFF00FFFF),
          secondary: Color(0xFFFF00FF),
          surface: Color(0xFF1A1A1A),
          background: Color(0xFF0A0A0A),
          error: Color(0xFFFF4444),
          onPrimary: Colors.black,
          onSecondary: Colors.black,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.black,
          brightness: Brightness.light,
        ),
        extensions: [
          ThemeExtensions(
            typography: TypographyConfig(),
            shapes: ShapeConfig(cornerRadius: 4.0),
            animations: AnimationConfig(
              curve: Curves.fastOutSlowIn,
              duration: Duration(milliseconds: 500),
            ),
            padding: PaddingConfig(),
          ),
        ],
      ),
      dark: ThemeData(
        colorScheme: ColorScheme(
          primary: Color(0xFF00FFFF),
          secondary: Color(0xFFFF00FF),
          surface: Color(0xFF121212),
          background: Color(0xFF000000),
          error: Color(0xFFFF4444),
          onPrimary: Colors.black,
          onSecondary: Colors.black,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.black,
          brightness: Brightness.dark,
        ),
        extensions: [
          ThemeExtensions(
            typography: TypographyConfig(),
            shapes: ShapeConfig(cornerRadius: 4.0),
            animations: AnimationConfig(
              curve: Curves.fastOutSlowIn,
              duration: Duration(milliseconds: 500),
            ),
            padding: PaddingConfig(),
          ),
        ],
      ),
    ),
  };

  static Map<String, ThemeKitData> get dracula => {
    'dracula': ThemeKitData(
      light: ThemeData(
        colorScheme: ColorScheme(
          primary: Color(0xFFBD93F9),
          secondary: Color(0xFFFF79C6),
          surface: Color(0xFFF8F8F2),
          background: Color(0xFFECEFF1),
          error: Color(0xFFFF5555),
          onPrimary: Colors.black,
          onSecondary: Colors.black,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
        extensions: [
          ThemeExtensions(
            typography: TypographyConfig(),
            shapes: ShapeConfig(cornerRadius: 8.0),
            animations: AnimationConfig(
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 300),
            ),
            padding: PaddingConfig(),
          ),
        ],
      ),
      dark: ThemeData(
        colorScheme: ColorScheme(
          primary: Color(0xFFBD93F9),
          secondary: Color(0xFFFF79C6),
          surface: Color(0xFF282A36),
          background: Color(0xFF1E1E2E),
          error: Color(0xFFFF5555),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.white,
          brightness: Brightness.dark,
        ),
        extensions: [
          ThemeExtensions(
            typography: TypographyConfig(),
            shapes: ShapeConfig(cornerRadius: 8.0),
            animations: AnimationConfig(
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 300),
            ),
            padding: PaddingConfig(),
          ),
        ],
      ),
    ),
  };

  static Map<String, ThemeKitData> get minimal => {
    'minimal': ThemeKitData(
      light: ThemeData(
        colorScheme: ColorScheme(
          primary: Color(0xFF000000),
          secondary: Color(0xFF666666),
          surface: Color(0xFFFFFFFF),
          background: Color(0xFFF5F5F5),
          error: Color(0xFFFF0000),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.black,
          onBackground: Colors.black,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
        extensions: [
          ThemeExtensions(
            typography: TypographyConfig(),
            shapes: ShapeConfig(cornerRadius: 0.0),
            animations: AnimationConfig(
              curve: Curves.linear,
              duration: Duration(milliseconds: 200),
            ),
            padding: PaddingConfig(),
          ),
        ],
      ),
      dark: ThemeData(
        colorScheme: ColorScheme(
          primary: Color(0xFFFFFFFF),
          secondary: Color(0xFF999999),
          surface: Color(0xFF121212),
          background: Color(0xFF000000),
          error: Color(0xFFFF0000),
          onPrimary: Colors.black,
          onSecondary: Colors.black,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.white,
          brightness: Brightness.dark,
        ),
        extensions: [
          ThemeExtensions(
            typography: TypographyConfig(),
            shapes: ShapeConfig(cornerRadius: 0.0),
            animations: AnimationConfig(
              curve: Curves.linear,
              duration: Duration(milliseconds: 200),
            ),
            padding: PaddingConfig(),
          ),
        ],
      ),
    ),
  };

  static Map<String, ThemeKitData> get solarized => {
    'solarized': ThemeKitData(
      light: ThemeData(
        colorScheme: ColorScheme(
          primary: Color(0xFF268BD2),
          secondary: Color(0xFF2AA198),
          surface: Color(0xFFFDF6E3),
          background: Color(0xFFEEE8D5),
          error: Color(0xFFDC322F),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Color(0xFF657B83),
          onBackground: Color(0xFF657B83),
          onError: Colors.white,
          brightness: Brightness.light,
        ),
        extensions: [
          ThemeExtensions(
            typography: TypographyConfig(),
            shapes: ShapeConfig(cornerRadius: 6.0),
            animations: AnimationConfig(
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 250),
            ),
            padding: PaddingConfig(),
          ),
        ],
      ),
      dark: ThemeData(
        colorScheme: ColorScheme(
          primary: Color(0xFF268BD2),
          secondary: Color(0xFF2AA198),
          surface: Color(0xFF002B36),
          background: Color(0xFF073642),
          error: Color(0xFFDC322F),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Color(0xFF93A1A1),
          onBackground: Color(0xFF93A1A1),
          onError: Colors.white,
          brightness: Brightness.dark,
        ),
        extensions: [
          ThemeExtensions(
            typography: TypographyConfig(),
            shapes: ShapeConfig(cornerRadius: 6.0),
            animations: AnimationConfig(
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: 250),
            ),
            padding: PaddingConfig(),
          ),
        ],
      ),
    ),
  };

  static Map<String, ThemeKitData> get all => {
    ...material,
    ...glassmorphism,
    ...pastel,
    ...neumorphism,
    ...cyberpunk,
    ...dracula,
    ...minimal,
    ...solarized,
  };
}
