import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'options_menu_model.dart';
export 'options_menu_model.dart';

class OptionsMenuWidget extends StatefulWidget {
  const OptionsMenuWidget({
    super.key,
    required this.taskRefe,
  });

  final DocumentReference? taskRefe;

  @override
  State<OptionsMenuWidget> createState() => _OptionsMenuWidgetState();
}

class _OptionsMenuWidgetState extends State<OptionsMenuWidget> {
  late OptionsMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OptionsMenuModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await widget!.taskRefe!.delete();
        Navigator.pop(context);
      },
      child: Container(
        width: double.infinity,
        height: 64.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Delete',
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: 'Inter Tight',
                    color: Color(0xFFFF0303),
                    letterSpacing: 0.0,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
