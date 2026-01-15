import 'package:pawanghujan_app/packages/packages.dart';

class CustomeReset extends StatelessWidget {
  const CustomeReset({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      onPressed: () {},
      backgroundColor: Colors.blue,
      child: Icon(
        Icons.refresh, 
        color: Colors.white,
      ),
    );
  }
}
