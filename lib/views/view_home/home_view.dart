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

