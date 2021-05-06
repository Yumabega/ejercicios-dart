class Fecha{
  DateTime initDate = new DateTime.now();
  var currentDate;

  Fecha(){
    this.currentDate = this.initDate;
  }

  String getDate(){
    return this.currentDate.toString();
  }

  int getDay(){
    return this.currentDate.day;
  }

  int getMonth(){
    return this.currentDate.month;
  }

  int getYear(){
    return this.currentDate.year;
  }
}

void main(){
  Fecha fecha = new Fecha();
  print(fecha.getDate());
  print(fecha.getDay());
  print(fecha.getMonth());
  print(fecha.getYear());
}
