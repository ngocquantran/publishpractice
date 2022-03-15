// let d = new Date();
// console.log(d.toDateString());
// console.log(d.toString());
// console.log(d.toUTCString());
// console.log(d.toISOString());

// // let d2 = new Date("2022-03-15");
// // console.log(d2);

// console.log(d.getTime());

function is_date(input) {
    let msec = Date.parse(input);
    return msec;
}

console.log(is_date("October 13, 2014 11:13:00"));
console.log(is_date(new Date(86400000)));
console.log(is_date(new Date(99, 5, 24, 11, 33, 30, 0)));
console.log(is_date([1, 2, 4, 0]));