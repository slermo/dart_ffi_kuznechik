import 'package:ffi_kuznechik/ffi_kuznechik.dart';
import 'package:ffi_kuznechik/ffi_kuznechik_bindings_generated.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:ffi_kuznechik/ffi_kuznechik.dart' as ffi_kuznechik;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    kuzInit();

    // sumResult = ffi_kuznechik.sum(1, 2);
    // sumAsyncResult = ffi_kuznechik.sumAsync(3, 4);
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 25);
    const spacerSmall = SizedBox(height: 10);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Native Packages'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: const Column(
              children: [
                spacerSmall,
                Text(
                  'sum(1, 2)',
                  style: textStyle,
                  textAlign: TextAlign.center,
                ),
                spacerSmall,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
