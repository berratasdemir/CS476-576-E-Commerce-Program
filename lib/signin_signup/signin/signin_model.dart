import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SigninModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool? create = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddressin widget.
  final emailAddressinKey = GlobalKey();
  TextEditingController? emailAddressinController;
  String? emailAddressinSelectedOption;
  String? Function(BuildContext, String?)? emailAddressinControllerValidator;
  // State field(s) for passwordin widget.
  TextEditingController? passwordinController;
  late bool passwordinVisibility;
  String? Function(BuildContext, String?)? passwordinControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordinVisibility = false;
  }

  void dispose() {
    passwordinController?.dispose();
  }

  /// Additional helper methods are added here.

}
