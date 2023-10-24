# Arpeta Akademi App


It is an application that describes web coding, software development and flutter streamworks that lists the training content in Arpeta academy. 

# Features
Lists training content
When you click the register button, it redirects to the website.

# Technologies Used

- Flutter
- Dart

# Usaged
To use the ContainerWidget, you can follow the steps below:

2. Here is the code for the SplashView Page. If you want to customize it, you can review the code
```

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

```


2. Here is the code for the HomeView Page. If you want to customize it, you can review the code
```
import 'package:arpeta_akademi_web/constants/color_constants.dart';
import 'package:arpeta_akademi_web/constants/images_constants.dart';
import 'package:arpeta_akademi_web/views/widgets/container_widgets.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Arpeta Akademi'),
          backgroundColor: dblue,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
          ),
      body:  const SingleChildScrollView(
        child: Column(
          children: [
            ContainerWidget(
              image: arpeta,
              text: 'Web Kodlama',
              paragraf: 'Sizlere mobil uyumlu \nve arama tüm arama \nmotorlarıyla entegre \nçalışabilen kişiye veya \nkuruma özel web \nuygulamalar \ngeliştiriyoruz.',
              time: '20 Saat',
            ),
            ContainerWidget(
              image: yazilim,
              text: 'Yazılım Geliştirme',
              paragraf: 'Web uygulamalarımız, \nmobil cihazlarla uyumlu, \narama motorlarıyla entegre \nve müşterilerimizin \nihtiyaçlarına göre özelleştirilebilir \nşekilde tasarlanmıştır.',
              time: '72 Saat',
            ),
            ContainerWidget(
              image: flutter,
              text: 'Flutter ile Mobil Uygulama',
              paragraf: 'Hızlı ve etkileyici çoklu platform \ndestekli mobil uygulamalar \ngeliştirmek için ideal bir \nseçenektir. Kullanıcı dostu \narayüzler oluşturmak için \nhızlı ve güçlü bir çözüm sunar.',
              time: '99 Saat',
            ),
          ],
        ),
      ),
    );
  }
}


```

3. This widget shows the properties of the container. You can review the code to customize it.

```
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
                  width: MediaQuery.sizeOf(context).width / 5,
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
```


# Arpeta Academy 
<img src="https://github.com/Allahverdyy/arpeta_akademi_app/blob/main/assets/images/png/arpetass1.png" width="200" height="400" /> <img src="https://github.com/Allahverdyy/arpeta_akademi_app/blob/main/assets/images/png/arpetass2.png" width="200" height="400" /> <img src="https://github.com/Allahverdyy/arpeta_akademi_app/blob/main/assets/images/png/arpetass3.png" width="200" height="400" />

This project contains a sample application for educational purposes that shows the contents of Arpeta Academy. This application provides educational content for arpeta academy.


|Name          | Version |  
|--------------|---------|
| Flutter      | 3.13.0  |
| Dart         | 3.1.0   |


## Contributors 💻🖱️

Creators of the Flutter Super Map

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<p align="center">
<td align="center"><br/></a><br /><a href="https://github.com/allahverdyy" title="Code">Abdulsamed Tanriverdi</a></td>
</p>

