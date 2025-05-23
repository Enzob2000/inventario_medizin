
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/src/consumer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inventario_medizin/presentation/providers/iniciosesion/provider_inicio.dart';
import 'package:inventario_medizin/presentation/widget/register/build_textfield.dart';
import 'package:riverpod/src/common.dart';

Widget BodyInicio(BuildContext context, Color colorScheme, WidgetRef ref, ) {
  final auth = ref.watch(authControllerProvider);
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
            width: 452,
            padding: EdgeInsets.all(40),
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
                  'Iniciar sesión',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 45, 55, 72),
                  ),
                ),
                SizedBox(height: 24),

                
                buildTextField('Correo Electrónico', 'Ingrese el correo'),
                SizedBox(height: 16),
                buildTextField(
                  'Contraseña',
                  'Ingrese su Contraseña',
                  isPassword: true,
                ),
                
                SizedBox(height: 24),
                // Botón de registro
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colorScheme,
                      padding: EdgeInsets.symmetric(vertical: 22),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19),
                      ),
                    ),

                    onPressed: () {
                      final authState = ref.watch(authControllerProvider);

                      authState.when(
                        loading: () => CircularProgressIndicator(),
                        error: (error, stack) => Text('Error: $error'),
                        data: (isAuthenticated) {
                          if (!isAuthenticated) {
                            context.go('/register');
                          } else {
                            // Lógica cuando es true
                            context.go('/home');
                          }
                        },
                      );
                      

                    },
                    child: Text(
                      'Iniciar sesión',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'ó',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 139, 139, 139),
                  ),
                ),
                SizedBox(height: 16),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .center, // Esto centra los hijos del Row
                    mainAxisSize: MainAxisSize.min, // Hac
                    children: [
                      botonMetodos(
                        colorScheme: colorScheme,
                        icon: Icon(Icons.facebook_rounded),
                        im: SvgPicture.asset(''),
                        tipo: 1,
                      ),
                      SizedBox(width: 10),
                      botonMetodos(
                        colorScheme: colorScheme,
                        icon: Icon(Icons.apple_rounded),
                        im: SvgPicture.asset(''),
                        tipo: 1,
                      ),
                      SizedBox(width: 10),
                      botonMetodos(
                        colorScheme: colorScheme,
                        icon: Icon(Icons.abc),
                        im: SvgPicture.asset(
                          "assets/icons/google.svg",
                          width: 18,
                        ),
                        tipo: 2,
                      ),
                    ],
                  ),
                ),
                
                SizedBox(height: 16),
                // Enlace a inicio de sesión

                TextButton(
                  onPressed: () {
                    context.go('/register');
                  },
                  child: RichText(
                    text: TextSpan(
                      text: '¿No tienes una cuenta? ',
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromARGB(255, 160, 174, 192),
                      ),
                      children: [
                        TextSpan(
                          text: 'Registrarme',

                          style: TextStyle(
                            color: colorScheme,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

class botonMetodos extends StatelessWidget {
  const botonMetodos({
    super.key,
    required this.colorScheme,
    required this.icon,
    required this.im,
    required this.tipo,
  });

  final Color colorScheme;
  final Icon icon;
  final SvgPicture im;
  final int tipo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 227, 227, 227)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: IconButton(
        onPressed: () {},
        icon: tipo == 1 ? icon : im,
        color: colorScheme,
        padding: tipo == 1 ? EdgeInsets.all(15) : EdgeInsets.all(18),
      ),
    );
  }
}
