import 'dart:ffi';

import 'package:ffi_kuznechik/dart_pkg_kuznechik.dart';

import '../kuznechik_bindings.dart';

void main() {
  const path = 'D:/Slermo/SlermosFiles/Voenmech/ВКР/programming/dart_pkg_kuznechik/kuznechik';
  Kuznechik(DynamicLibrary.open(path));
  var awesome = Awesome();
  print('awesome: ${awesome.isAwesome}');
}
