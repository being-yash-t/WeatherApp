import 'package:app/src/config/color_const.dart';
import 'package:app/src/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeConfig {
  static ThemeData createTheme({
    required Brightness brightness,
    required Color background,
    required Color primaryText,
    required Color secondaryText,
    required Color accentColor,
    required divider,
    required buttonBackground,
    required buttonText,
    required cardBackground,
    required disabled,
    required error,
  }) {
    final baseTextTheme = brightness == Brightness.dark
        ? Typography.blackMountainView
        : Typography.whiteMountainView;

    return ThemeData(
      brightness: brightness,
      scaffoldBackgroundColor: buttonBackground,
      canvasColor: background,
      androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
      cardColor: background,
      dividerColor: divider,
      dividerTheme: DividerThemeData(
        color: divider,
        space: 1,
        thickness: 1,
      ),
      cardTheme: CardTheme(
        color: cardBackground,
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAliasWithSaveLayer,
      ),
      backgroundColor: background,
      primaryColor: accentColor,
      toggleableActiveColor: accentColor,
      appBarTheme: AppBarTheme(
        color: cardBackground,
        titleTextStyle: baseTextTheme.headline6?.copyWith(
          color: secondaryText
        ),
        iconTheme: IconThemeData(
          color: secondaryText,
        ),
      ),
      iconTheme: IconThemeData(
        color: secondaryText,
        size: 16.0,
      ),
      errorColor: error,
      buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.primary,
        colorScheme: ColorScheme(
          brightness: brightness,
          primary: accentColor,
          primaryVariant: accentColor,
          secondary: accentColor,
          secondaryVariant: accentColor,
          surface: background,
          background: background,
          error: error,
          onPrimary: buttonText,
          onSecondary: buttonText,
          onSurface: buttonText,
          onBackground: buttonText,
          onError: buttonText,
        ),
        padding: const EdgeInsets.all(16.0),
      ),
      cupertinoOverrideTheme: CupertinoThemeData(
        brightness: brightness,
        primaryColor: accentColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        errorStyle: TextStyle(color: error),
        labelStyle: TextStyle(
          fontFamily: '',
          fontWeight: FontWeight.w600,
          fontSize: 16.0,
          color: primaryText.withOpacity(0.5),
        ),
        hintStyle: TextStyle(
          color: secondaryText,
          fontSize: 13.0,
          fontWeight: FontWeight.w300,
        ),
      ),
      fontFamily: '',
      textTheme: TextTheme(
        headline1: baseTextTheme.headline1?.copyWith(
          color: primaryText,
          fontSize: 34.0,
          fontWeight: FontWeight.bold,
        ),
        headline2: baseTextTheme.headline2?.copyWith(
          color: primaryText,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        headline3: baseTextTheme.headline3?.copyWith(
          color: secondaryText,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        headline4: baseTextTheme.headline4?.copyWith(
          color: primaryText,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        headline5: baseTextTheme.headline5?.copyWith(
          color: primaryText,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        headline6: baseTextTheme.headline6?.copyWith(
          color: primaryText,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        bodyText1: baseTextTheme.bodyText1?.copyWith(
          color: secondaryText,
          fontSize: 15,
        ),
        bodyText2: baseTextTheme.bodyText2?.copyWith(
          color: primaryText,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        button: baseTextTheme.button?.copyWith(
          color: primaryText,
          fontSize: 12.0,
          fontWeight: FontWeight.w700,
        ),
        caption: baseTextTheme.caption?.copyWith(
          color: primaryText,
          fontSize: 11.0,
          fontWeight: FontWeight.w300,
        ),
        overline: baseTextTheme.overline?.copyWith(
          color: secondaryText,
          fontSize: 11.0,
          fontWeight: FontWeight.w500,
        ),
        subtitle1: baseTextTheme.subtitle1?.copyWith(
          color: primaryText,
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
        ),
        subtitle2: baseTextTheme.subtitle2?.copyWith(
          color: secondaryText,
          fontSize: 11.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  static ThemeData get lightTheme => createTheme(
        brightness: Brightness.light,
        background: ColorConstants.lightScaffoldBackgroundColor,
        cardBackground: ColorConstants.secondaryAppColor,
        primaryText: ColorConstants.textColor,
        secondaryText: ColorConstants.subTextColor,
        accentColor: ColorConstants.secondaryAppColor,
        divider: ColorConstants.secondaryAppColor,
        buttonBackground: Colors.black38,
        buttonText: ColorConstants.secondaryAppColor,
        disabled: ColorConstants.secondaryAppColor,
        error: Colors.red,
      );

  static ThemeData get darkTheme => createTheme(
        brightness: Brightness.dark,
        background: ColorConstants.darkScaffoldBackgroundColor,
        cardBackground: ColorConstants.secondaryDarkAppColor,
        primaryText: ColorConstants.darkTextColor,
        secondaryText: ColorConstants.dartSubtextColor,
        accentColor: ColorConstants.secondaryDarkAppColor,
        divider: Colors.black45,
        buttonBackground: Colors.white,
        buttonText: ColorConstants.secondaryDarkAppColor,
        disabled: ColorConstants.secondaryDarkAppColor,
        error: Colors.red,
      );

  static ThemeData myLightTheme = ThemeData(
    brightness: Brightness.dark,
    androidOverscrollIndicator: AndroidOverscrollIndicator.stretch,
    scaffoldBackgroundColor: ColorConstants.lightScaffoldBackgroundColor,
    textTheme: TextTheme(
        headline1:
            GoogleFonts.mukta(fontSize: 32, color: ColorConstants.textColor),
        headline3:
            GoogleFonts.mukta(fontSize: 22, color: ColorConstants.textColor),
        bodyText1:
            GoogleFonts.mukta(fontSize: 16, color: ColorConstants.textColor),
        bodyText2:
            GoogleFonts.mukta(fontSize: 14, color: ColorConstants.textColor)),
    iconTheme: IconThemeData(color: ColorConstants.iconColor),
  );
}
