import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AccountPage extends HookConsumerWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return const Scaffold(
      body: Center(
        child: Text("Account Page"),
      ),
    );
  }
}