import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChangepasswordModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for currentemail widget.
  TextEditingController? currentemailController;
  String? Function(BuildContext, String?)? currentemailControllerValidator;
  // State field(s) for currentpw widget.
  TextEditingController? currentpwController;
  late bool currentpwVisibility;
  String? Function(BuildContext, String?)? currentpwControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    currentpwVisibility = false;
  }

  void dispose() {
    currentemailController?.dispose();
    currentpwController?.dispose();
  }

  /// Additional helper methods are added here.

}
