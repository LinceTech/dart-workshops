import 'dart:math';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> main() async {
  final gerador = await TermoGenerator.instance();

  ColorPrint.black('Black: ${gerador.palavraAleatoria}');
  ColorPrint.red('Red: ${gerador.palavraAleatoria}');
  ColorPrint.green('Green: ${gerador.palavraAleatoria}');
  ColorPrint.yellow('Yellow: ${gerador.palavraAleatoria}');
  ColorPrint.blue('Blue: ${gerador.palavraAleatoria}');
  ColorPrint.magenta('Magenta: ${gerador.palavraAleatoria}');
  ColorPrint.cyan('Cyan: ${gerador.palavraAleatoria}');
  ColorPrint.white('White: ${gerador.palavraAleatoria}');
}

class ColorPrint {
  static void black(String text) => print('\x1B[30m$text\x1B[0m');

  static void red(String text) => print('\x1B[31m$text\x1B[0m');

  static void green(String text) => print('\x1B[32m$text\x1B[0m');

  static void yellow(String text) => print('\x1B[33m$text\x1B[0m');

  static void blue(String text) => print('\x1B[34m$text\x1B[0m');

  static void magenta(String text) => print('\x1B[35m$text\x1B[0m');

  static void cyan(String text) => print('\x1B[36m$text\x1B[0m');

  static void white(String text) => print('\x1B[37m$text\x1B[0m');
}

class TermoGenerator {
  TermoGenerator._();

  static TermoGenerator? _instance;
  final _termos = <String>[];
  final _random = Random();

  static Future<TermoGenerator> instance() async {
    if (_instance == null) {
      TermoGenerator._instance = TermoGenerator._();
      await _instance!._inicializar();
    }
    return _instance!;
  }

  Future<void> _inicializar() async {
    final url =
        "https://raw.githubusercontent.com/LinceTech/dart-workshops/main/dart-desafio-3/de_1/termos.json";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final jsonList = convert.jsonDecode(response.body);
        for (final termo in jsonList['termos']) {
          _termos.add(termo);
        }
      } else {
        throw Exception(
          'Erro na requisicao: [${response.statusCode}] ${response.body}',
        );
      }
    } catch (error, stack) {
      print('Error: $error\n$stack');
    }
  }

  String get palavraAleatoria {
    return _termos[_random.nextInt(_termos.length)];
  }
}
