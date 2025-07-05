import 'dart:ui';

import 'package:flutter/material.dart';

class ThemeExtensions extends ThemeExtension<ThemeExtensions> {
  final TypographyConfig typography;
  final ShapeConfig shapes;
  final AnimationConfig animations;
  final PaddingConfig padding;

  ThemeExtensions({
    required this.typography,
    required this.shapes,
    required this.animations,
    required this.padding,
  });

  @override
  ThemeExtension<ThemeExtensions> copyWith({
    TypographyConfig? typography,
    ShapeConfig? shapes,
    AnimationConfig? animations,
    PaddingConfig? padding,
  }) {
    return ThemeExtensions(
      typography: typography ?? this.typography,
      shapes: shapes ?? this.shapes,
      animations: animations ?? this.animations,
      padding: padding ?? this.padding,
    );
  }

  @override
  ThemeExtension<ThemeExtensions> lerp(
    ThemeExtension<ThemeExtensions>? other,
    double t,
  ) {
    if (other is! ThemeExtensions) return this;
    return ThemeExtensions(
      typography: typography.lerp(other.typography, t),
      shapes: shapes.lerp(other.shapes, t),
      animations: animations.lerp(other.animations, t),
      padding: padding.lerp(other.padding, t),
    );
  }
}

class TypographyConfig {
  final TextStyle heading1;
  final TextStyle heading2;
  final TextStyle body;
  final TextStyle caption;
  final TextStyle button;

  TypographyConfig({
    TextStyle? heading1,
    TextStyle? heading2,
    TextStyle? body,
    TextStyle? caption,
    TextStyle? button,
  }) : heading1 =
           heading1 ??
           const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
       heading2 =
           heading2 ??
           const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
       body = body ?? const TextStyle(fontSize: 16),
       caption = caption ?? const TextStyle(fontSize: 12),
       button =
           button ?? const TextStyle(fontSize: 14, fontWeight: FontWeight.w600);

  TypographyConfig lerp(TypographyConfig other, double t) {
    return TypographyConfig(
      heading1: TextStyle.lerp(heading1, other.heading1, t)!,
      heading2: TextStyle.lerp(heading2, other.heading2, t)!,
      body: TextStyle.lerp(body, other.body, t)!,
      caption: TextStyle.lerp(caption, other.caption, t)!,
      button: TextStyle.lerp(button, other.button, t)!,
    );
  }
}

class ShapeConfig {
  final double cornerRadius;

  ShapeConfig({this.cornerRadius = 4.0});

  ShapeConfig lerp(ShapeConfig other, double t) {
    return ShapeConfig(
      cornerRadius: lerpDouble(cornerRadius, other.cornerRadius, t)!,
    );
  }
}

class AnimationConfig {
  final Curve curve;
  final Duration duration;

  AnimationConfig({
    this.curve = Curves.linear,
    this.duration = const Duration(milliseconds: 200),
  });

  AnimationConfig lerp(AnimationConfig other, double t) {
    return AnimationConfig(
      curve: t < 0.5 ? curve : other.curve,
      duration: Duration(
        milliseconds:
            (duration.inMilliseconds +
                    (other.duration.inMilliseconds - duration.inMilliseconds) *
                        t)
                .round(),
      ),
    );
  }
}

class PaddingConfig {
  final EdgeInsets buttonPadding;
  final EdgeInsets cardPadding;

  PaddingConfig({
    this.buttonPadding = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 8,
    ),
    this.cardPadding = const EdgeInsets.all(16),
  });

  PaddingConfig lerp(PaddingConfig other, double t) {
    return PaddingConfig(
      buttonPadding: EdgeInsets.lerp(buttonPadding, other.buttonPadding, t)!,
      cardPadding: EdgeInsets.lerp(cardPadding, other.cardPadding, t)!,
    );
  }
}
