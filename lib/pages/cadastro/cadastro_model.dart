import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cadastro_widget.dart' show CadastroWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastroModel extends FlutterFlowModel<CadastroWidget> {
  ///  Local state fields for this page.

  String? codigoGerado = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for nomeeAcesso widget.
  FocusNode? nomeeAcessoFocusNode;
  TextEditingController? nomeeAcessoTextController;
  String? Function(BuildContext, String?)? nomeeAcessoTextControllerValidator;
  // State field(s) for CPFdeAcesso widget.
  FocusNode? cPFdeAcessoFocusNode;
  TextEditingController? cPFdeAcessoTextController;
  late MaskTextInputFormatter cPFdeAcessoMask;
  String? Function(BuildContext, String?)? cPFdeAcessoTextControllerValidator;
  // State field(s) for emailDeAcesso widget.
  FocusNode? emailDeAcessoFocusNode1;
  TextEditingController? emailDeAcessoTextController1;
  String? Function(BuildContext, String?)?
      emailDeAcessoTextController1Validator;
  // State field(s) for emailDeAcesso widget.
  FocusNode? emailDeAcessoFocusNode2;
  TextEditingController? emailDeAcessoTextController2;
  late MaskTextInputFormatter emailDeAcessoMask2;
  String? Function(BuildContext, String?)?
      emailDeAcessoTextController2Validator;
  // State field(s) for SenhaDeAcesso widget.
  FocusNode? senhaDeAcessoFocusNode;
  TextEditingController? senhaDeAcessoTextController;
  late bool senhaDeAcessoVisibility;
  String? Function(BuildContext, String?)? senhaDeAcessoTextControllerValidator;
  // State field(s) for ConfirmarSenha widget.
  FocusNode? confirmarSenhaFocusNode;
  TextEditingController? confirmarSenhaTextController;
  late bool confirmarSenhaVisibility;
  String? Function(BuildContext, String?)?
      confirmarSenhaTextControllerValidator;
  // Stores action output result for [Backend Call - API (Cadastro)] action in Botodeentrada widget.
  ApiCallResponse? apiResultiqs;

  @override
  void initState(BuildContext context) {
    senhaDeAcessoVisibility = false;
    confirmarSenhaVisibility = false;
  }

  @override
  void dispose() {
    nomeeAcessoFocusNode?.dispose();
    nomeeAcessoTextController?.dispose();

    cPFdeAcessoFocusNode?.dispose();
    cPFdeAcessoTextController?.dispose();

    emailDeAcessoFocusNode1?.dispose();
    emailDeAcessoTextController1?.dispose();

    emailDeAcessoFocusNode2?.dispose();
    emailDeAcessoTextController2?.dispose();

    senhaDeAcessoFocusNode?.dispose();
    senhaDeAcessoTextController?.dispose();

    confirmarSenhaFocusNode?.dispose();
    confirmarSenhaTextController?.dispose();
  }
}
