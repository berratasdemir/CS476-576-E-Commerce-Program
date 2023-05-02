import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddadressModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for cityTF widget.
  TextEditingController? cityTFController;
  String? Function(BuildContext, String?)? cityTFControllerValidator;
  // State field(s) for districtTF widget.
  TextEditingController? districtTFController;
  String? Function(BuildContext, String?)? districtTFControllerValidator;
  // State field(s) for fulladdressTF widget.
  TextEditingController? fulladdressTFController;
  String? Function(BuildContext, String?)? fulladdressTFControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    cityTFController?.dispose();
    districtTFController?.dispose();
    fulladdressTFController?.dispose();
  }

  /// Additional helper methods are added here.

}
