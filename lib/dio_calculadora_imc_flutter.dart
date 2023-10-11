import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/access_page.dart';

class DioCalculadoraIMCFlutter extends StatefulWidget {
  const DioCalculadoraIMCFlutter({super.key});

  @override
  State<DioCalculadoraIMCFlutter> createState() =>
      _DioCalculadoraIMCFlutterState();
}

class _DioCalculadoraIMCFlutterState extends State<DioCalculadoraIMCFlutter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.arvoTextTheme(),
        colorScheme: const ColorScheme(
          primary: Color(0xFF6B1DC3),
          outlineVariant: Color(0xFF191B4D),
          secondary: Color(0xFF66ED6C),
          surfaceVariant: Color(0xFFFDFDFC),
          surface: Color(0xFF8C6147),
          background: Color(0xFF1B1C35),
          error: Colors.redAccent,
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          onSurface: Colors.white,
          onBackground: Colors.white,
          onError: Colors.white,
          brightness: Brightness.light,
        ),
      ),
      home: const AccessPage(),
    );
  }
}



/*
  MaterialColor customMaterialColor(Color color) {
    List<int> strengths = <int>[
      50,
      100,
      200,
      300,
      400,
      500,
      600,
      700,
      800,
      900
    ];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int strength in strengths) {
      final double opacity = (strength / 900);
      swatch[strength] = Color.fromRGBO(r, g, b, opacity);
    }

    return MaterialColor(color.value, swatch);
  }
}


#6B1DC3 roxo
#191B4D azul escuro
#66ED6C verde
#FDFDFC branco
#8C6147 marrom
#1B1C35 preto
*/