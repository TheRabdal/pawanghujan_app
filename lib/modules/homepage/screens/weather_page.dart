import 'package:pawanghujan_app/packages/packages.dart';

class WeatherPage extends StatefulWidget {

  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  TextEditingController placeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              
            },
            child: Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.note_add),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Pawang Hujan',
          style: TextStyle(
            fontSize: 18, 
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: myColor[0]),
        child: Container(
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              SizedBox(height: 50),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/logopawanghujan.png'),
              ),
              SizedBox(height: 20),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Selamat datang di Pawang Hujan!',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: TextField(
                        controller: placeController,
                        decoration: InputDecoration(
                          hintText: 'Cari kata kunci...',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          suffixIcon: Icon(Icons.clean_hands_sharp),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Cari', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HasilCuacaPage(place: placeController.text);
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
