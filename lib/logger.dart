import 'package:logger/logger.dart';



var logger = Logger(
  printer: PrettyPrinter(),
);

var loggerNoStack = Logger(
  printer: PrettyPrinter(methodCount: 0),
);

// logger.v("Verbose log");

// logger.d("Debug log");

// logger.i("Info log");

// logger.w("Warning log");

// logger.e("Error log");

// logger.wtf("What a terrible failure log");