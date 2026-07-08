class IdealWeightService {
  static String idealWeightCalculator(double heightMeter) {
    final minWeight = 18.5 * (heightMeter * heightMeter);
    final maxWeight = 24.9 * (heightMeter * heightMeter);

    return "${minWeight.toStringAsFixed(1)} kg - ${maxWeight.toStringAsFixed(1)} kg";
  }
}
