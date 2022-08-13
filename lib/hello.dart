import 'dart:io';

import 'game.dart';

void main() {
  int a=0;
  var myList = <int>[];
  int d = 1;int c=1;
  var result = 0;
  stdout.write('Enter a maximum number to random: ');
  var input = stdin.readLineSync();
  var n = int.tryParse(input!);
  var game = Games(n!);
  print('╔═════════════════════════════════════════════════════════════════');
  print('║                     GUESS THE NUMBER             ');
  print('║ ─────────────────────────────────────────────────────────────────');
  while (d == 1) {
    stdout.write('║ please guess the number between 1 and $n: ');
    var input = stdin.readLineSync();
    var g = int.tryParse(input!);
    a++;
    if (g == null) {
      a--;
      continue;
    }
    result = game.doGuess(g);
    if (result == 3) {
      myList.add(a);
      a=0;
      while (d == 1) {
        stdout.write('Do you want to play again?(y/n): ');
        var input = stdin.readLineSync();
        var h=input!;
        if (h == "y" || h == "y") {
          stdout.write('Enter a maximum number to random: ');
          var p = stdin.readLineSync();
          var num = int.tryParse(p!);
          var game = Games(num!);
          print('╔═════════════════════════════════════════════════════════════════');
          print('║                     GUESS THE NUMBER             ');
          print('║ ─────────────────────────────────────────────────────────────────');
          while(c==1){
          stdout.write('║ please guess the number between 1 and $num: ');
          var i = stdin.readLineSync();
          var go = int.tryParse(i!);
          a++;
          if (go == null) {
            a--;
            continue;
          }
          result=game.doGuess(go);
          if(result==3){
            myList.add(a);
            a=0;
            break;
          }
          }


        } else if (h == "N" || h == "n") {
          print('you have played ${myList.length} games');
          for (var i = 0; i < myList.length; i++) {
            print('🚀 Game #${i+1}: ${myList[i]} guesses');
          }


          d=2;
          break;
        }

      }
    }
  }
}












