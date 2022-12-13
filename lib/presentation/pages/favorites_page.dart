import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavioritesPage extends HookConsumerWidget {
  const FavioritesPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return const Scaffold(
      body: Center(
        child: Text("Faviorites Page"),
      ),
    );
  }
}
