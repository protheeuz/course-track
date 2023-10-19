import 'package:flutter/material.dart';
import 'package:flutter_section2/alert_dialog.dart';
import 'package:flutter_section2/pages/second.dart';
import 'pages/nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isActiveSwitch = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Flutter Switch"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
                // warna aktif
                activeColor: Colors.teal,
                // ini warna pentolnya
                // thumbColor:
                //     MaterialStateColor.resolveWith((states) => Colors.yellow),

                inactiveThumbColor: Colors.grey,
                thumbColor:
                    MaterialStateColor.resolveWith((states) => Colors.yellow),

                // warna jalurnya
                // trackColor:
                //     MaterialStateColor.resolveWith((states) => Colors.blue),

                // warna jalur ketika true
                activeTrackColor: Colors.blue,

                // warna jalur ketika false
                inactiveTrackColor: Colors.orange,

                inactiveThumbImage: const AssetImage('assets/images/sad.png'),
                activeThumbImage: const AssetImage('assets/images/smile.png'),

                value: isActiveSwitch,
                onChanged: (value) {
                  setState(() {
                    isActiveSwitch = !isActiveSwitch;
                  });
                },
              ),
              const SizedBox(height: 10),
              Text(isActiveSwitch != true ? "Pegi - Pegi" : "Traveloka"),
            ],
          ),
        ),
      ),
      // theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      // initialRoute: 'halamanKetiga',
      // routes: {
      //   'halamanAwal': (context) => const KelasNavigasi(),
      //   'halamanKedua': (context) => const HomePage(),
      //   'halamanKetiga': (context) => const SecondPage(),
      // },
    );
  }
}
