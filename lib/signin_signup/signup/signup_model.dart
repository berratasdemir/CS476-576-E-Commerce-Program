import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignupModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailup widget.
  TextEditingController? emailupController;
  String? Function(BuildContext, String?)? emailupControllerValidator;
  // State field(s) for passwordup widget.
  TextEditingController? passwordupController;
  late bool passwordupVisibility;
  String? Function(BuildContext, String?)? passwordupControllerValidator;
  // State field(s) for confirmedpwup widget.
  TextEditingController? confirmedpwupController;
  late bool confirmedpwupVisibility;
  String? Function(BuildContext, String?)? confirmedpwupControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordupVisibility = false;
    confirmedpwupVisibility = false;
  }

  void dispose() {
    emailupController?.dispose();
    passwordupController?.dispose();
    confirmedpwupController?.dispose();
  }

  /// Additional helper methods are added here.

}
