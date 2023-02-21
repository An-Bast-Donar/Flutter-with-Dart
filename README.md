# Flutter with Dart

Aprender flutter y dark de cero a master

## Dart basico

- Dart es un lenguaje de tipado estático, lo que significa que se debe especificar el tipo de datos que se utilizará para cada variable.
- Dart tiene una sintaxis similar a la de otros lenguajes de programación, como Java o JavaScript.
- Dart utiliza la programación orientada a objetos, lo que significa que los programas están diseñados en torno a objetos que tienen atributos y métodos.
- Dart utiliza la compilación JIT (just-in-time) para la ejecución en tiempo de ejecución. Esto significa que el código se compila justo antes de ser ejecutado, lo que permite una ejecución más rápida.

## Hola mundo en Dart

1. Descarga e instala Dart SDK en tu ordenador: https://dart.dev/get-dart
2. Abre tu editor de código favorito y crea un nuevo archivo. Guarda el archivo con un nombre significativo y la extensión ".dart"
3. Abre la línea de comandos y navega hasta la ubicación donde guardaste el archivo.
4. Ejecuta: $ dart nombre_del_archivo.dart
5. Para verificar si tenemos dart en nuestro sistema, ejecutamos $ dart --version

## Introduccion a Flutter

- Flutter es un framework de código abierto desarrollado por Google que se utiliza para construir aplicaciones nativas para dispositivos móviles, web y escritorio. Con Flutter, los desarrolladores pueden utilizar un solo conjunto de código para crear aplicaciones para múltiples plataformas. La principal ventaja de Flutter es su capacidad para crear interfaces de usuario personalizadas y de alta calidad, utilizando widgets que se construyen en tiempo real. Flutter también cuenta con un compilador "Just-in-Time" que permite una rápida iteración y un desarrollo ágil.

## Conceptos fundamentales de Flutter

- Widgets: Flutter utiliza un sistema de widgets para construir interfaces de usuario. Los widgets son objetos que representan elementos visuales como botones, etiquetas de texto, cajas de entrada de texto, etc.

- Hot Reload: Flutter tiene una característica llamada Hot Reload que permite a los desarrolladores realizar cambios en el código y ver los resultados inmediatamente en la aplicación en ejecución sin necesidad de reiniciar la aplicación.

- Material Design y Cupertino: Flutter proporciona dos conjuntos de widgets para construir interfaces de usuario, uno siguiendo el diseño de Material Design de Google y otro siguiendo el diseño de Cupertino de Apple.

- Animaciones: Flutter proporciona una amplia gama de herramientas y widgets para construir animaciones personalizadas y fluidas en la interfaz de usuario.

- State Management: Flutter utiliza el patrón de gestión de estado de Redux, que es una forma de almacenar y administrar el estado de la aplicación en un solo lugar.

- Plugins y paquetes: Flutter tiene una amplia biblioteca de paquetes y plugins para ampliar la funcionalidad de la aplicación, como por ejemplo acceso a bases de datos, conectividad de red, integración de mapas y más.

- Dart: Flutter utiliza el lenguaje de programación Dart, que es un lenguaje orientado a objetos con una sintaxis fácil de leer y escribir.

## Widgets

En Flutter, hay dos tipos de widgets: StatelessWidget y StatefulWidget. Ambos tipos de widgets se utilizan para crear interfaces de usuario, pero tienen algunas diferencias clave.

- StatelessWidget: como su nombre lo indica, es un widget sin estado. Esto significa que no puede cambiar su estado después de ser creado. Por lo tanto, no tiene un método setState() y se usa para crear widgets simples que no cambian con el tiempo. Es ideal para widgets que no requieren actualizaciones constantes, como los iconos o los textos estáticos.

- StatefulWidget: es un widget con estado y puede cambiar su estado después de ser creado. Por lo tanto, tiene un método setState() que le permite actualizar su estado y redibujar la interfaz de usuario. Este widget se utiliza para crear widgets que cambian con el tiempo, como los botones, formularios y listas.

Además de los dos tipos principales de widgets, Flutter también tiene diferentes tipos de widgets basados en su propósito y comportamiento:

- Layout widgets: se utilizan para definir la estructura y el diseño de la interfaz de usuario. Incluyen widgets como Row, Column, Stack y Expanded.

- Material widgets: siguen el diseño de Material Design de Google e incluyen widgets como AppBar, FloatingActionButton, Card y más.

- Cupertino widgets: siguen el diseño de Cupertino de Apple e incluyen widgets como CupertinoNavigationBar, CupertinoTextField, CupertinoButton y más.

- Input widgets: se utilizan para capturar la entrada del usuario, como TextFormField, Checkbox, RadioButton, Switch y más.

- Style widgets: se utilizan para aplicar estilos a los widgets, como TextStyle, BoxDecoration, BoxDecoration y más.

- Animation widgets: se utilizan para crear animaciones personalizadas en la interfaz de usuario, como AnimatedContainer, AnimatedOpacity, Tween y más.

## Arbol de widgets

El árbol de widgets es una representación visual de la jerarquía de los widgets en una aplicación de Flutter. En Flutter, cada widget se construye a partir de otros widgets y forma una jerarquía de árbol. El widget raíz es el punto de partida de la aplicación y todos los demás widgets se crean a partir de él. En el árbol de widgets, cada widget se representa como un nodo en el árbol y las relaciones entre los widgets se representan como bordes. La raíz del árbol de widgets es típicamente el widget MaterialApp o CupertinoApp. A partir de ahí, se construyen diferentes pantallas y widgets utilizando widgets de diseño y widgets de contenido. Los widgets de diseño como Column, Row y Stack se utilizan para organizar los widgets de contenido y establecer su posicionamiento en la pantalla. Los widgets de contenido son widgets que representan elementos visuales, como Text, Image, Icon, Button, etc. Estos widgets se colocan dentro de los widgets de diseño para crear la interfaz de usuario completa. El árbol de widgets es importante porque es la representación visual de la estructura de la aplicación. Permite a los desarrolladores ver cómo se construye la aplicación y cómo los widgets interactúan entre sí. También es importante para la depuración, ya que puede ayudar a identificar problemas con el diseño y la estructura de la aplicación.

## Estructura de un proyectpo

La estructura de un proyecto en Flutter sigue una convención de carpetas estándar. A continuación se describen las carpetas más importantes:

- lib: Esta es la carpeta principal del proyecto y contiene todo el código fuente de la aplicación Flutter. Aquí se encuentran todos los archivos de Dart que definen la interfaz de usuario, la lógica de negocio, la conexión con servidores, entre otros. Los subdirectorios comunes que se encuentran en lib son models para los modelos de datos, services para la conexión con los servidores y widgets para los widgets personalizados.

- android y ios: Estas carpetas contienen los archivos de configuración y los recursos para compilar la aplicación en los sistemas operativos Android e iOS, respectivamente.

- test: Esta carpeta contiene los archivos de prueba de la aplicación, que se utilizan para probar la funcionalidad de la aplicación en diferentes escenarios.

- assets: Esta carpeta contiene los archivos estáticos, como imágenes, fuentes, sonidos, entre otros. Estos archivos se pueden utilizar en la aplicación para mejorar la interfaz de usuario.

- build: Esta carpeta se genera automáticamente cuando se compila la aplicación. Contiene los archivos compilados de la aplicación y se utiliza para ejecutar la aplicación en un dispositivo o emulador.

Además de estas carpetas, el proyecto también contiene varios archivos de configuración, como pubspec.yaml, que se utiliza para administrar las dependencias del proyecto, y main.dart, que es el punto de entrada de la aplicación.
