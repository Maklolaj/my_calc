import 'dart:math';

double calculate(List numbers, List operators, Map actions){
  double result=0.0;
  numbers = doAction(numbers, actions);


  for (int i = 0; i < operators.length; i++){

    switch(operators[i]) {
      case "+": {
        numbers[i+1] = numbers[i]+numbers[i+1];
        print(numbers);
        print(i);
      }
      break;

      case "-": {
        numbers[i+1] = numbers[i]-numbers[i+1];
      }
      break;

      case "*": {
        numbers[i+1] = numbers[i]*numbers[i+1];
      }
      break;

      case ":": {
        numbers[i+1] = numbers[i]/numbers[i+1];
      }
      break;

      case "^": {
        numbers[i+1] = pow(numbers[i],numbers[i+1]);
      }
      break;

      default: { print("Invalid choice"); }
      break;
    }
    result = numbers[numbers.length-1];
  }
  return result;
}

List doAction(List numbers, Map actions){

  actions.entries.forEach((e) {

    switch(e.key) {
      case "Sin": {
        numbers[e.value-1] = sin(numbers[e.value-1]);
      }
      break;

      case "Cos": {
        numbers[e.value-1] = cos(numbers[e.value-1]);
      }
      break;

      case "Tan": {
        numbers[e.value-1] = tan(numbers[e.value-1]);
      }
      break;

      default: { print("Invalid choice"); }
      break;

    }

  });
  return numbers;

}