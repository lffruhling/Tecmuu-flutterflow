import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'lista_animais_widget.dart' show ListaAnimaisWidget;
import 'package:flutter/material.dart';

class ListaAnimaisModel extends FlutterFlowModel<ListaAnimaisWidget> {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Stores action output result for [Custom Action - checkInternetConnection] action in listaAnimais widget.
  bool? respostaNet;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  /// Query cache managers for this widget.

  final _bezerrasAnimaisProdutorManager =
      StreamRequestManager<List<AnimaisProdutoresRecord>>();
  Stream<List<AnimaisProdutoresRecord>> bezerrasAnimaisProdutor({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<AnimaisProdutoresRecord>> Function() requestFn,
  }) =>
      _bezerrasAnimaisProdutorManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearBezerrasAnimaisProdutorCache() =>
      _bezerrasAnimaisProdutorManager.clear();
  void clearBezerrasAnimaisProdutorCacheKey(String? uniqueKey) =>
      _bezerrasAnimaisProdutorManager.clearRequest(uniqueKey);

  final _bezerrosAnimaisProdutorManager =
      StreamRequestManager<List<AnimaisProdutoresRecord>>();
  Stream<List<AnimaisProdutoresRecord>> bezerrosAnimaisProdutor({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<AnimaisProdutoresRecord>> Function() requestFn,
  }) =>
      _bezerrosAnimaisProdutorManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearBezerrosAnimaisProdutorCache() =>
      _bezerrosAnimaisProdutorManager.clear();
  void clearBezerrosAnimaisProdutorCacheKey(String? uniqueKey) =>
      _bezerrosAnimaisProdutorManager.clearRequest(uniqueKey);

  final _novilhasAnimaisProdutorManager =
      StreamRequestManager<List<AnimaisProdutoresRecord>>();
  Stream<List<AnimaisProdutoresRecord>> novilhasAnimaisProdutor({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<AnimaisProdutoresRecord>> Function() requestFn,
  }) =>
      _novilhasAnimaisProdutorManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearNovilhasAnimaisProdutorCache() =>
      _novilhasAnimaisProdutorManager.clear();
  void clearNovilhasAnimaisProdutorCacheKey(String? uniqueKey) =>
      _novilhasAnimaisProdutorManager.clearRequest(uniqueKey);

  final _semensAnimaisProdutorManager =
      StreamRequestManager<List<AnimaisProdutoresRecord>>();
  Stream<List<AnimaisProdutoresRecord>> semensAnimaisProdutor({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<AnimaisProdutoresRecord>> Function() requestFn,
  }) =>
      _semensAnimaisProdutorManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSemensAnimaisProdutorCache() =>
      _semensAnimaisProdutorManager.clear();
  void clearSemensAnimaisProdutorCacheKey(String? uniqueKey) =>
      _semensAnimaisProdutorManager.clearRequest(uniqueKey);

  final _tourosAnimaisProdutorManager =
      StreamRequestManager<List<AnimaisProdutoresRecord>>();
  Stream<List<AnimaisProdutoresRecord>> tourosAnimaisProdutor({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<AnimaisProdutoresRecord>> Function() requestFn,
  }) =>
      _tourosAnimaisProdutorManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTourosAnimaisProdutorCache() =>
      _tourosAnimaisProdutorManager.clear();
  void clearTourosAnimaisProdutorCacheKey(String? uniqueKey) =>
      _tourosAnimaisProdutorManager.clearRequest(uniqueKey);

  final _vacasAnimaisProdutorManager =
      StreamRequestManager<List<AnimaisProdutoresRecord>>();
  Stream<List<AnimaisProdutoresRecord>> vacasAnimaisProdutor({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<AnimaisProdutoresRecord>> Function() requestFn,
  }) =>
      _vacasAnimaisProdutorManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearVacasAnimaisProdutorCache() => _vacasAnimaisProdutorManager.clear();
  void clearVacasAnimaisProdutorCacheKey(String? uniqueKey) =>
      _vacasAnimaisProdutorManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
    tabBarController?.dispose();

    /// Dispose query cache managers for this widget.

    clearBezerrasAnimaisProdutorCache();

    clearBezerrosAnimaisProdutorCache();

    clearNovilhasAnimaisProdutorCache();

    clearSemensAnimaisProdutorCache();

    clearTourosAnimaisProdutorCache();

    clearVacasAnimaisProdutorCache();
  }
}
