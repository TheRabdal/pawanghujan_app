import 'package:pawanghujan_app/packages/packages.dart';

class HasilCuacaPage extends StatefulWidget {
  const HasilCuacaPage({super.key});

  @override
  State<HasilCuacaPage> createState() => _HasilCuacaPageState();
}

class _HasilCuacaPageState extends State<HasilCuacaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Hasil Cuaca Hari Ini!',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back, 
            color: Colors.black
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Ini adalah halaman hasil cuaca',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}