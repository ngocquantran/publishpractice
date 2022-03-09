function USD2VND(n) {
    return n * 23500;
}
let input;

function inputNumber(number, action) {
  while (isNaN(number)) {
    number = prompt(action);
    if (isNaN(number)) {
      console.log("Bạn cần nhập số");
    }
  }
  return number;
}

input = inputNumber(input, "Nhập số tiền (USD)");

let result = USD2VND(input);

console.log(`${input} USD = ${result} VND`);

