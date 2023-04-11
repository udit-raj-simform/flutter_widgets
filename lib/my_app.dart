import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_widgets/utils/exports.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      // initialRoute: "/",
      // routes: {
      //   '/': (context) => const Home(),
      //   '/appbar': (context) => const AppBarPage(),
      // },
      title: "Flutter Widgets",
      onGenerateTitle: returnTitle(),
      color: Colors.lightGreenAccent,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: (DateTime.now().hour <= 12) ? ThemeMode.light : ThemeMode.dark,
      locale: const Locale("en", "IN"),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("hi", "IN"),
        Locale("en", "IN"),
        Locale("es", "PE"),
        Locale("en", "US"),
        Locale("fr", "FR"),
      ],
      debugShowCheckedModeBanner: false,
    );
  }

  returnTitle() {
    return (context) => "Flutter Basics By Udit Raj";
  }
}
