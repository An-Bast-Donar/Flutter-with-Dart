void main() {
  print('Hola Mundo');

  // Números enteros (int)
  int edad = 30;
  int cantidadDeHijos = 2;

  // Números de punto flotante (double)
  double altura = 1.75;
  double peso = 75.5;

  // Booleanos (bool)
  bool esMayorDeEdad = true;
  bool estaEnLinea = false;

  // Cadenas de texto (String)
  String nombre = "Juan";
  String direccion = "Calle 123, Ciudad";

  // Listas
  List<int> numeros = [1, 2, 3, 4, 5];
  List<String> nombres = ["Juan", "María", "Pedro"];
  List<dynamic> elementos = [1, "Hola", true];

  // Declaramos un mapa de cadenas de texto a números enteros
  Map<String, int> edades = {
    'Juan': 30,
    'María': 25,
    'Pedro': 40,
  };

  // Agregamos un nuevo elemento al mapa
  edades['Ana'] = 35;

  // Accedemos a los valores del mapa por su clave
  print('La edad de Juan es ${edades['Juan']} años');
  print('La edad de Pedro es ${edades['Pedro']} años');

  // Recorremos el mapa usando un ciclo "for"
  for (var persona in edades.keys) {
    var edad = edades[persona];
    print('$persona tiene $edad años');
  }

  // Creamos una instancia de la clase "Persona"
  var juan = Persona('Juan', 30);

  // Accedemos a las propiedades de la instancia
  print('El nombre de la persona es ${juan.nombre}');
  print('La edad de la persona es ${juan.edad}');

  // Llamamos a un método de la instancia
  juan.saludar();

  // Creamos instancias de las subclases y llamamos a sus métodos
  var miPerro = Perro('Fido', 3);
  miPerro.saludar();
  miPerro.emitirSonido();
  var miGato = Gato('Minina', 2);
  miGato.saludar();
  miGato.emitirSonido();

  // Creamos una instancia de la clase "Empleado" y llamamos a sus métodos
  var empleado = Empleado('Juan');
  empleado.hablar('Hola a todos!');
  empleado.caminar(10);
}

// Creamos una clase "Persona"
class Persona {
  String _nombre;
  int _edad;

  Persona(this._nombre, this._edad);

  String get nombre => _nombre;

  set nombre(String valor) {
    _nombre = valor;
  }

  int get edad => _edad;

  set edad(int valor) {
    _edad = valor;
  }

  void saludar() {
    print('Hola, mi nombre es $nombre y tengo $edad años.');
  }
}

// Definimos la clase abstracta "Animal"
abstract class Animal {
  String _nombre;
  int _edad;

  Animal(this._nombre, this._edad);

  String get nombre => _nombre;

  set nombre(String valor) {
    _nombre = valor;
  }

  int get edad => _edad;

  set edad(int valor) {
    _edad = valor;
  }

  void saludar() {
    print('Hola, soy un $nombre y tengo $edad años.');
  }

  // Método abstracto que debe ser implementado por las subclases
  void emitirSonido();
}

// Definimos una subclase de "Animal" que implementa su método abstracto
class Perro extends Animal {
  Perro(String nombre, int edad) : super(nombre, edad);

  @override
  void emitirSonido() {
    print('Guau guau!');
  }
}

// Definimos otra subclase de "Animal" que implementa su método abstracto
class Gato extends Animal {
  Gato(String nombre, int edad) : super(nombre, edad);

  @override
  void emitirSonido() {
    print('Miau!');
  }
}

// Un mixin que proporciona la funcionalidad de hablar
mixin HablarMixin {
  void hablar(String mensaje) {
    print('Dice: $mensaje');
  }
}

// Un mixin que proporciona la funcionalidad de caminar
mixin CaminarMixin {
  void caminar(int distancia) {
    print('Caminó $distancia metros');
  }
}

// Una clase que usa los mixins de Hablar y Caminar
class Empleado with HablarMixin, CaminarMixin {
  String nombre;

  Empleado(this.nombre);
}
