import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailDeAcesso widget.
  FocusNode? emailDeAcessoFocusNode;
  TextEditingController? emailDeAcessoTextController;
  String? Function(BuildContext, String?)? emailDeAcessoTextControllerValidator;
  // State field(s) for Senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  // Stores action output result for [Backend Call - API (Login)] action in Botodeentrada widget.
  ApiCallResponse? apiResulthe4;

  @override
  void initState(BuildContext context) {
    senhaVisibility = false;
  }

  @override
  void dispose() {
    emailDeAcessoFocusNode?.dispose();
    emailDeAcessoTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();
  }
}
