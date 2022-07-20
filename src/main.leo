// The 'fixedpointnumbers' main function.
function main() -> u32 {
    let c: u32 = 1;
    return c;
}

function add(a: u32, b: u32) -> u32 {
    let result: u32 = a + b;
    return result;
}

function multiply(a: u32, b: u32, s: u32) -> u32 {
    let result: u32 = a * b / s;
    return result;
}

function divide(a: u32, b: u32, s: u32) -> u32 {
    let result: u32 = s * a / b;
    return result;
}

@test
function test_add() {
    let a = 8u32;
    let res = add(8u32, 16u32);
    console.assert(res == 24u32);
}

@test
function test_multiply() {
    let res = multiply(2**5, 2**8, 16u32);
    console.assert(res == 2**9);
}

@test
function test_divide() {
    let res = divide(2**5, 2**1, 16u32);
    console.assert(res == 2**8);
}