//titleize
const titleize = (names, printCallback) => {
  let titleized = names.map( name => `Mx. ${name} Jingleheimer Schmidt`);
  return printCallback(titleized);
};

//TODO: Where else could we have defined and called printCallback?

// titleize(["Mary", "Brian", "Leo"], names => {
//   names.forEach(name => console.log(name));
// });

//elephants
class Elephants2 {
  constructor(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
  }

  trumpet () {
    console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
  }

  grow () {
    this.height += 12;
  }

  addTrick (trick) {
    this.tricks.push(trick);
  }

  play () {
    const randomTrickIndex = Math.floor(Math.random() * this.tricks.length);
    console.log(`${this.name} is ${this.tricks[randomTrickIndex]}`);
  }

}

function Elephant (name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function () {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = function () {
  this.height += 12;
};

Elephant.prototype.addTrick = function (trick) {
  this.tricks.push(trick);
};

Elephant.prototype.play = function () {
  const randomTrickIndex = Math.floor(Math.random() * this.tricks.length);
  console.log(randomTrickIndex);
  console.log(`${this.name} is ${this.tricks[randomTrickIndex]}`);
};

// const ellie = new Elephants2 ("Ellie", 100, ["eating", "swinging her trunk",
                                          // "napping"]);
// ellie.trumpet();
// ellie.grow();
// console.log(ellie.height, "height");
// ellie.addTrick("swimming");
// console.log(ellie.tricks, "tricks");
// ellie.play();
// ellie.play();
// ellie.play();
// ellie.play();
// ellie.play();
// ellie.play();


let ellie = new Elephants2("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephants2("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephants2("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephants2("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

const paradeHelper = (elephant) => {
  console.log(`${elephant.name} is trotting by!`);
};

// ((herdName, callback) => herdName.forEach( elephant => callback(elephant)))(herd, paradeHelper);

// (function (herdName, callback) {
//   herdName.forEach(function(elephant) {
//     callback(elephant);
//   });
// })(herd, paradeHelper);

function dinerBreakfast () {
  let orders = ["cheesy scrambled eggs"];
  console.log(`I'd like ${orders} please.`); //TODO how to move this line to function below while keeping it anonymouse?
  return function (item) { //return function, how to
    orders.push(item);
    console.log(`I'd like ${orders.join(" and ")} please.`);
  };
}

//TODO: How does JS read this? Expected solutions to run the way bfastOrder2
//is executed, but it doesn't repeat first console.log statement for each
//execution

// let bfastOrder = dinerBreakfast();
let bfastOrder2 = dinerBreakfast()("chocoloate chip pancakes");
// bfastOrder("grits");
