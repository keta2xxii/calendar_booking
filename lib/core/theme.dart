import 'package:calendar_booking_app/core/service_locator.dart';
import 'package:calendar_booking_app/extensions/number_extension.dart';
import 'package:calendar_booking_app/services/navigation_service.dart';
import 'package:calendar_booking_app/services/theme_cache_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

extension ThemeDataExtensions on ThemeData {
  static final Map<ColorScheme, ExtendColorScheme> _extend = {};

  void addExtend(ExtendColorScheme extend) {
    _extend[colorScheme] = extend;
  }

  static ExtendColorScheme? empty;

  ExtendColorScheme extend() {
    var o = _extend[colorScheme];
    if (o == null) {
      empty ??= ExtendColorScheme.empty();
      o = empty;
    }

    return o!;
  }
}

ExtendColorScheme extendTheme(BuildContext context) =>
    Theme.of(context).extend();

class ExtendColorScheme {
  const ExtendColorScheme({
    required this.levelBackground,
    required this.videoGradientEnd,
    required this.videoGradientStart,
    required this.experienceOnBackground,
    required this.inActiveBottomNavigation,
    required this.activeBottomNavigation,
  });

  final Color levelBackground;
  final Color videoGradientEnd;
  final Color videoGradientStart;
  final Color experienceOnBackground;
  final Color inActiveBottomNavigation;
  final Color activeBottomNavigation;

  factory ExtendColorScheme.empty() {
    return const ExtendColorScheme(
      levelBackground: Colors.transparent,
      videoGradientEnd: Colors.transparent,
      videoGradientStart: Colors.transparent,
      experienceOnBackground: Colors.transparent,
      inActiveBottomNavigation: Colors.transparent,
      activeBottomNavigation: Colors.transparent,
    );
  }
}

class AppTheme {
  // make this class singleton
  AppTheme._();

  // listen to this notifier to change theme
  static late ValueNotifier<ThemeMode> notifier;

  /// Init theme mode
  static Future<void> inititalTheme() async {
    final savedThemeMode = await serviceLocator<ThemeCacheService>().getTheme();
    notifier = ValueNotifier(savedThemeMode);
  }

  /// Usage: AppTheme.toggleThemeMode();
  static void toggleThemeMode() {
    if (notifier.value == ThemeMode.light) {
      notifier.value = ThemeMode.dark;
    } else {
      notifier.value = ThemeMode.light;
    }
    serviceLocator<ThemeCacheService>().saveTheme(notifier.value);
  }

  /// Set theme mode by value
  /// Usage: AppTheme.setThemeMode(ThemeMode.light);
  static void setThemeMode(ThemeMode themeMode) {
    notifier.value = themeMode;
    serviceLocator<ThemeCacheService>().saveTheme(notifier.value);
  }

  /// Get current text theme
  /// Usage: Theme.of(context).textTheme...;
  /// - primary: primary color of app for background, button, ...
  /// - onPrimary: on primary color of app for text, icon outlet, ...
  /// - primaryVariant: app bar color of app
  /// - secondary: secondary color of app for background, button, ...
  /// - onSecondary: on secondary color of app for text, icon outlet, ...
  /// - secondaryVariant: secondary variant color of app for background, button, ...
  /// - error: error color of app for background, button, ...
  /// - onError: on error color of app for text, icon outlet, ...
  /// For normal text: Text('Hello World', style: Theme.of(context).textTheme.bodySmall/ bodyMedium/ bodyLarge.copyWith(...))
  /// For app bar title: Text('Hello World', style: Theme.of(context).textTheme.titleSmall/ titleMedium/ titleLarge.copyWith(...))
  static TextTheme get textTheme =>
      Theme.of(serviceLocator<NavigationService>().context).textTheme;

  /// Get current color scheme
  /// Usage: Theme.of(context).colorScheme...;
  static ColorScheme get colorScheme =>
      Theme.of(serviceLocator<NavigationService>().context).colorScheme;

  /// Get current app bar theme
  /// Usage: Theme.of(context).appBarTheme...;
  static AppBarTheme get appBarTheme =>
      Theme.of(serviceLocator<NavigationService>().context).appBarTheme;

