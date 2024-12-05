import 'package:base_app/core/base/base_viewmodel.dart';
import 'package:flutter/widgets.dart';

abstract class BaseView<T extends BaseViewModel> extends StatefulWidget {
  const BaseView({super.key});
  T createViewModel();

  Widget build(BuildContext context, T viewModel);

  void initState(T viewModel) {}

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState<T extends BaseViewModel> extends State<BaseView<T>> {
  late T viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = widget.createViewModel();
    widget.initState(viewModel);
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.build(context, viewModel);
  }
}
