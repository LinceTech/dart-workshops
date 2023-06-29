void main() {
  final temperaturas = [0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0];
  converterTemperaturas(temperaturas);
}

double celciusFahrenheit(double celcius) => celcius * (9 / 5) + 32;

double celciusKelvin(double celcius) => celcius + 273.15;

void converterTemperaturas(List<double> temperaturas) {
  for (final celcius in temperaturas) {
    final fahrenheit = celciusFahrenheit(celcius);
    final kelvin = celciusKelvin(celcius);

    print(
        'Celcius: ${celcius.toStringAsFixed(2)}, '
        'fahrenheit: ${fahrenheit.toStringAsFixed(2)}, '
        'kelvin: ${kelvin.toStringAsFixed(2)}',
    );
  }
}