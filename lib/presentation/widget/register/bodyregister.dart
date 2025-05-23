import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:inventario_medizin/presentation/widget/register/build_textfield.dart';

Widget BodyRegister(BuildContext context, Color colorScheme) {
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
                  'Register with',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 45, 55, 72),
                  ),
                ),
                SizedBox(height: 24),

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
                        im: SvgPicture.asset("assets/icons/google.svg", width: 18,),
                        tipo: 2,
                      ),
                    ],
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

                SizedBox(height: 15),
                buildTextField(
                  'Nombre de la empresa',
                  'Ingrese el nombre de su empresa',
                ),
                SizedBox(height: 16),
                buildTextField('Correo Electrónico', 'Ingrese el correo'),
                SizedBox(height: 16),
                buildTextField(
                  'Contraseña',
                  'Ingrese su Contraseña',
                  isPassword: true,
                ),
                SizedBox(height: 16),
                Text(
                  'Al continuar, aceptas nuestros términos de servicio \ny Política de privacidad.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w500,
                  ),
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
                      context.go('/verificacion');
                    },
                    child: Text(
                      'Registrarme',
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
                  onPressed: () {
                    context.go('/iniciosesion');
                  },
                  child: RichText(
                    text: TextSpan(
                      text: '¿Ya tienes una cuenta? ',
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromARGB(255, 160, 174, 192),
                      ),
                      children: [
                        TextSpan(
                          text: 'Iniciar sesión',

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
        padding: tipo == 1 ? EdgeInsets.all(15): EdgeInsets.all(18),
      ),
    );
  }
}
