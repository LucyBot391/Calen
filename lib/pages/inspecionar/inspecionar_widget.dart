import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'inspecionar_model.dart';
export 'inspecionar_model.dart';

class InspecionarWidget extends StatefulWidget {
  /// Ver as anotações
  const InspecionarWidget({
    super.key,
    required this.notesItem,
  });

  final String? notesItem;

  @override
  State<InspecionarWidget> createState() => _InspecionarWidgetState();
}

class _InspecionarWidgetState extends State<InspecionarWidget> {
  late InspecionarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InspecionarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xFF7AA6F3),
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pop();
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: Color(0xFF0F1113),
            size: 32.0,
          ),
        ),
        title: Align(
          alignment: AlignmentDirectional(-1.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
            child: Text(
              'Anotações salvas',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    color: Colors.white,
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      height: 32.0,
                      thickness: 1.0,
                      color: Color(0xFFDBE2E7),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 24.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    FFAppState().removeFromNotes(widget!.notesItem!);
                    safeSetState(() {});
                    context.safePop();
                  },
                  text: 'Deletar',
                  options: FFButtonOptions(
                    width: 300.0,
                    height: 60.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF4B39EF),
                    textStyle:
                        FlutterFlowTheme.of(context).headlineSmall.override(
                              fontFamily: 'Outfit',
                              color: Colors.white,
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
