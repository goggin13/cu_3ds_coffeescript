
/* Functions */
square = function(x) {
    return x * x;
};

cube = function (x) {
    return square(x) * x;
};

say_hello = function(name) { 
    if (name == null) {
        name = "matt";
    }
    alert("hello " + name + "!");
};



/* Objects and Arrays */
var bitlist, kids, simple;

bitlist = [1, 0, 1, 0, 0, 1, 1, 1, 0];

kids = {
  brother: {
    name: "Max",
    age: 11
  },
  sister: {
    name: "Ida",
    age: 9
  }
};

simple = {
  hello: "hello",
  world: "world"
};



/* If, Else, Unless, and Conditional Assignment */
var date, mood, plans;

if (happy && knowsIt) {
  clapsHands();
  chaChaCha();
} else {
  showIt();
}

plans = function(day) {
  if (day !== "Saturday") {
    return "study";
  } else {
    return "party";
  }
};

if (singing) {
  mood = greatlyImproved;
}

date = friday ? sue : jill;

if (!raining) {
  dance_outside();
}



/* Chained Comparisons */
var cholesterol, healthy;

cholesterol = 127;
healthy = (60 < cholesterol && cholesterol < 200);



/* Existential Operator */
var footprints;

if (typeof options !== "undefined" && options !== null) {
  process(options);
}

footprints = typeof yeti !== "undefined" && yeti !== null ? yeti : "bear";

zip = typeof lottery.drawWinner === "function" ? (_ref = lottery.drawWinner().address) != null ? _ref.zipcode : void 0 : void 0;



/* Operators */
var volume, winner;

if (ignition === true) {
  launch();
}

if (band !== SpinalTap) {
  volume = 10;
}

if (answer !== false) {
  letTheWildRumpusBegin();
}

if (car.speed < limit) {
  accelerate();
}

if (pick === 47 || pick === 92 || pick === 13) {
  winner = true;
}


















var process_stuff, retrieve_boring_stuff, retrieve_cool_stuff;

retrieve_cool_stuff = function() {
  var message;
  message = "look at this cool stuff!";
  return $.getJSON("/echo/json/", function(response) {
    return process_stuff(response, message);
  });
};

retrieve_boring_stuff = function() {
  var message;
  message = "look at this boring stuff!";
  return $.getJSON("/echo/json/", function(response) {
    return process_stuff(response, message);
  });
};

process_stuff = function(r, message) {
  return $('#messages').append(message).append("<br/>");
};



/* Lexical Scoping and Variable Safety */
var changeNumbers, inner, outer;

outer = 1;

changeNumbers = function() {
  var inner;
  inner = -1;
  return outer = 10;
};

inner = changeNumbers();




/* Function Inheritance */
var Account;

Account = function(customer, cart) {
  var me = this;
  this.customer = customer;
  this.cart = cart;
  return $('.shopping_cart').bind('click', function(event) {
    return me.customer.purchase(me.cart);
  });
};








