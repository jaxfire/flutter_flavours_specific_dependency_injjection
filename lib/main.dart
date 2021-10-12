import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/di/my_providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        theme: ThemeData.light(),
        home: Scaffold(
          body: Center(
            child: Consumer(
              builder: (context, watch, child) {
                final theCubit = watch(cubitProvider);
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      theCubit.doCubitStuff(),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
