import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF080610)
          ),
          child: Container(
            decoration: BoxDecoration(
            color: const Color(0xFF080610)
          ),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image(image: AssetImage('assets/logo.png')),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Официальное приложение',
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SvgPicture.asset(
                        'assets/settings.svg',
                        height: 40,
                      ),
                    ),
                    Text('В ДАННЫЙ МОМЕНТ ПРИЛОЖЕНИЕ В РАЗРАБОТКЕ',
                        style: TextStyle(color: Colors.white))
                  ],
                ),
                Image(image: AssetImage('assets/mac.png'), height: MediaQuery.of(context).size.height*0.35,),
                Image(image: AssetImage('assets/tg.png'), height: MediaQuery.of(context).size.height*0.35,),
               
                
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(child: Text('ПОЛУЧАТЬ СИГНАЛЫ', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFFFFFFF))), onPressed: () async {
                    if (await canLaunchUrl(Uri.parse('https://t.me/CRYPTASAP'))) {
                      await launchUrl(Uri.parse('https://t.me/CRYPTASAP'), 
                      mode: LaunchMode.externalApplication);
                    }
                  }, style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xFF00BA6E)), foregroundColor: MaterialStatePropertyAll(Colors.black), minimumSize: MaterialStatePropertyAll(Size.fromHeight(50)))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
