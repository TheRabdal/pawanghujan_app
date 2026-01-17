import 'package:pawanghujan_app/packages/packages.dart';
import 'package:http/http.dart' as http;

class HasilCuacaPage extends StatefulWidget {
  final String place;

  const HasilCuacaPage({super.key, required this.place});

  @override
  State<HasilCuacaPage> createState() => _HasilCuacaPageState();
}

class _HasilCuacaPageState extends State<HasilCuacaPage> {
  Future<Map<String, dynamic>> getDataFromAPI() async {
    final response = await http.get(
      Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=${widget.place}&APPID=a3a15bcc8380c218abe51e70a2cf300f&units=metric',
      ),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      return data;
    } else {
      throw Exception('Error!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Hasil Cuaca Hari Ini!',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_circle_left, color: Colors.black),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: myColor[0]),
        child: Container(
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50)
          ),
          child: Center(
            child: FutureBuilder(
              future: getDataFromAPI(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {

                  return CircularProgressIndicator();
                }
                    
                if (snapshot.hasData) {
                  final data = snapshot.data!;
                    
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Suhu: ${data['main']['feels_like']} °C', 
                      style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  );
                } else {
                  return Text('Tempat tidak diketahui!');
                }
              },
            ),
          ),
        ),
      ),
      floatingActionButton: CustomeReset(),
    );
  }
}
