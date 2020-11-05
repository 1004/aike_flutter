import 'package:aike_flutter/main/defalut_page.dart';
import 'package:aike_flutter/page/test/fragment_page.dart';
import 'package:aike_flutter/page/test/one_page.dart';
import 'package:flutter_boost/flutter_boost.dart';

class MainPageRegister{

  static void registerPage(){

    FlutterBoost.singleton.registerDefaultPageBuilder((name,params,_)=>DefalutPage());
    
    FlutterBoost.singleton.registerPageBuilders({
      'xky/house/onepage': (pageName, params, _) => OnePage(params),
    });

    FlutterBoost.singleton.registerPageBuilders({
      'xky/house/newfragment': (pageName, params, _) => FragmentPage(params),
    });
  }
}