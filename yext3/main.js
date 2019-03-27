/**
 * Implement a page that shows a number of squares based on an input
 * number of squares on a page
 *
 * This Page will:
 * - Have an input that lets a user input the initial desired number of squares
   - Have an Add button that increases the number of squares by 1
   - Have a Subtract button that decreases the number of squares by 1
   - Automatically updates the input with the number of squares
   - Only allows a max of 20 squares & a min of 0 squares and shows the user an error message if they go beyond that limit
 *
 */

let count = 0;

function squareFunction(){
	let value = document.getElementsByClassName("js-number")[0].value;
	let value_int = parseInt(value);
	count += value_int;
	debugger;
}

var array1 = ['a', 'b', 'c'];

array1.forEach(function(element) {
  console.log(element);
});
