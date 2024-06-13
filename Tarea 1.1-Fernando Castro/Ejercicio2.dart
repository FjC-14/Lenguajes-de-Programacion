void main() {
  
  List<Tarea> tareas = [];

  void agregarTarea(Tarea tarea) {
    tareas.add(tarea);
    print('Tarea agregada');
  }

  void eliminarTarea(Tarea tarea) {
    tareas.remove(tarea);
    print('Tarea eliminada');
  }

  void marcarcomoCompletada(Tarea tarea) {
    int index = tareas.indexOf(tarea);
    if (index != -1) {
      tareas[index].marcarCompletada();
      print('Tarea marcada como completada');
    } else {
      print('Tarea no encontrada');
    }
  }
  
  Tarea tarea1= Tarea('Estudiar', 'Estudiar los temas para el examen'); 
  
  agregarTarea(tarea1);
  
  marcarcomoCompletada(tarea1); 
  
  
}


class Tarea {
  
  String titulo;
  String descripcion;
  bool estado;

  Tarea(this.titulo, this.descripcion, {this.estado = false});

  void marcarCompletada() {
    estado = true;
  }
 
}
