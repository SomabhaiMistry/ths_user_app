import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SubscriptionPlanModel{
  final String tvTitle,tvPrice,tvSubtitle;
  SubscriptionPlanModel(this.tvTitle, this.tvPrice, this.tvSubtitle);
}

List<SubscriptionPlanModel>modelArrayList = [];