import 'dart:math';
import 'Circulo.dart'; 

void main() {
  
  Circulo circulo = Circulo(5.0, 'rojo');

  print ('Radio del Circulo: ${circulo.radio}');
  print ('Radio del Circulo: ${circulo.color}');
  print('Área del círculo: ${circulo.calcularArea()}');
  print('Perímetro del círculo: ${circulo.calcularPerimetro()}');
}


class Circulo {
  
  double radio;
  String color;

  
  Circulo(this.radio, this.color);

 
  double calcularArea() {
    return pi * radio * radio;
  }

 
  double calcularPerimetro() {
    return 2 * pi * radio;
  }
}

