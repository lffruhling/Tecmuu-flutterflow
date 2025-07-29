import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'recriacao_widget.dart' show RecriacaoWidget;
import 'package:flutter/material.dart';

class RecriacaoModel extends FlutterFlowModel<RecriacaoWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Custom Action - checkInternetConnection] action in recriacao widget.
  bool? respostaNet;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  /// Query cache managers for this widget.

  final _animaisRecriacaoPageManager =
      StreamRequestManager<List<AnimaisProdutoresRecord>>();
  Stream<List<AnimaisProdutoresRecord>> animaisRecriacaoPage({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<AnimaisProdutoresRecord>> Function() requestFn,
  }) =>
      _animaisRecriacaoPageManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAnimaisRecriacaoPageCache() => _animaisRecriacaoPageManager.clear();
  void clearAnimaisRecriacaoPageCacheKey(String? uniqueKey) =>
      _animaisRecriacaoPageManager.clearRequest(uniqueKey);

  final _animaisRecriacaoPage1Manager =
      StreamRequestManager<List<AnimaisProdutoresRecord>>();
  Stream<List<AnimaisProdutoresRecord>> animaisRecriacaoPage1({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<AnimaisProdutoresRecord>> Function() requestFn,
  }) =>
      _animaisRecriacaoPage1Manager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAnimaisRecriacaoPage1Cache() =>
      _animaisRecriacaoPage1Manager.clear();
  void clearAnimaisRecriacaoPage1CacheKey(String? uniqueKey) =>
      _animaisRecriacaoPage1Manager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();

    /// Dispose query cache managers for this widget.

    clearAnimaisRecriacaoPageCache();

    clearAnimaisRecriacaoPage1Cache();
  }
}
