import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_view/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Add at least one provider here
        Provider<int>(create: (_) => 42),
      ],
      child: MaterialApp(
        title: 'Flutter WebView Integration',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false, // Disable debug banner
      ),
    );
  }
}
