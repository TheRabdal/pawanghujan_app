import 'package:pawanghujan_app/packages/packages.dart';

class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_circle_left, 
        color: Colors.black
      ),
    );
  }
}

