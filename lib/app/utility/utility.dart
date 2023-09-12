import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import '../ui/themes/colors.dart';

final Shader mainAmountGradient = const LinearGradient(
  colors: [AppColors.red, AppColors.primary, AppColors.secondPrimary],
).createShader(
  const Rect.fromLTWH(50.0, 0.0, 350.0, 50.0),
);

String formatAmount({required amount}) {
  var formatter = NumberFormat('#,##,###');
  var v = formatter.format(amount);
  debugPrint("formatted amount is $v");
  return v;
}

int stringToInt({required text}) {
  var myInt = int.parse(text);
  debugPrint("$myInt");
  return myInt;
}

double stringToDouble({required text}) {
  var myInt = double.parse(text);
  debugPrint("$myInt");
  return myInt;
}

String getIsoToLocalTime({required String date}) {
  var dateTime = DateFormat("yyyy-MM-dd HH:mm:ss").parse(date, true);
  // var localTime = dateTime.toLocal();
  var outputFormat = DateFormat('hh:mm a');
  var outputDate = outputFormat.format(dateTime);
  return outputDate;
}

String getIsoToLocalDate({required String date}) {
  var dateTime = DateFormat("yyyy-MM-dd HH:mm:ss").parse(date, true);
  // var localTime = dateTime.toLocal();
  var outputFormat = DateFormat('dd-MM-yy');
  var outputDate = outputFormat.format(dateTime);
  return outputDate;
}

openBrowser({required url}) async {
  if (!await launchUrl(
    Uri.parse(url),
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not launch $url';
  }
}

launchInWebView({required url}) async {
  if (!await launchUrl(
    Uri.parse(url),
    mode: LaunchMode.inAppWebView,
    webViewConfiguration: const WebViewConfiguration(
        headers: <String, String>{"Accept": 'application/json'}),
  )) {
    throw 'Could not launch $url';
  }
}

makePhoneCall({required String phoneNumber}) async {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );
  await launchUrl(launchUri);
}