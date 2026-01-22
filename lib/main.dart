import 'package:pawanghujan_app/packages/packages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}

/*References: 
main API : https://www.youtube.com/watch?v=nxeN4dTtifE&t=778s
main Note : https://www.youtube.com/watch?v=K4lpubQ55Q0
gradient background : https://stackoverflow.com/questions/79208959/creating-a-split-background-in-flutter/79209629#79209629
wrapping scaffold with container for gradient background : https://stackoverflow.com/questions/53408917/wrapping-scaffold-with-container-for-gradient-background-how-to-set-gradient-to
gesture detector : https://nextgen.co.id/gestures-di-flutter/
shared preferences : https://www.youtube.com/watch?v=j7J9Kq0sgQI







sementara:
curved bottom navbar : https://pub.dev/packages/curved_labeled_navigation_bar
  - https://www.youtube.com/watch?v=2TGgFVd0b-w
bottom navigation bar liquid glass : https://www.youtube.com/watch?v=Lz5mPDbFiD4
blur navigatin bar : https://www.youtube.com/watch?v=sESnF6ITxgk






tugas : 
- buat aplikasi baru apapun
- intinya ada UInya ada onTap pakai setstate atau apapun itu 
- bisa menjelaskan semuanya
- coba cari yang melibatkan stackoverflow

note : buat fitur note atau catatan dengan shared preferences
*/
