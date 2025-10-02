import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:woven_by_toyota/di/DIContainer.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:woven_by_toyota/presentation/home/viewmodel/home_viewmodel.dart';
import 'package:woven_by_toyota/screens/career/views/career_page.dart';
import 'package:woven_by_toyota/screens/home/views/home_page.dart';
import 'package:woven_by_toyota/screens/setting/view/setting_page.dart';

void main() {
  // This ensures proper handling of system UI overlay
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
  ));
  // Enable edge-to-edge
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  
  setupLocator();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeViewModel>(
          create: (_) => locator<HomeViewModel>(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => locator<HomeViewModel>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Woven by Toyota',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

    int _currentIndex = 0;

  // List of pages for each bottom menu
  final List<Widget> _pages = [
    const HomePage(),
    const CareerPage(),
    const SettingPage(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // show selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: "Career",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}