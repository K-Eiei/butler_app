import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

const double pi = 3.1415926535897932;

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 1.0,
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 110),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0)),
            gradient: LinearGradient(
                colors: [
                  Color(0xFF2697FF),
                  Color(0xFF7CDCFF),
                ],
                stops: [
                  0.40,
                  0.90
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                transform: GradientRotation(pi / 6.395))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Gap(60),

            // Container Image Cat

            Container(
              width: MediaQuery.of(context).size.width * 1.0,
              //color: Colors.amberAccent,
              padding: const EdgeInsets.only(top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 125,
                    width: 130,
                    margin: const EdgeInsets.only(left: 25),
                    decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 4,
                            offset: Offset(4, 6), // Shadow position
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15.0),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/cat2.png"),
                        )),
                  ),
                ],
              ),
            ),

            // Container Text.

            Container(
              width: MediaQuery.of(context).size.width * 1.0,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              //color: Colors.green,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "WELCOME ${"\n"}TO GMR BUTLER",
                    style: TextStyle(
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold,
                      height: 1,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            // Container Sign In.

            Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.height * 0.38,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              //color: Colors.purpleAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      height: 1,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  GestureDetector(
                    onTap: () {
                      // ignore: avoid_print
                      return print("ahahahaha");
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.07,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              width: 3, color: const Color(0xFF2697FF)),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/icon_phone.png'),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                          ),
                          const Text(
                            "เข้าสู่ระบบด้วยหมายเลขโทรศัพท์",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // ElevatedButton(
                  //   onPressed: null,
                  //   child: Text('sad'),
                  //   style: ElevatedButton.styleFrom(
                  //     padding: EdgeInsets.all(20.0),
                  //     fixedSize: Size(300, 80),
                  //     textStyle:
                  //         TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  //     elevation: 15,
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ));
  }
}
