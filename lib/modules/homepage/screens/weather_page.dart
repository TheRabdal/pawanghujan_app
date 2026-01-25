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
      appBar: AppBar(
        actions: [
          NoteButton()
        ],
        automaticallyImplyLeading: false,
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
        decoration: BoxDecoration(
          gradient: myColor[0]
        ),
        height: double.infinity,
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(10),
                //   child:
                Image.asset('assets/logo_pawanghujan.png'),
                // ),
                SizedBox(height: 15),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Selamat datang di Pawang Hujan!',
                        style: TextStyle(
                          fontSize: 15,
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
                            suffixIcon: IconButton(
                              onPressed: () => placeController.clear(),
                              icon: Icon(Icons.cleaning_services),
                            ),
                            hintText: 'Cari wilayah...',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SearchButton(placeController: placeController),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
