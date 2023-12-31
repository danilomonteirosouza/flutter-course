import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    if(defaultTargetPlatform == TargetPlatform.android){
      return Scaffold(
        body: Container(
            color: const Color(0xff00ceff),
            child: Column(
              children: <Widget>[
                Expanded(
                    flex: 3,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Lottie.asset('lib/assets/estudar.json'),
                    )
                ),
                const Expanded(
                  flex: 1,
                  child: Align(
                      alignment: Alignment.center,
                      child: SafeArea(
                        child: Text(
                          '\u00a9Smart Student',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey
                          ),
                        ),
                      )
                  ),
                ),
              ],
            )
        ),
      );
    } else if(defaultTargetPlatform == TargetPlatform.iOS){
        return Scaffold(
          body: Container(
              color: const Color(0xff00ceff),
              child: Column(
                children: <Widget>[
                  Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Lottie.asset('lib/assets/estudar.json'),
                      )
                  ),
                  const Expanded(
                    flex: 1,
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SafeArea(
                          child: Text(
                            '\u00a9Smart Student',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey
                            ),
                          ),
                        )
                    ),
                  ),
                ],
              )
          ),
        );
    } else {
        return const Text('System not detected');
    }
  }
}