const times = (num, fun) => { //TODO: both styles work here
  for (let i = 0; i < num; i++) {
    fun; // call is made "function-style"
  }
};

const cat = {
  age: 5,

  ageOneYear: function() { //TODO: this changed to big arrow doesn't work
    this.age += 1;
  }
};

cat.ageOneYear(); // works

// console.log(times(10, cat.ageOneYear));
// console.log(cat.age);

// console.log(cat.age);
//times(10, () => cat.ageOneYear()); //TODO: both styles work here
times(10, cat.ageOneYear.apply(cat));
// console.log(cat.age);


class SumCalculator {
  constructor () {
  // scope 0
  this.sum = 0;
}

  addNumbers (numbers) {
    // scope 1
    console.log(this.sum, "before");
    numbers.forEach( (number) => {
      console.log(this.sum, "inside");
      // scope 2
      this.sum += number; // noooo!
    });

    return this.sum;
    }
}
const s = new SumCalculator ();

// console.log(s.addNumbers([1, 2, 3]));

let returnName = (variable) => {
  console.log(variable);
  console.log(this.prototype.constructor);
  this.name;
};
const a = returnName.call({name: 'Dale Cooper'});
console.log(a);


function Human(name, age) {
  this.name = name; // TODO: this === Human function object
  this.age = age;
}

Human.prototype.birthday = function() {
  this.age++; //TODO: this === Human protoype function object birthday
}

Human.prototype.sayHello = function() {  //TODO: this === sayHello
  console.log(`Greetings!  My name is ${this.name}.  I am ${this.age} years old.`);
}

Human.funFact = function() { //TODO: this === funfact or actually Human
  console.log("Humans are full of fun facts!");
}

const thomas = new Human("Thomas", 30);
thomas.birthday();
thomas.sayHello();
Human.funFact();
