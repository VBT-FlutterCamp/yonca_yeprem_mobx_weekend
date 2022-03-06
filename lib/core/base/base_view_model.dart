import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

abstract class BaseViewModel {
  late BuildContext context;
  Dio get networkManager => Dio(BaseOptions(baseUrl: ''));

  void setContext(BuildContext context);
  void init();

}
