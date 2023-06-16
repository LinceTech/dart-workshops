void main() {
  const valor1 = 7.0;
  const valor2 = 8.0;
  const valor3 = 5.3;
  const valor4 = 9.7;
  const media = (valor1 + valor2 + valor3 + valor4) / 4;

  print(
    'A media entre [ ${valor1.toStringAsFixed(1)} , ${valor2.toStringAsFixed(1)} , ${valor3.toStringAsFixed(1)} , ${valor4.toStringAsFixed(1)} ] = ${media.toStringAsFixed(1)}',
  );
}
