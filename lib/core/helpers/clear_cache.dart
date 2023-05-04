import 'dart:io';

import 'package:path_provider/path_provider.dart';

Future<void> clearCache() async {
  var appDir = (await getTemporaryDirectory()).path;
  Directory(appDir).delete(recursive: true);
}
