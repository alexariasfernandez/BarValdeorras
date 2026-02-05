## 🚀 Despliegue de la aplicación

La aplicación **Bar Valdeorras** está desarrollada con **Flutter**, lo que permite desplegarla en diferentes plataformas a partir de un único código fuente.

A continuación se detallan los pasos básicos para ejecutar y desplegar la aplicación en cada plataforma.


### 📱 Android

#### Requisitos
- Android Studio
- SDK de Android instalado
- Dispositivo físico o emulador Android

#### Pasos
1. Abrir el proyecto en Android Studio.
2. Ejecutar el comando:
   ```bash
   flutter pub get
3. Conectar un dispositivo Android o iniciar un emulador.
4. Ejecutar la aplicación con: 
    flutter run
5. Para generar el archivo instalable(APK):
    flutter build apk
El archivo generado se guarda en:
build/app/outputs/flutter-apk/

### 🍏 iOS

⚠️ El despliegue en iOS solo es posible desde macOS.

Requisitos
    · macOS
    · Xcode
    · Cuenta de desarrollador de Apple
Pasos
1. Abrir el proyecto desde Xcode (ios/Runner.xcworkspace).
2. Ejecutar:
    flutter pub get
3. Seleccionar un simulador o dispositivo iOS.
4. Ejecutar la aplicación:
    flutter run
5. Para generar la aplicación:
    flutter build ios

### 🌐 Web

Flutter permite desplegar la aplicación como una web estática.

Pasos
1. Habilitar el soporte web:
    flutter config --enable-web
2. Ejecutar la aplicación en el navegador:
    flutter run -d chrome
3. Generar la versión web:
    flutter build web
Los archivos generados estarán en la carpeta:
    build/web/

### 💻 Escritorio (Windows, Linux, macOS)
Flutter también permite desplegar aplicaciones de escritorio.

Pasos
1. Habilitar la plataforma deseada, por ejemplo Windows:
    flutter config --enable-windows-desktop
2. Ejecutar la aplicación:
    flutter run -d windows
3. Generar el ejecutable:
    flutter build windows

### 🧪 Comprobación del entorno
Para verificar que el entorno está correctamente configurado, se puede ejecutar:
    flutter doctor
Este comando muestra si falta alguna dependencia para cada plataforma.