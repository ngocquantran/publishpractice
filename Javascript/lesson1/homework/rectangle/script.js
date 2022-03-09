function findArea(a, b) {
    return a * b;
}

let a;
let b;

function inputNumber(number,action) {
    while (isNaN(number)) {
        number = prompt(action);
        if (isNaN(number)) {
          console.log("Bạn cần nhập số");
        }
    }
    return number;
}

a = inputNumber(a, "Nhập kích thước cạnh thứ nhất");
console.log(`Cạnh 1: ${a}`);
b = inputNumber(b, "Nhập kích thước cạnh thứ hai");
console.log(`Cạnh 2: ${b}`);

let result = findArea(a, b);
console.log(`Diện tích hình chữ nhật: ${result}`);



