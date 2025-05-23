

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inventario_medizin/presentation/widget/verificacioncorreo/build_textfield.dart';

Widget BodyVerificacion(BuildContext context, Color colorScheme) {
  return Stack(
    children: [
      Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2 - 25,
            color: colorScheme,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2 - 25,
            color: Colors.white,
          ),
        ],
      ),
      // Formulario centrado
      Center(
        child: SingleChildScrollView(
          child: Container(
            width: 948,
            padding: EdgeInsets.all(64),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Verificación del correo',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w800,
                    color: colorScheme,
                    fontFamily: 'Poppins'
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  'Hemos enviado al correo m*****n@empresa.com un\ncódigo de verificación para valida que sea 100% real, por favor\ningrese el código de 6 digitos para continuar:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 67, 67, 67),
                    fontFamily: 'Poppins',
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24),
                buildTextField(
                  'Ingresa el código',
                ),
                
                SizedBox(height: 6),
                TextButton(
                  onPressed: () {},
                  child: RichText(
                    text: TextSpan(
                      text: 'Reenviar código en ',
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromARGB(255, 67, 67, 67),
                        fontSize: 12
                      ),
                      children: [
                        TextSpan(
                          text: '60 segundos',

                          style: TextStyle(
                            color: colorScheme,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                
                SizedBox(height: 24),
                // Botón de registro
                SizedBox(
                  width: 350,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colorScheme,
                      padding: EdgeInsets.symmetric(vertical: 22),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19),
                      ),
                    ),

                    onPressed: () {
                      context.go('/home');
                    },
                    child: Text(
                      'Verificar',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                // Enlace a inicio de sesión
                TextButton(
                  onPressed: () => context.go('/register'),
                   child: Text('Volver a introducir el correo ',
                   style: TextStyle(
                    fontSize: 12, 
                    color: Color.fromARGB(255, 67, 67, 67),
                   decoration: TextDecoration.underline),),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

