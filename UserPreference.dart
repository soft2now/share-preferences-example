

import 'package:shared_preferences/shared_preferences.dart';

class UserPrerence{

  static final UserPrerence _instace = new UserPrerence._internal();
  
  factory UserPrerence(){
    return _instace;
  }

  UserPrerence._internal();

  SharedPreferences _prefs;

  initPrefs() async{

   this._prefs = await SharedPreferences.getInstance();

  }

  //get
  get genero {

    return this._prefs.getInt('genero') ?? 1;

  }
  //set
  set genero(int value) {

    this._prefs.setInt('genero', value);

  }

  //get color theme
  get colorTheme {
    return this._prefs.getBool('colorSecundario') ?? false;
  }
  //set color theme
  set colorTheme(bool value) {

    this._prefs.setBool('colorSecundario', value);

  }

  
  //get color theme
  get miNombre {
    return this._prefs.getString('miNombre') ?? 'Ninguno';
  }
  //set color theme
  set miNombre(String value) {

    this._prefs.setString('miNombre', value);

  }

  //get ultimaPagina
  get ultimaPagina {
    return this._prefs.getString('ultimaPagina') ?? 'home';
  }
  //set ultimaPagina
  set ultimaPagina(String value) {

    this._prefs.setString('ultimaPagina', value);

  }
}