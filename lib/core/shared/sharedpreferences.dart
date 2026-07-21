import 'package:pawanghujan_app/packages/packages.dart';

class SharedPref {
  static Future<void> simpanCatatan(List<Map<String, String>> catatan) async {
    final prefs = await SharedPreferences.getInstance();
    String catatanString = json.encode(catatan);
    await prefs.setString('catatan', catatanString);
  }

  static Future<List<Map<String, String>>> muatCatatan() async {
    final prefs = await SharedPreferences.getInstance();
    final String? catatanString = prefs.getString('catatan');
    if (catatanString != null) {
      return List<Map<String, String>>.from(
        json.decode(catatanString).map((x) => Map<String, String>.from(x)),
      );
    }
    return [];
  }
}
