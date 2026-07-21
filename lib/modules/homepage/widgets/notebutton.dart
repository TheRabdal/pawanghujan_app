import 'package:pawanghujan_app/packages/packages.dart';

class NoteButton extends StatelessWidget {
  const NoteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CatatanPage()),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(right: 20),
        child: Icon(Icons.note_add),
      ),
    );
  }
}
