import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'editar_propriedade_widget.dart' show EditarPropriedadeWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditarPropriedadeModel extends FlutterFlowModel<EditarPropriedadeWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  String? _yourNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo é obrigatório.';
    }

    if (val.length < 10) {
      return 'Mínimo 10 caracteres.';
    }
    if (val.length > 50) {
      return 'Máximo 50 caracteres.';
    }

    return null;
  }

  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  late MaskTextInputFormatter cpfMask;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  String? _cpfTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo é obrigatório.';
    }

    if (val.length < 14) {
      return 'Mínimo 14 caracteres.';
    }
    if (val.length > 14) {
      return 'Máximo 14 caracteres.';
    }

    return null;
  }

  // State field(s) for celular widget.
  FocusNode? celularFocusNode;
  TextEditingController? celularTextController;
  late MaskTextInputFormatter celularMask;
  String? Function(BuildContext, String?)? celularTextControllerValidator;
  String? _celularTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo é obrigatório.';
    }

    if (val.length < 15) {
      return 'Mínimo 15 caracteres.';
    }
    if (val.length > 15) {
      return 'Máximo 15 caracteres.';
    }

    return null;
  }

  // State field(s) for endereco widget.
  FocusNode? enderecoFocusNode;
  TextEditingController? enderecoTextController;
  String? Function(BuildContext, String?)? enderecoTextControllerValidator;
  String? _enderecoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo é obrigatório.';
    }

    if (val.length < 2) {
      return 'Mínimo 15 caracteres.';
    }
    if (val.length > 50) {
      return 'Máximo 50 caracteres.';
    }

    return null;
  }

  // State field(s) for diasdg widget.
  String? diasdgValue;
  FormFieldController<String>? diasdgValueController;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'emailPropriedade is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  // State field(s) for confirmarsenha widget.
  FocusNode? confirmarsenhaFocusNode;
  TextEditingController? confirmarsenhaTextController;
  late bool confirmarsenhaVisibility;
  String? Function(BuildContext, String?)?
      confirmarsenhaTextControllerValidator;
  String? _confirmarsenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirmar Senha is required';
    }

    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in liberar_acesso widget.
  PersonRecord? uidPersonProdutor;

  @override
  void initState(BuildContext context) {
    yourNameTextControllerValidator = _yourNameTextControllerValidator;
    cpfTextControllerValidator = _cpfTextControllerValidator;
    celularTextControllerValidator = _celularTextControllerValidator;
    enderecoTextControllerValidator = _enderecoTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    senhaVisibility = false;
    confirmarsenhaVisibility = false;
    confirmarsenhaTextControllerValidator =
        _confirmarsenhaTextControllerValidator;
  }

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    celularFocusNode?.dispose();
    celularTextController?.dispose();

    enderecoFocusNode?.dispose();
    enderecoTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();

    confirmarsenhaFocusNode?.dispose();
    confirmarsenhaTextController?.dispose();
  }
}
