import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'endereco_widget.dart' show EnderecoWidget;
import 'package:flutter/material.dart';

class EnderecoModel extends FlutterFlowModel<EnderecoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CEP widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepTextController;
  String? Function(BuildContext, String?)? cepTextControllerValidator;
  // Stores action output result for [Backend Call - API (BuscaCEP)] action in CEP widget.
  ApiCallResponse? apiResulti5fCopy;
  // State field(s) for Rua widget.
  FocusNode? ruaFocusNode;
  TextEditingController? ruaTextController;
  String? Function(BuildContext, String?)? ruaTextControllerValidator;
  // State field(s) for Numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroTextController;
  String? Function(BuildContext, String?)? numeroTextControllerValidator;
  // State field(s) for Complemeto widget.
  FocusNode? complemetoFocusNode;
  TextEditingController? complemetoTextController;
  String? Function(BuildContext, String?)? complemetoTextControllerValidator;
  // State field(s) for Bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroTextController;
  String? Function(BuildContext, String?)? bairroTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cepFocusNode?.dispose();
    cepTextController?.dispose();

    ruaFocusNode?.dispose();
    ruaTextController?.dispose();

    numeroFocusNode?.dispose();
    numeroTextController?.dispose();

    complemetoFocusNode?.dispose();
    complemetoTextController?.dispose();

    bairroFocusNode?.dispose();
    bairroTextController?.dispose();
  }
}
