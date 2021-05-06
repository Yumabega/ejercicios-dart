class BaseSquare {
  int lado1 = 2;
  int lado2 = 2;
  int lado3 = 2;
  int lado4 = 2;

  int perimetro(){
    return this.lado1 + this.lado2 + this.lado3 + this.lado4;
  }
}

class Square extends BaseSquare {

  void setSide(String nameSide, int valideSide) {
    if( nameSide == "lado1" ) this.lado1 = valideSide;
    if( nameSide == "lado2" ) this.lado2 = valideSide;
    if( nameSide == "lado3" ) this.lado3 = valideSide;
    if( nameSide == "lado4" ) this.lado4 = valideSide;
  }

}

class Triangulo extends Square {

  int perimetro(){
    return this.lado1 + this.lado2 + this.lado3;
  }

  void setSide(String nameSide, int valideSide) {
    if( nameSide != "lado4" ) {
      this.setSide(nameSide, valideSide);
    }
  }
}

void main(){
  Square squares = new Square();
  print(squares.lado1);
  print(squares.lado2);
  print(squares.lado3);
  print(squares.lado4);
  print(squares.perimetro());

  squares.setSide("lado1", 50);
  print(squares.perimetro());

  Triangulo triangulo = new Triangulo();
  print(triangulo.perimetro());

  triangulo.setSide("lado4", 50);
  print(triangulo.perimetro());
}
