import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalenderTestWidget extends StatefulWidget {
  const CalenderTestWidget({Key key}) : super(key: key);

  @override
  _CalenderTestWidgetState createState() => _CalenderTestWidgetState();
}

class _CalenderTestWidgetState extends State<CalenderTestWidget> {
  DateTimeRange calendarSelectedDay;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: FlutterFlowCalendar(
            color: FlutterFlowTheme.of(context).primaryColor,
            weekFormat: false,
            weekStartsMonday: false,
            onChange: (DateTimeRange newSelectedDate) {
              setState(() => calendarSelectedDay = newSelectedDate);
            },
            titleStyle: TextStyle(),
            dayOfWeekStyle: TextStyle(),
            dateStyle: TextStyle(),
            selectedDateStyle: TextStyle(),
            inactiveDateStyle: TextStyle(),
          ),
        ),
      ),
    );
  }
}
