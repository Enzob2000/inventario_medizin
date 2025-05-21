import "package:go_router/go_router.dart";
import "package:inventario_medizin/presentation/screens/home_screen.dart";


final appRouter=GoRouter(
  initialLocation: "/home",
  
  routes:[
  GoRoute(
    path:"/home" ,
    name: HomeScreen.name,
    builder: (context, state) => const HomeScreen(),
  
  )
  ] 




);