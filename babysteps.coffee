i = 2
total = 0

while i < process.argv.length
  total += Number process.argv[i]
  i++

console.log total
