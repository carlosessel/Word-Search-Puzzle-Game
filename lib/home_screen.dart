import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
//import 'package:provider/provider.dart';
import 'package:puzzle_game/play_mode.dart';
//import 'package:puzzle_game/colors.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SafeArea(
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/appBG.jpg',
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: const Color.fromRGBO(51, 0, 102, 0.6),
                ),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 38,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Word Search Game',
                          style: GoogleFonts.mochiyPopOne(
                            fontSize: 45,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 35),

                      const SizedBox(
                        height: 160,
                      ),

                      // Play Mode Button
                      TextButton(
                        onPressed: () {
                          //Provider.of<void>(context, listen: false);
                          Get.dialog(
                            const PlayMode(),
                          );
                          // Get.dialog(
                          //   const PlayMode(),
                          // );
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          fixedSize: MaterialStateProperty.all<Size>(
                            const Size(200, 50),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.pink),
                        ),
                        child: Text(
                          'Play Mode',
                          style: GoogleFonts.mochiyPopOne(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      //Categories button
                      TextButton(
                        onPressed: () {
                          //Get.dialog(
                          //const PlayMode(),
                          //);
                          //Get.dialog(
                          //const PlayMode(),
                          //);
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          fixedSize: MaterialStateProperty.all<Size>(
                            const Size(200, 50),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.pink),
                        ),
                        child: Text(
                          'Categories',
                          style: GoogleFonts.mochiyPopOne(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      //Scores Button
                      TextButton(
                        onPressed: () {
                          // Get.dialog(
                          // const PlayMode(),
                          //);
                          //Get.dialog(
                          //const PlayMode(),
                          //);
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          fixedSize: MaterialStateProperty.all<Size>(
                            const Size(200, 50),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.pink),
                        ),
                        child: Text(
                          'Scores',
                          style: GoogleFonts.mochiyPopOne(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // help button
                          InkWell(
                            onTap: () {
                              // Get.dialog(const HelpDialog(),
                              //);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 50,
                              width: 50,
                              child: const Center(
                                child: Icon(
                                  Icons.help_outline,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                          // settings icon
                          InkWell(
                            onTap: () {
                              //  Get.toNamed(SettingsScreen.routeName);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 50,
                              width: 50,
                              child: const Center(
                                child: Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // star icon
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              height: 50,
                              width: 50,
                              child: const Center(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
