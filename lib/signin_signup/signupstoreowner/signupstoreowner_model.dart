import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignupstoreownerModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddressupsowner widget.
  TextEditingController? emailAddressupsownerController;
  String? Function(BuildContext, String?)?
      emailAddressupsownerControllerValidator;
  // State field(s) for passwordupsowner widget.
  TextEditingController? passwordupsownerController;
  late bool passwordupsownerVisibility;
  String? Function(BuildContext, String?)? passwordupsownerControllerValidator;
  // State field(s) for passwordConfirmupsowner widget.
  TextEditingController? passwordConfirmupsownerController;
  late bool passwordConfirmupsownerVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmupsownerControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordupsownerVisibility = false;
    passwordConfirmupsownerVisibility = false;
  }

  void dispose() {
    emailAddressupsownerController?.dispose();
    passwordupsownerController?.dispose();
    passwordConfirmupsownerController?.dispose();
  }

  /// Additional helper methods are added here.

}
