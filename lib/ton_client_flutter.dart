import 'package:ton_client_dart/ton_client_dart.dart' as tonsdk;
import 'dart:ffi';
import 'dart:io';
export 'package:ton_client_dart/ton_client_dart.dart';

class TonClient extends tonsdk.TonClient {
  DynamicLibrary getLibrary(String libPath) {
    try {
      if (Platform.isLinux) {
        final path = libPath + 'libton_client_dart.so';
        return DynamicLibrary.open(path);
      } else if (Platform.isWindows) {
        final path = libPath + 'ton_client_dart.dll';
        return DynamicLibrary.open(path);
      } else if (Platform.isAndroid) {
        return DynamicLibrary.open('libton_client_dart.so');
      } else if (Platform.isIOS) {
        return DynamicLibrary.process();
      } else {
        throw ("Platform not implemented yet!");
      }
    } catch (e) {
      throw ('Error: Try to check dynamic library path.\n$e');
    }
  }
}
