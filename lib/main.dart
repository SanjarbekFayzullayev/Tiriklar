import 'package:flutter/material.dart';
import 'package:tiriklar/hikmatlar.dart';
import 'package:tiriklar/ulamolar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedItem = 0;

  final List<Widget> _pages = [
    Hikmatlar(
      name: Ulamolar.data[0].name,
      abut: Ulamolar.data[0].abut,
      hikmatlar: Ulamolar.data[0].hikmatlar,
    ),
    Hikmatlar(
      name: Ulamolar.data[1].name,
      abut: Ulamolar.data[1].abut,
      hikmatlar: Ulamolar.data[1].hikmatlar,
    ),
    Hikmatlar(
      name: Ulamolar.data[2].name,
      abut: Ulamolar.data[2].abut,
      hikmatlar: Ulamolar.data[2].hikmatlar,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedItem,
            onTap: (value) {
              setState(() {
                selectedItem = value;
              });
            },
            selectedItemColor: const Color(0xFFE1A67A),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  label: "Imom G'azzoliy (rahmatullohi alayh"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  label: "Imom Buxoriy (rahmatullohi alayh)"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  label: "Abu Hanifa (rahmatullohi alayh)"),
            ]),
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text("Tiriklar"),
          centerTitle: true,
        ),
        body: _pages[selectedItem],
      ),
    );
  }
}
