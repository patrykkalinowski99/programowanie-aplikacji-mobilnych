// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_riverpod_todo_app/config/config.dart';


// class FlutterRiverpodTodoApp extends ConsumerWidget {
//   const FlutterRiverpodTodoApp({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final route = ref.watch(routesProvider);

//     return MaterialApp.router(
//       debugShowCheckedModeBanner: false,
//       theme: AppTheme.light,
//       routerConfig: route,
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_todo_app/config/config.dart';
import 'package:flutter_riverpod_todo_app/l10n/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class FlutterRiverpodTodoApp extends ConsumerWidget {
  const FlutterRiverpodTodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.watch(routesProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      supportedLocales: L10n.all,
      locale: const Locale('en'),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routerConfig: route,
    );
  }
}


