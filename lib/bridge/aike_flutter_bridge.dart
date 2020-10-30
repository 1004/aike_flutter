import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

typedef methodObserver = Future Function(MethodCall call);


class AikeFlutterBridge{
  static AikeFlutterBridge _instance;

  MethodChannel _methodChannel = new MethodChannel("aikeflutterBridge");

  var _listeners = {};

  AikeFlutterBridge._(){
    _methodChannel.setMethodCallHandler((call){
      //可以对native做出相应
      String method = call.method;
      if(_listeners[method] != null){
        return _listeners[method](call);
      }
      return null;
    });
  }

  static AikeFlutterBridge _instanceInit(){
    if(_instance == null){
      _instance = new AikeFlutterBridge._();
    }
    return _instance;
  }

  factory AikeFlutterBridge()=>_instanceInit();


  Future flutter2Native(String method,dynamic argument){
    return _methodChannel.invokeMethod(method,argument);
  }

  void regist(String methodName,methodObserver observer){
    _listeners[methodName] = observer;
  }

  void unReigst(String methodName){
    _listeners.remove(methodName);
  }




}