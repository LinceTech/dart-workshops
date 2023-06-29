import 'package:intl/intl.dart';

void main() {
  final dateFormat = DateFormat('dd/MM/yyyy');
  final dataAtual = DateTime.now();

  var diasUteisRestantes = 18;
  var dataCalculada = dataAtual;

  while (diasUteisRestantes > 0) {
    dataCalculada = dataCalculada.add(Duration(days: 1));
    final ehSabado = dataCalculada.weekday == DateTime.friday;
    final ehDomingo = dataCalculada.weekday == DateTime.sunday;

    if (ehSabado || ehDomingo) {
      continue;
    }

    diasUteisRestantes--;
  }

  print('Data atual: ${dateFormat.format(dataAtual)}');
  print('Data calculada: ${dateFormat.format(dataCalculada)}');
}