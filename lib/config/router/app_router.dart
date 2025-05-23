import "package:go_router/go_router.dart";
import "package:inventario_medizin/presentation/screens/home/home_screen.dart";
import "package:inventario_medizin/presentation/screens/iniciosesion.dart/inicio_sesion_screen.dart";
import "package:inventario_medizin/presentation/screens/register/register_screen.dart";
import "package:inventario_medizin/presentation/screens/verificacioncorreo.dart/verificacion_correo_screen.dart";

final appRouter = GoRouter(
  initialLocation: "/iniciosesion",

  routes: [
    GoRoute(
      path: "/home",
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: "/register",
      name: RegisterScreen.name,
      builder: (context, state) => RegisterScreen(),
    ),
    GoRoute(
      path: "/verificacion",
      name: VerificacioncorreoScreen.name,
      builder: (context, state) => VerificacioncorreoScreen(),
    ),
    GoRoute(
      path: "/iniciosesion",
      name: InicioSesionScreen.name,
      builder: (context, state) => InicioSesionScreen(),
    ),
  ],
);
