import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddProductToStoreModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nameTF widget.
  TextEditingController? nameTFController;
  String? Function(BuildContext, String?)? nameTFControllerValidator;
  // State field(s) for descriptionTF widget.
  TextEditingController? descriptionTFController;
  String? Function(BuildContext, String?)? descriptionTFControllerValidator;
  // State field(s) for spesificationsTF widget.
  TextEditingController? spesificationsTFController;
  String? Function(BuildContext, String?)? spesificationsTFControllerValidator;
  // State field(s) for priceTF widget.
  TextEditingController? priceTFController;
  String? Function(BuildContext, String?)? priceTFControllerValidator;
  // State field(s) for quantityTF widget.
  TextEditingController? quantityTFController;
  String? Function(BuildContext, String?)? quantityTFControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nameTFController?.dispose();
    descriptionTFController?.dispose();
    spesificationsTFController?.dispose();
    priceTFController?.dispose();
    quantityTFController?.dispose();
  }

  /// Additional helper methods are added here.

}
