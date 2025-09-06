void main() {
    final ferrari = Auto(puertas: 2, color: 'Rojo');

    final bmw = Auto(puertas: 5, color: 'Blanco');

    
    print('Mi auto tiene ${ferrari.puertas} puertas y es de color ${ferrari.color}  ');
    print('Mi auto tiene ${bmw.puertas} puertas y es de color ${bmw.color}  ');
    ferrari.reversa();
}

class Auto {
  final int puertas;
  final String color;

  Auto({required this.puertas, required this.color}); // Constructor 

  void reversa(){
    print('El auto esta en reversa');
  } 
}