  /// Get current button theme
  /// Usage: Theme.of(context).buttonTheme...;
  static ButtonThemeData get buttonTheme =>
      Theme.of(serviceLocator<NavigationService>().context).buttonTheme;

  /// Get current divider theme
  /// Usage: Theme.of(context).dividerTheme...;
  static DividerThemeData get dividerTheme =>
      Theme.of(serviceLocator<NavigationService>().context).dividerTheme;

  // static const Color _iconColor = Color(0xFFFFCE1F);

  static const Color _lightInputBGColor = Color(0xFFF0EEEE);
  static const Color _darkInputBGColor = Color(0xFF9C9C9C);
  static const Color _inputHintTextColor = Colors.black12;
  static const Color _inputLabelTextColor = Colors.black45;
  static const Color _inactiveButtonColor = Color(0xFF9C9C9C);

  static const Color _lightPrimaryColor = Color(0xFFFFCE1F);
  static const Color _lightPrimaryVariantColor = Color(0xFFFFCE1F);
  static const Color _lightSecondaryColor = Color(0xFF649B92);
  static const Color _lightOnSecondary = Colors.white;
  static const Color _lightOnPrimaryColor = Colors.black;
  static const Color _lightErrorColor = Colors.red;
  static const Color _lightOnError = Colors.black;
  static const Color _lightBackground = Colors.white;
  static const Color _lightOnBackground = Colors.black87;
  static final Color _lightLevelBackground =
      const Color(0xFF707070).withOpacity(0.8);
  static const Color _lightVideoGradientEnd = Color(0xFF2d2d2d);
  static final Color _lightVideoGradientStart =
      const Color(0xFF000000).withOpacity(0);
  static const Color _lightExperienceOnBackground = Color(0xFFFBF3EB);
  static const Color _lightInactiveBottomNavColor = Color(0xFF525662);
  static const Color _lightActiveBottomNavColor = Color(0xFF000615);

  // static const Color _lightSuccessColor = Colors.green;
  // static const Color _lightOnSuccess = Colors.white;

  static const Color _darkPrimaryColor = Color(0xFFFFCE1F);
  static const Color _darkPrimaryVariantColor = Color(0xFFFFCE1F);
  static const Color _darkSecondaryColor = Color(0xFF006B61);
  static const Color _darkOnSecondary = Colors.black54;
  static const Color _darkOnPrimaryColor = Color(0xFF7D6200);
  static const Color _darkErrorColor = Colors.red;
  static const Color _darkOnError = Colors.black;
  static const Color _darkBackground = Color(0xFF121212);
  static const Color _darkOnBackground = Colors.white;
  static final Color _darkLevelBackground =
      const Color(0xFFDDDDDD).withOpacity(0.8);
  static const Color _darkVideoGradientEnd = Color(0xFFDDDDDD);
  static final Color _darkVideoGradientStart =
      const Color(0xFFE9E9E9).withOpacity(0);
  static const Color _darkExperienceOnBackground = Color(0xFF000615);
  static const Color _darkInactiveBottomNavColor = Color(0xFFE5E5E5);
  static const Color _darkActiveBottomNavColor = Color(0xFFFFFFFF);

  // static const Color _darkSuccessColor = Colors.green;
  // static const Color _darkOnSuccess = Colors.white;

