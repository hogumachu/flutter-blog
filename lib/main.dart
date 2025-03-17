import 'package:flutter/material.dart';
import 'package:flutter_blog/bootstrap/bootstrap.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: BlogBootstrap().launch()));
}
