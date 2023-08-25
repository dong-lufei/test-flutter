let a
console.log("🚀 ~ file: test.js:2 ~ a", a)

const b = 2
console.log("🚀 ~ file: test.js:5 ~ b", b)
var c = "sdf"
console.log("🚀 ~ file: test.js:5 ~ c", c)

let arr = [1, 2, 3, 4]

arr.forEach(i => {
  if (i > 2) {
    return i
  }
})
