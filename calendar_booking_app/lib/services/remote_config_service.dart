import 'dart:developer';

import 'package:firebase_remote_config/firebase_remote_config.dart';

abstract class RemoteConfigService {
  Future<void> initialize();
}

class RemoteConfigServiceImpl extends RemoteConfigService {
  FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;

  @override
  Future<void> initialize() async {
    try {
      await remoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 10),
          minimumFetchInterval: const Duration(seconds: 10),
        ),
      );
      RemoteConfigValue(null, ValueSource.valueRemote);
      await remoteConfig.fetchAndActivate();
    } catch (e) {
      log(e.toString());
    }
  }
}
