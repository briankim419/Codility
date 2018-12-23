function solution(A) {
    // write your code in JavaScript (Node.js 4.0.0)
    debugger;
    var agg = 0;

    for(var i=0; i<A.length; i++) {
        agg ^= A[i];
    }
    return agg;
}
let b = [9, 3, 9, 3, 9, 7, 9]
solution(b)
console.log("hello")
