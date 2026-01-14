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