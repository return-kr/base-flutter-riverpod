import 'package:base_app/core/base/base_view.dart';
import 'package:base_app/viewmodel/splash_viewmodel.dart';
import 'package:flutter/material.dart';

class SplashScreen extends BaseView<SplashViewModel> {
  const SplashScreen({super.key});

  @override
  void initState(SplashViewModel viewModel) {
    super.initState(viewModel);
    viewModel.onStartSplash();
  }

  @override
  Widget build(BuildContext context, SplashViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text('I am Splash'),
      ),
    );
  }

  @override
  SplashViewModel createViewModel() {
    return SplashViewModel();
  }

}