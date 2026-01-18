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
            borderRadius: BorderRadius.circular(50),
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

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://openweathermap.org/img/wn/${data['weather'][0]['icon']}@2x.png',
                        height: 200,
                        width: 200,
                      ),
                      Text(
                        'Nama Tempat: ${data['name']}',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Kode Negara: ${data['sys']['country']}',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Cuaca: ${data['weather'][0]['main']}',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Suhu: ${data['main']['temp']} °C',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Kelembaban: ${data['main']['humidity']} %',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Tekanan: ${data['main']['pressure']} hPa',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Kecepatan Angin: ${data['wind']['speed']} m/s',
                        style: TextStyle(fontSize: 20),
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
    );
  }
}
