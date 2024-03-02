import 'package:get/get.dart';

import '../services/preference/preference_manager.dart';
import '../services/preference/preference_manager_impl.dart';

class LocalSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PreferenceManager>(
      () => PreferenceManagerImpl(),
      tag: (PreferenceManager).toString(),
      fenix: true,
    );
  }
}
