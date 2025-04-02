import 'package:componentes/models/ventas.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    //Datos a graficar
    final List<Ventas> data = [
      Ventas('Lunes', 10),
      Ventas('Martes', 20),
      Ventas('Miercoles', 30),
      Ventas('Jueves', 40),
      Ventas('Viernes', 50),
      // Ventas('Sabado', 60),
      // Ventas('Domingo', 70),
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Tercer ventana')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            maxY:
                data
                    .map((venta) => venta.venta)
                    .reduce((a, b) => a > b ? a : b) +
                10,
            barTouchData: BarTouchData(enabled: true),
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 10,
                  reservedSize: 40,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    return Text(
                      value.toInt().toString(),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 96, 1, 112),
                      ),
                    );
                  },
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 40,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    if (value.toInt() < data.length) {
                      return Text(data[value.toInt()].dia);
                    }
                    return const Text('');
                  },
                ),
              ),
            ),
            borderData: FlBorderData(show:true),
            barGroups:
            data
                .asMap()
                .entries
                .map(
                  (entry) => BarChartGroupData(
                    x: entry.key,
                    barRods:[
                        BarChartRodData(toY: entry.value.venta.toDouble()),
                      ],
                    ),
                )
                .toList()
          ),
        ),
      ),
    );
  }
}
