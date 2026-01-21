import 'package:pawanghujan_app/packages/packages.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
    required this.placeController,
  });

  final TextEditingController placeController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        'Cari', 
        style: TextStyle(
        color: Colors.white
        ),
      ),
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
    );
  }
}


