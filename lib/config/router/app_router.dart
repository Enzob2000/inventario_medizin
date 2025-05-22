import "package:go_router/go_router.dart";
import "package:inventario_medizin/presentation/screens/home_screen.dart";
import "package:inventario_medizin/presentation/screens/register/register.dart";


final appRouter=GoRouter(
  initialLocation: "/register",
  
  routes:[
    GoRoute(
      path:"/home" ,
      name: HomeScreen.name,
      builder: (context, state) =>  HomeScreen(),
    ),
    GoRoute(
      path: "/register",
      name: RegisterScreen.name,
      builder: (context, state) => RegisterScreen(),
    ),
  ] 
);