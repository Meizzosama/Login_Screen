import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rotary_passcode/screens/home_screen.dart';

import 'package:google_fonts/google_fonts.dart';
import 'passcode_input_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const _App());
}
class _App extends StatelessWidget {
  const _App();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
        textTheme: GoogleFonts.kanitTextTheme(),
      ),
      home: Builder(builder: (context) {
        return PasscodeInputView(
          expectedCode: '1234',
          onSuccess: () {
            Navigator.push(context,
              MaterialPageRoute(
                builder: (ctx) => const HomeScreen(),
              ),
            );
          },
          onError: () {},
        );
      } ),
    );
  }
}
