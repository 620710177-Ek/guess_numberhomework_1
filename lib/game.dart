import 'dart:math';

class Games{
  int count=0;
  int ans=0;
  Games(int maxRandom){
    if(maxRandom>100){
      maxRandom=100;
    }
  var r=Random();
  ans=r.nextInt(maxRandom)+1;
}

int doGuess(int n){
    if(n>ans){
    count++;
    print('║ ➜ $n is TOO High! ▲');
    print('║─────────────────────────────────────────────────────────────────');
return 0;  }else if(n<ans){
    count++;
    print('║ ➜ $n is TOO LOW! ▼');
    print('║─────────────────────────────────────────────────────────────────');

  return 0;  }else{  count++;  print('║ ➜ $n is CORRECT ❤, total guesses: $count');
  print('║─────────────────────────────────────────────────────────────────');
  print('║                    THE END            ');
  print('╚══════════════════════════════════════════════════════════════════');
  return 3;
  }
}
int? doCunt(){
    return count;
}
}