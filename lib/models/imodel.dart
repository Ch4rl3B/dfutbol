abstract class iModel{

  /// Este metodo se utiliza para hacer una copia del objeto,
  /// ejemplo para hacer un update
  iModel copyWith();

  /// Convertir el objeto a un mapa que despues sea traducido a un
  /// JSON de REST o de GraphQL
  Map<String, dynamic> toMap();

  /// Convertir un mapa recuperado de un JSON a un objeto de la clase
  iModel.fromMap(Map<String, dynamic> map);

  /** INCLUIR EL ==() Y EL toString()  **/

}