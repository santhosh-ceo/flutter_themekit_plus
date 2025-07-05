import 'package:flutter/material.dart';

import '../core/theme_extensions.dart';

enum ThemedTextStyle { heading1, heading2, body, caption, button }

class ThemedText extends StatelessWidget {
  final String text;
  final ThemedTextStyle style;
  final TextAlign? textAlign;

  const ThemedText(
    this.text, {
    Key? key,
    this.style = ThemedTextStyle.body,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extensions = theme.extension<ThemeExtensions>();

    TextStyle textStyle;
    switch (style) {
      case ThemedTextStyle.heading1:
        textStyle =
            extensions?.typography.heading1 ?? theme.textTheme.displayLarge!;
        break;
      case ThemedTextStyle.heading2:
        textStyle =
            extensions?.typography.heading2 ?? theme.textTheme.displayMedium!;
        break;
      case ThemedTextStyle.caption:
        textStyle =
            extensions?.typography.caption ?? theme.textTheme.bodySmall!;
        break;
      case ThemedTextStyle.button:
        textStyle =
            extensions?.typography.button ?? theme.textTheme.labelLarge!;
        break;
      case ThemedTextStyle.body:
      default:
        textStyle = extensions?.typography.body ?? theme.textTheme.bodyLarge!;
        break;
    }

    return Text(text, style: textStyle, textAlign: textAlign);
  }
}
