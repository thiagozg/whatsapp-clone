import 'package:flutter/widgets.dart';

class Constants extends InheritedWidget {

  static Constants of(BuildContext context) => 
  context.inheritFromWidgetOfExactType(Constants);

  const Constants({Widget child, Key key}): super(key: key, child: child);

  final int _primaryColorHexa = 0xff075E54;
  
  final int _accentColorHexa = 0xff25D366;
  
  Color get primaryColor => Color(_primaryColorHexa);

  Color get accentColor => Color(_accentColorHexa);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
  
}