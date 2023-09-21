import 'package:flutter/services.dart';
import 'package:yaml/yaml.dart';

class DeviceUtils {
  const DeviceUtils._();

  static bool get isPhone {
    return true;
    // final data =
    //     WidgetsBinding.instance.platformDispatcher.views.first.physicalSize;
    // return data.width < 1200;
  }

  static Future<String> getVersion() async {
    final data = await rootBundle.loadString('pubspec.yaml');
    final version = loadYaml(data)['version'];

    return version;
  }
}
