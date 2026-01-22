import 'package:pawanghujan_app/packages/packages.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.cloud_queue,
                  size: 100,
                  color: Colors.white,
                ),
                SizedBox(height: 32),
                Text(
                  'PawangHujan',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Periksa cuaca di tempatmu',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.white,
        icon: Icon(Icons.arrow_forward, color: Colors.black),
        label: Text('Next'),
      ),
    );
  }
}
