import 'dart:async';

class Reloj {
  final String initTime = "00:00:00";
  String currentTime = "";
  var _timer;

  Reloj(){
    this.currentTime = this.initTime;
  }

  String getTime(){
    return this.currentTime;
  }

  String padNumber(int number){
    return number.toString().padLeft(2, '0');
  }

  void init(){
    int seconds = 0;
    int minutes = 0;
    int hours = 0;

    const oneSec = const Duration(seconds: 1);
    this._timer = new Timer.periodic(oneSec, (Timer timer) {
      seconds++;
      if( seconds >= 60 ){
        seconds = 0;
        minutes++;
      }
      if( minutes >= 60 ){
        minutes = 0;
        hours++;
      }
      if( hours >= 24 ) hours = 0;
      this.currentTime = "${this.padNumber(hours)}:${this.padNumber(minutes)}:${this.padNumber(seconds)}";
      print(this.currentTime);
    });
  }
}

void main(){
  Reloj reloj = new Reloj();
  print(reloj.getTime());

  reloj.init();
}
