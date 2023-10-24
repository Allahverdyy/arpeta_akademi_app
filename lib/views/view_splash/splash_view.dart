
import 'package:arpeta_akademi_web/constants/color_constants.dart';
import 'package:arpeta_akademi_web/constants/images_constants.dart';
import 'package:arpeta_akademi_web/views/view_home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}
  
class _SplashViewState extends State<SplashView> {

  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeView()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration:  const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[
              Color.fromARGB(255, 143, 202, 230),
                blue,
                lwhite
            ],
          )
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height/3,
              ),
              Image.asset(arpetalogo),
              const SizedBox(
                height: 5,
              ),
              const Text('ARPETA YAZILIM', style: TextStyle(fontSize: 27, fontFamily: 'Georgia'),)
            ],
          ),
        ),
      )
    );
  }
}
