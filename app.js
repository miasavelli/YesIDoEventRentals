//let container = document.querySelector('#scene-container');

let tablecloths = document.querySelector('#table');

let dish = "images/Dishes/";
let dishImg = ["AntiqueRed.jpg", "BlueBritishColonial.jpg", "BluePlate.jpg", "BritishColonial.jpg", "BritishColonialBowl.jpg", "CasablancaBlackGold.jpg", "CasablancaSet.jpg", "ClearCloud.jpg", "Gold.jpg", "IridescentClear.jpg", "Pineapple.jpg", "SaladSoupTrestleAqua.jpg"];


// let t = "<div class=\"col-12 section-title text-center mb-5\"><div class=\"row mb-5\"><div class=\"col-12 section-title text-center mb-5\"><h2 class=\"d-block\">NEW NEW</h2><br></div></div> <!-- NEW--><div class=\"row\"></div>"
// let theEnd = "</div></div>";
function createDiv() {
      let allDivs;

      for (let i = 0; i < dishImg.length; i++) {
        let currentURL = dish + dishImg[i];

        // var d = document.getElementById('x');
        let thisDiv = "<div class=\"col-lg-4 mb-5 col-md-6\"><div class=\"wine_v_1 text-center pb-4\"><a href=\"\" class=\"thumbnail d-block mb-4\"><img src=\" " + currentURL + "\" alt=\"Image\" class=\"img-fluid\"></a><div><h3 class=\"heading mb-1\"><a href=\"#\">Payette Silver</a></h3><span class=\"price\">120 Round</span></div></div></div>";
        
        allDivs += thisDiv;
        
      //  .innerHTML += thisDiv;
    }    

    t += allDivs;
    t += theEnd;

    tablecloths.innerHTML = t;
}

createDiv();