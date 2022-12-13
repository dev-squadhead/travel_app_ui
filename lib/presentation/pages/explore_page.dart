import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ExplorePage extends HookConsumerWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return const Scaffold(
      body: Center(
        child: Text("Explore Page"),
      ),
    );
  }
}