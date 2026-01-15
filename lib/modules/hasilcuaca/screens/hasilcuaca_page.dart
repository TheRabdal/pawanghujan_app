import 'package:pawanghujan_app/packages/packages.dart';

class HasilCuacaPage extends StatefulWidget {
  const HasilCuacaPage({super.key, required String tempat});

  @override
  State<HasilCuacaPage> createState() => _HasilCuacaPageState();
}

class _HasilCuacaPageState extends State<HasilCuacaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Hasil Cuaca Hari Ini!',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_circle_left, 
            color: Colors.black
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: myColor[0]),
        
      ),
      floatingActionButton: CustomeReset(),
    );
  }
}