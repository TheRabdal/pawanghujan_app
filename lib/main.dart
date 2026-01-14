import 'package:pawanghujan_app/packages/packages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherPage(),
    );
  }
}
































/*
tugas : 
- buat aplikasi baru apapun
- intinya ada UInya ada onTap pakai setstate atau apapun itu 
- bisa menjelaskan semuanya
- coba cari yang melibatkan stackoverflow
*/

/*References:
gradient background : https://stackoverflow.com/questions/79208959/creating-a-split-background-in-flutter/79209629#79209629
floating action button : https://www.youtube.com/watch?v=XxbTFkmQ1wk

// curved bottom navbar : https://pub.dev/packages/curved_labeled_navigation_bar
//   - https://www.youtube.com/watch?v=2TGgFVd0b-w
*/