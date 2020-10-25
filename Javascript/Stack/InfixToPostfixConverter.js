// Program to Convert an infix expression to its postfix form using Stack

let infixExp = "A+$B*C-D+E/F/(G+H)";
let stack = [];
let postFix = "";

stack.peek = () => {
  if (stack.length) return stack[stack.length - 1];
  return 0;
};

const isOperand = (x) => {
  return x.match(/[A-Z,a-z]/);
};

const value = {
  "^": 3,
  "$": 3,
  "*": 2,
  "/": 2,
  "+": 1,
  "-": 1,
  "(": 0,
};

const precedence = (a, b) => {
  if (b === 0) return true; // stack empty condition
  return value[a] > value[b];
};

for (const el of infixExp) {
  // console.log(stack);  // uncomment to see state of stack
  // console.log(postFix); // and postfix expression during intermediate stages
  if (isOperand(el)) postFix += el;
  else {
    if (precedence(el, stack.peek())) stack.push(el);
    else if (el === "(") stack.push(el);
    else if (el === ")") {
      while (stack.peek() !== "(") {
        postFix += stack.pop();
      }
      stack.pop();
    } else {
      while (!precedence(el, stack.peek())) {
        postFix += stack.pop();
      }
      stack.push(el);
    }
  }
}

while (stack.length) {
  postFix += stack.pop();
}

console.log(postFix);
