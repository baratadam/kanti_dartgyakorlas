void main() {
  print("Számok megfordítva: ${reverseInteger(725)}");
  print("Számok csökkenő sorrendbe: ${sortNumberDes(725)}");
  print("Duplimált számok: ${duplicates([1, 2, 4, 4, 3, 3, 1,5,3, "5"])}");
  print("Tanuló osztályzata: ${grade(100, 45)}");
  print("Összeg: ${gausSum(3)}");
}

reverseInteger(int number){
  var forditottszam = "";
  for(int i = 0; i < number.toString().length; i++){
    forditottszam += number.toString()[i];
  }
  return int.parse(forditottszam.split('').reversed.join(''));
}

sortNumberDes(int number) {
  var szam = number.toString().split('');
  szam.sort((a, b) => b.compareTo(a));
  return int.parse(szam.join());
}
duplicates(arr) {
  var duplikalt = [];
  for (var i = 0; i < arr.length; i++) {
    if (arr.indexOf(arr[i]) != i && !duplikalt.contains(arr[i])) {
      duplikalt.add(arr[i]);
    }
  }
  return duplikalt;
}
grade(total, points) {
  if (points >= total * 0.9) {
    return "A";
  } else if (points >= total * 0.75) {
    return "B";
  } else if (points >= total * 0.6) {
    return "C";
  } else if (points >= total * 0.45) {
    return "D";
  } else {
    return "F";
  }
}
gausSum(integer){
  var sum = 0;
  for(int i = 0; i <= integer; i++){
    sum += i;
  }
  return sum;
}