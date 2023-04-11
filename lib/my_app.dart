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
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'cursive',
        focusColor: Colors.lightGreenAccent,
        // brightness: Brightness.light,
        colorScheme: const ColorScheme.light(
          primary: Color(0xffffa585),
          secondary: Color(0xffffeda0),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 22.0),
          bodyMedium: TextStyle(fontSize: 20.0),
        ),
        buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.normal),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        fontFamily: 'cursive',
        focusColor: Colors.lightGreenAccent,
        // brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(
          primary: Color(0xffffa585),
          secondary: Color(0xffffeda0),
        ),
      ),
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
