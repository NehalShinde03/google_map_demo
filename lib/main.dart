import 'package:flutter/material.dart';
import 'package:goole_map_demo/ui/home/home_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: HomeUi.routeName,
      routes: routes,
    );
  }

  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
    HomeUi.routeName:HomeUi.builder
  };

}
