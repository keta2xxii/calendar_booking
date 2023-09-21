import 'package:calendar_booking_app/core/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeSwitch extends StatefulWidget {
  const ThemeSwitch({super.key});

  @override
  State<ThemeSwitch> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<ThemeSwitch> {
  bool dark = true;

  @override
  void initState() {
    // TODO: implement initState
    final currentTheme = AppTheme.notifier.value;
    if (currentTheme == ThemeMode.light) {
      dark = false;
    }
    super.initState();
  }

  void _toggleSwitch(bool value) {
    // This is called when the user toggles the switch.
    setState(() {
      dark = value;
    });
    AppTheme.setThemeMode(value ? ThemeMode.dark : ThemeMode.light);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      // This bool value toggles the switch.
      activeColor: Theme.of(context).colorScheme.primary,
      trackColor: Colors.grey,
      applyTheme: false,
      value: dark,
      onChanged: _toggleSwitch,
    );
  }
}
