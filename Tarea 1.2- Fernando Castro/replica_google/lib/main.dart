import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String titulo1 = "Tu Cuenta esta protegida";
    const String parrafo1 = "La verificacion de seguridad reviso tu cuenta y no encontro acciones recomendadas.";
    const String detalle1 = "Ver detalle";
    const String titulo2 = "Verificacion de privacidad";
    const String parrafo2 = "Elige la configuracion de privacidad indicada para ti con esta guia paso a paso.";
    const String detalle2 = "Realizar la verificacion de privacidad";
    const String parrafo3 = "Solo tu puedes ver la configuracion. Tambien puedes revidar la configuracion de Maps, la busqueda o cualquier servicio de google que uses con frecuencia. Google proteje la privacidad y la seguridad de tus datos. ";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Cuenta de Google",
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  children: [
                    const Contenido(
                      titulo: titulo1,
                      text2: parrafo1,
                      text3: detalle1,
                    ),
                    const Contenido(
                      titulo: titulo2,
                      text2: parrafo2,
                      text3: detalle2,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "¿Busca otra informacion?",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        caja(Icons.search_outlined, "    Buscar en la cuenta de google"),
                        const SizedBox(
                          height: 10,
                        ),
                        caja(Icons.help, "    Ver las opciones de ayuda"),
                        const SizedBox(
                          height: 10,
                        ),
                        caja(Icons.comment, "    Enviar comentarios"),
                      ],
                    ),
                    const Contenido(
                      titulo: "",
                      text2: parrafo3,
                      text3: "",
                      additional: Row(
                        children: [
                          Text(
                            "Mostrar información",
                            style: TextStyle(
                              color: Colors.blue,
                              fontFamily: AutofillHints.addressCityAndState,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.help_outline,
                            color: Colors.blue,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  caja(IconData icono, String texto) {
    const estiloIntern0 = TextStyle(fontSize: 14, fontFamily: AutofillHints.jobTitle);
    return Row(
      children: [
        Icon(icono),
        Expanded(
          child: Text(
            texto,
            style: estiloIntern0,
          ),
        ),
        const SizedBox(
          width: 40,
        ),
        const Icon(Icons.arrow_forward_ios_sharp),
      ],
    );
  }
}

class Contenido extends StatelessWidget {
  final String titulo;
  final String text2;
  final String text3;
  final Widget? additional;

  const Contenido({
    super.key,
    required this.titulo,
    required this.text2,
    required this.text3,
    this.additional,
  });

  @override
  Widget build(BuildContext context) {
    const texts = TextStyle(
      color: Colors.blue,
      fontFamily: AutofillHints.addressCityAndState,
      fontSize: 13,
    );
    const titulos = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );

    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titulo,
                style: titulos,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(text2),
              const SizedBox(
                height: 15,
              ),
              Text(
                text3,
                style: texts,
              ),
              if (additional != null) additional!,
              const SizedBox(height: 15),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: const FlutterLogo(size: 50),
        ),
      ],
    );
  }
}
