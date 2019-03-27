
const buttons = document.querySelectorAll("button")

const allDivs = document.getElementsByClassName("settingOne")
debugger;

var i;
for(i=0; i < allDivs.length; i++){
  let element = allDivs[i]
  debugger;
  let text = element.querySelector("h2")
  let btn = element.querySelector("button")
  btn.addEventListener('click', function(){
    text.classList.toggle('favoriteButton');
  })
}


//
//
// buttons.forEach(function(btn){
//   btn.addEventListener('click', function(){
//     a = document.getElementByClassName = "settingOne"
//       debugger;
//     a.classList.toggle('favoriteButton');
//   })
// });





function changeCss() {
        if (document.getElementByClassName == "settingOne") {
            document.getElementByClassName = "settingTwo";
        } else {
            document.getElementByClassName = "settingOne";
        }
}


function sortSelect(a) {
    var selElem = document.getElementById(a)
    var tmpAry = new Array();
    for (var i=0;i<selElem.options.length;i++) {
        tmpAry[i] = new Array();
        tmpAry[i][0] = selElem.options[i].text;
        tmpAry[i][1] = selElem.options[i].value;
    }
    tmpAry.sort();
    while (selElem.options.length > 0) {
        selElem.options[0] = null;
    }
    for (var i=0;i<tmpAry.length;i++) {
        var op = new Option(tmpAry[i][0], tmpAry[i][1]);
        selElem.options[i] = op;
    }
    return;
}

// document.getElementById("myBtn").addEventListener("click", displayDate);

function displayDate() {
  document.getElementById("demo").innerHTML = Date();
}
