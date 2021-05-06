class Racional{

  double add( double numberOne, double numberTwo){
    return numberOne + numberTwo;
  }
  double subtraction( double numberX, double numberY){
    return numberX - numberY;
  }
  double reverse( double number){
    return 1 / number;
  }
  double opposite( double number){
    return -1 * number;
  }

}

void main(){
  Racional racionales = new Racional();
  print(racionales.add(5, 5));
  print(racionales.subtraction(13, 12));
  print(racionales.reverse(5));
  print(racionales.opposite(5));
}
