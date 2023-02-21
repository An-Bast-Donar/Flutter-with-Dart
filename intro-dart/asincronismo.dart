// Función asíncrona que devuelve un objeto Future que se completará después de 2 segundos
Future<String> obtenerSaludo() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Hola, ¿cómo estás?';
}

void main() async {
  // Llamamos a la función asíncrona y esperamos a que el objeto Future esté completo
  var saludo = await obtenerSaludo();

  // Imprimimos el resultado
  print(saludo);
}
