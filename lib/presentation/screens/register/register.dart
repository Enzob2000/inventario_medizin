import 'package:flutter/material.dart';
import 'package:inventario_medizin/presentation/widget/register/appbar.dart';

void main() {
  runApp(RegisterScreen());
}

class RegisterScreen extends StatelessWidget {
  static const String name = 'RegisterScreen';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medizin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Register(),
    );
  }
}

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0), // define la altura deseada
        child: AppBar_Screen(),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2 - 25,
                color: Color.fromARGB(255, 0, 87, 255),
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
                padding: EdgeInsets.all(50),
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
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 227, 227, 227),
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.facebook_rounded, size: 25),
                              color: Color.fromARGB(255, 0, 87, 255),
                              padding: EdgeInsets.all(15),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 227, 227, 227),
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.apple_rounded, size: 25),
                              color: Color.fromARGB(255, 0, 87, 255),
                              padding: EdgeInsets.all(15),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 227, 227, 227),
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/icons/google.png',
                                width: 16,
                                height: 16,
                              ),
                              color: Color.fromARGB(255, 0, 87, 255),
                              padding: EdgeInsets.all(19),
                            ),
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
                    _buildTextField(
                      'Nombre de la empresa',
                      'Ingrese el nombre de su empresa',
                    ),
                    SizedBox(height: 16),
                    _buildTextField('Correo Electrónico', 'Ingrese el correo'),
                    SizedBox(height: 16),
                    _buildTextField(
                      'Contraseña',
                      'Ingrese su Contraseña',
                      isPassword: true,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Al continuar, aceptas nuestros términos de servicio \ny Público de privacidad.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 24),
                    // Botón de registro
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 0, 87, 255),
                          padding: EdgeInsets.symmetric(vertical: 22),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19),
                          ),
                        ),
                        
                        onPressed: () {},
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
                      onPressed: () {},
                      child: RichText(
                        text: const TextSpan(
                          text: '¿Ya tienes una cuenta? ',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color.fromARGB(255, 160, 174, 192),
                          ),
                          children: [
                            TextSpan(
                              text: 'Iniciar sesión',

                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 87, 255),
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
      ),
    );
  }

  Widget _buildTextField(String label, String hint, {bool isPassword = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color.fromARGB(255, 32, 39, 51),
          ),
        ),
        SizedBox(height: 4),
        TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 160, 174, 192),
              fontWeight: FontWeight.w400, // Mismo color que el borde
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 227, 227, 227),
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              // Borde cuando no está enfocado
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 227, 227, 227),
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              // Borde cuando está enfocado
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 227, 227, 227),
                width: 1.0,
              ),
            ),
            errorBorder: OutlineInputBorder(
              // Borde cuando hay error
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.red, // Puedes cambiarlo si lo necesitas
                width: 1.0,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              // Borde con error y enfocado
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Colors.red, // Puedes cambiarlo si lo necesitas
                width: 1.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

