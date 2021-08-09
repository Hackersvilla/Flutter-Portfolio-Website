import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class Skills extends StatefulWidget {
  Skills({Key? key}) : super(key: key);

  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  late List<GDPData> _chartdata;

  @override
  void initState() {
    _chartdata = getchartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 900,
      height: 900,
      child: SfCircularChart(
        title: ChartTitle(
          text: "Skills",
          textStyle: TextStyle(
            color: Colors.white70,
            fontSize: 30,
            fontWeight: FontWeight.w900,
            fontFamily: GoogleFonts.quicksand().fontFamily,
          ),
        ),
        series: <CircularSeries>[
          PieSeries<GDPData, String>(
              dataSource: _chartdata,
              xValueMapper: (GDPData data, _) => data.continent,
              yValueMapper: (GDPData data, _) => data.gdp,
              dataLabelSettings: DataLabelSettings(isVisible: true))
        ],
      ),
    );
  }

  //methos to get the data
  List<GDPData> getchartData() {
    final List<GDPData> chartdata = [
      GDPData("Flutter", 90),
      GDPData("Web Devlopment", 70),
      GDPData("Android Devlopment", 60),
      GDPData("Web Designing", 50),
      GDPData("Graphic Designing", 40),
    ];
    return chartdata;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}
