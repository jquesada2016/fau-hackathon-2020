/*=======================================================
                    DOM Elements
=======================================================*/
const proximity = document.getElementById("proximity");
const recognize = document.getElementById("recognize");
const temp = document.getElementById("temp");
const humidity = document.getElementById("humidity");

const primitiveObjects = ["sphere", "cube", "cylinder", "cone", "pyramid"];
const direction = [
  "12 oclock",
  "1:30 oclock",
  "4:30 oclock",
  "6 oclock",
  "7:30 oclock",
  "9 oclock",
  "10:30 oclock",
  "12 oclock"
];

/*=======================================================
                    Event Listeners
=======================================================*/
proximity.addEventListener("click", () => {
  setInterval(() => {
    var directionIndex = Math.floor(Math.random() * direction.length);

    var distanceFeet = Math.floor(Math.random() * 10);
    var distanceInches = Math.floor(Math.random() * 12);

    speechSynthesis.speak(
      new SpeechSynthesisUtterance(
        distanceFeet +
          " feet " +
          distanceInches +
          " inches at " +
          direction[directionIndex]
      )
    );
  }, 3000);
});

recognize.addEventListener("click", () => {
  var i = Math.floor(Math.random() * primitiveObjects.length);

  speechSynthesis.speak(new SpeechSynthesisUtterance(primitiveObjects[i]));
});

temp.addEventListener("click", () => {
  speechSynthesis.speak(
    new SpeechSynthesisUtterance("The temperature is 74 degrees Fahrenheit")
  );
});

humidity.addEventListener("click", () => {
  speechSynthesis.speak(new SpeechSynthesisUtterance("The humidity is 30%"));
});
