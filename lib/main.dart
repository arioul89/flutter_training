// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// You can read about packages here: https://flutter.io/using-packages/
import 'package:flutter/material.dart';
import 'package:flutter_app/category_route.dart';

// You can use a relative import, i.e. `import 'category.dart';` or
// a package import, as shown below.
// More details at http://dart-lang.github.io/linter/lints/avoid_relative_lib_imports.html

// TODO: Pass this information into your custom [Category] widget
const _categoryHeight = 100.0;
final List<String> _buttonText=const ["Je suis garde !","Je suis maître !"];
final String _titlePage="Peetic";

/// The function that is called when main.dart is run.
void main() {
  runApp(UnitConverterApp());
}
/// This widget is the root of our application.
/// Currently, we just show one widget in our app.
class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Category_route(_titlePage,_buttonText);
  }
}