import 'package:base_app/core/base/base_view.dart';
import 'package:base_app/viewmodel/home_viewmodel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends BaseView<HomeViewModel> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text('Hello Bhaskar Narayan'),
      ),
    );
  }

  @override
  HomeViewModel createViewModel() {
    return HomeViewModel();
  }
}