  /// ThemData for light theme
  /// Usage: AppTheme.lightTheme...;
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightBackground,
    appBarTheme: AppBarTheme(
      titleTextStyle: _lightTextTheme.titleLarge!.copyWith(
        color: _lightPrimaryColor,
      ),
      color: _lightPrimaryVariantColor,
      iconTheme: const IconThemeData(color: _lightOnPrimaryColor),
      elevation: 0,
    ),
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.light(
      // primary of block button, background
      primary: _lightPrimaryColor,
      // primary text color
      onPrimary: _lightOnPrimaryColor,
      secondary: _lightSecondaryColor,
      onSecondary: _lightOnSecondary,
      error: _lightErrorColor,
      onError: _lightOnError,
      background: _lightBackground,
      onBackground: _lightOnBackground,
      brightness: Brightness.dark,
      surface: _lightPrimaryColor,
      onSurface: _inactiveButtonColor,
    ),
    iconTheme: const IconThemeData(
      color: _lightOnBackground,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: _lightSecondaryColor,
      textTheme: ButtonTextTheme.primary,
      disabledColor: _inactiveButtonColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
      ),
    ),
    textTheme: _lightTextTheme,
    dividerTheme: const DividerThemeData(
      color: Colors.black12,
    ),
    dividerColor: Colors.black12,
    indicatorColor: _lightPrimaryColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(vertical: 4.height),
      fillColor: _lightInputBGColor,
      filled: true,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        borderSide: const BorderSide(color: _lightPrimaryColor),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        borderSide: const BorderSide(color: _lightInputBGColor),
      ),
      labelStyle: _lightTextTheme.titleMedium!.copyWith(
        color: _inputLabelTextColor,
        fontWeight: FontWeight.w600,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      iconColor: _inputHintTextColor,
      prefixIconColor: _inputHintTextColor,
      prefixStyle: _lightTextTheme.bodyMedium!.copyWith(
        color: _inputHintTextColor,
        fontWeight: FontWeight.w400,
      ),
      suffixIconColor: _inputHintTextColor,
      hintStyle: _lightTextTheme.bodyMedium!.copyWith(
        color: _inputHintTextColor,
        fontWeight: FontWeight.w400,
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: _lightErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      errorStyle: _lightTextTheme.bodySmall!.copyWith(
        color: _lightErrorColor,
        fontWeight: FontWeight.w500,
      ),
      errorMaxLines: 2,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: _lightPrimaryVariantColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: _lightActiveBottomNavColor,
      unselectedItemColor: _lightInactiveBottomNavColor,
      backgroundColor: _lightPrimaryVariantColor,
    ),
    primarySwatch: MaterialColor(
      _lightOnPrimaryColor.value,
      const <int, Color>{
        50: _lightOnPrimaryColor,
        100: _lightOnPrimaryColor,
        200: _lightOnPrimaryColor,
        300: _lightOnPrimaryColor,
        400: _lightOnPrimaryColor,
        500: _lightOnPrimaryColor,
        600: _lightOnPrimaryColor,
        700: _lightOnPrimaryColor,
        800: _lightOnPrimaryColor,
        900: _lightOnPrimaryColor,
      },
    ),
    splashColor: _lightSecondaryColor,
    canvasColor: _lightBackground,
  )..addExtend(
      ExtendColorScheme(
        levelBackground: _lightLevelBackground,
        videoGradientEnd: _lightVideoGradientEnd,
        videoGradientStart: _lightVideoGradientStart,
        experienceOnBackground: _lightExperienceOnBackground,
        inActiveBottomNavigation: _lightInactiveBottomNavColor,
        activeBottomNavigation: _lightActiveBottomNavColor,
      ),
    );

  /// ThemData for dark theme
  /// Usage: AppTheme.darkTheme...;
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: _darkBackground,
    appBarTheme: AppBarTheme(
      titleTextStyle: _darkTextTheme.titleLarge,
      color: _darkPrimaryVariantColor,
      iconTheme: const IconThemeData(
        color: _darkOnBackground,
      ),
      elevation: 0,
    ),
    brightness: Brightness.light,
    colorScheme: const ColorScheme.dark(
      // primary of block button, background
      primary: _darkPrimaryColor,
      // primary text color
      secondary: _darkSecondaryColor,
      onPrimary: _darkOnPrimaryColor,
      onSecondary: _darkOnSecondary,
      error: _darkErrorColor,
      onError: _darkOnError,
      background: _darkBackground,
      onBackground: _darkOnBackground,
      brightness: Brightness.light,
      surface: _darkPrimaryColor,
      onSurface: _inactiveButtonColor,
    ),
    iconTheme: const IconThemeData(
      color: _darkOnPrimaryColor,
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: _darkSecondaryColor,
      textTheme: ButtonTextTheme.primary,
      disabledColor: _inactiveButtonColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(_darkSecondaryColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
      ),
    ),
    textTheme: _darkTextTheme,
    dividerTheme: const DividerThemeData(
      color: Colors.white60,
    ),
    dividerColor: Colors.white60,
    indicatorColor: _darkPrimaryColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(vertical: 4.height),
      fillColor: _darkInputBGColor,
      filled: true,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        borderSide: const BorderSide(color: _darkSecondaryColor),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        borderSide: const BorderSide(color: _lightInputBGColor),
      ),
      labelStyle: _darkTextTheme.titleMedium!.copyWith(
        color: _darkOnPrimaryColor,
        fontWeight: FontWeight.w400,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      iconColor: _darkOnPrimaryColor,
      prefixIconColor: _darkOnPrimaryColor,
      prefixStyle: _darkTextTheme.bodyMedium!.copyWith(
        color: _darkOnPrimaryColor,
        fontWeight: FontWeight.w400,
      ),
      suffixIconColor: _darkOnPrimaryColor,
      hintStyle: _darkTextTheme.bodyMedium!.copyWith(
        color: _darkOnPrimaryColor,
        fontWeight: FontWeight.w400,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        borderSide: const BorderSide(color: _darkErrorColor),
      ),
      errorStyle: _darkTextTheme.bodySmall!.copyWith(
        color: _darkErrorColor,
        fontWeight: FontWeight.w500,
      ),
      errorMaxLines: 2,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: _darkPrimaryVariantColor,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: _darkActiveBottomNavColor,
      unselectedItemColor: _darkInactiveBottomNavColor,
      backgroundColor: _darkPrimaryVariantColor,
    ),
    primarySwatch: MaterialColor(
      _darkOnPrimaryColor.value,
      const <int, Color>{
        50: _darkOnPrimaryColor,
        100: _darkOnPrimaryColor,
        200: _darkOnPrimaryColor,
        300: _darkOnPrimaryColor,
        400: _darkOnPrimaryColor,
        500: _darkOnPrimaryColor,
        600: _darkOnPrimaryColor,
        700: _darkOnPrimaryColor,
        800: _darkOnPrimaryColor,
        900: _darkOnPrimaryColor,
      },
    ),
    splashColor: _darkSecondaryColor,
    canvasColor: _darkBackground,
  )..addExtend(
      ExtendColorScheme(
        levelBackground: _darkLevelBackground,
        videoGradientEnd: _darkVideoGradientEnd,
        videoGradientStart: _darkVideoGradientStart,
        experienceOnBackground: _darkExperienceOnBackground,
        inActiveBottomNavigation: _darkInactiveBottomNavColor,
        activeBottomNavigation: _darkActiveBottomNavColor,
      ),
    );

  static final TextTheme _lightTextTheme = TextTheme(
    bodyLarge: _lightThemTextStyle.copyWith(fontSize: 16),
    bodyMedium: _lightThemTextStyle.copyWith(fontSize: 14),
    bodySmall: _lightThemTextStyle.copyWith(fontSize: 12),
    displayLarge: _lightThemTextStyle.copyWith(fontSize: 57),
    displayMedium: _lightThemTextStyle.copyWith(fontSize: 45),
    displaySmall: _lightThemTextStyle.copyWith(fontSize: 44),
    titleLarge: _lightThemTextStyle.copyWith(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: _lightThemTextStyle.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: _lightThemTextStyle.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
  );

  static final TextTheme _darkTextTheme = TextTheme(
    bodyLarge: _darkThemTextStyle.copyWith(fontSize: 16),
    bodyMedium: _darkThemTextStyle.copyWith(fontSize: 14),
    bodySmall: _darkThemTextStyle.copyWith(fontSize: 12),
    displayLarge: _darkThemTextStyle.copyWith(fontSize: 57),
    displayMedium: _darkThemTextStyle.copyWith(fontSize: 45),
    displaySmall: _darkThemTextStyle.copyWith(fontSize: 44),
    titleLarge: _darkThemTextStyle.copyWith(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: _darkThemTextStyle.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: _darkThemTextStyle.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
  );

  static final TextStyle _lightThemTextStyle =
      GoogleFonts.openSans().copyWith(color: _lightOnBackground);

  static final TextStyle _darkThemTextStyle =
      _lightThemTextStyle.copyWith(color: _darkOnBackground);
}
