import 'package:arpeta_akademi_web/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContainerWidget extends StatelessWidget {
  final String image;
  final String text;
  final String paragraf;
  final String time;
  const ContainerWidget(
      {super.key,
      required this.image,
      this.text = '',
      this.paragraf = '',
      this.time = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: MediaQuery.of(context).size.height * .33,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(colors: <Color>[
              blue,
              lwhite,
            ])),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  image,
                  width: MediaQuery.sizeOf(context).width / 4,
                ),
                Text(
                  paragraf,
                  style: const TextStyle(fontSize: 17),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.html),
                const Icon(Icons.css),
                const Icon(Icons.javascript),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.sizeOf(context).width / 2),
                  child: const Icon(Icons.timelapse),
                ),
                Text(
                  time,
                  style: const TextStyle(fontSize: 12),
                )
              ],
            ),
            InkWell(
              onTap: () {
                launch('http://arpeta.com/');
              },
              child: Container(
                color: red,
                width: 100,
                height: 30,
                child: const Center(child: Text('Kayıt Ol')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
