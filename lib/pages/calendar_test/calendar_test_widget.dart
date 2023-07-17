import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calendar_test_model.dart';
export 'calendar_test_model.dart';

class CalendarTestWidget extends StatefulWidget {
  const CalendarTestWidget({Key? key}) : super(key: key);

  @override
  _CalendarTestWidgetState createState() => _CalendarTestWidgetState();
}

class _CalendarTestWidgetState extends State<CalendarTestWidget> {
  late CalendarTestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarTestModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Calendar',
            style: FlutterFlowTheme.of(context).headlineMedium,
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 24.0, 0.0),
              child: badges.Badge(
                badgeContent: Text(
                  '1',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                      ),
                ),
                showBadge: true,
                shape: badges.BadgeShape.circle,
                badgeColor: FlutterFlowTheme.of(context).primary,
                elevation: 4.0,
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                position: badges.BadgePosition.topEnd(),
                animationType: badges.BadgeAnimationType.scale,
                toAnimate: true,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                  child: Icon(
                    Icons.chat_bubble_outline_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                ),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FlutterFlowCalendar(
              color: FlutterFlowTheme.of(context).primary,
              iconColor: FlutterFlowTheme.of(context).secondaryText,
              weekFormat: false,
              weekStartsMonday: false,
              onChange: (DateTimeRange? newSelectedDate) {
                setState(() => _model.calendarSelectedDay = newSelectedDate);
              },
              titleStyle: FlutterFlowTheme.of(context).titleLarge,
              dayOfWeekStyle: FlutterFlowTheme.of(context).labelMedium,
              dateStyle: FlutterFlowTheme.of(context).bodyMedium,
              selectedDateStyle: FlutterFlowTheme.of(context).titleSmall,
              inactiveDateStyle: FlutterFlowTheme.of(context).labelMedium,
            ),
            Container(
              width: double.infinity,
              height: 400.0,
              child: custom_widgets.MyCalendarWidget(
                width: double.infinity,
                height: 400.0,
              ),
            ),
            Text(
              valueOrDefault<String>(
                FFAppState().calenderSelected?.toString(),
                '123',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
