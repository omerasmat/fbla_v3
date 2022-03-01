import '../flutter_flow/flutter_flow_pdf_viewer.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExtracurricularWidget extends StatefulWidget {
  const ExtracurricularWidget({Key key}) : super(key: key);

  @override
  _ExtracurricularWidgetState createState() => _ExtracurricularWidgetState();
}

class _ExtracurricularWidgetState extends State<ExtracurricularWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: FlutterFlowPdfViewer(
            assetPath: 'assets/pdfs/extracurricular.pdf',
            height: double.infinity,
            horizontalScroll: false,
          ),
        ),
      ),
    );
  }
}
