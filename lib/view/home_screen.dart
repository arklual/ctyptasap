import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: Color(0xFF080610)),
          child: Container(
            decoration: const BoxDecoration(color: Color(0xFF080610)),
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Image(image: AssetImage('assets/logo.png')),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
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
                    const Text('В ДАННЫЙ МОМЕНТ ПРИЛОЖЕНИЕ В РАЗРАБОТКЕ',
                        style: TextStyle(color: Colors.white))
                  ],
                ),
                Image(
                  image: const AssetImage('assets/mac.png'),
                  height: MediaQuery.of(context).size.height * 0.35,
                ),
                Image(
                  image: const AssetImage('assets/tg.png'),
                  height: MediaQuery.of(context).size.height * 0.35,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                      child: const Text('ПОЛУЧАТЬ СИГНАЛЫ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF))),
                      onPressed: () async {
                        if (await canLaunchUrl(
                            Uri.parse('https://t.me/CRYPTASAP'))) {
                          await launchUrl(Uri.parse('https://t.me/CRYPTASAP'),
                              mode: LaunchMode.externalApplication);
                        }
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFF00BA6E)),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          minimumSize:
                              MaterialStatePropertyAll(Size.fromHeight(50)))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
