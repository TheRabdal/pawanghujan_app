import 'package:pawanghujan_app/packages/packages.dart';

class DataHasil extends StatelessWidget {
  const DataHasil({
    super.key,
    required this.data,
  });

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          'https://openweathermap.org/img/wn/${data['weather'][0]['icon']}@2x.png',
          height: 300,
          width: 300,
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
          'Koordinat: ${data['coord']['lon']}, ${data['coord']['lat']}',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          'Kecepatan Angin: ${data['wind']['speed']} m/s',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
