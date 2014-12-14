fs = require 'fs'
fileToRead = process.argv[2]

buffData = fs.readFileSync(fileToRead)
strData = buffData.toString()

newLines = strData.split('\n')

console.log newLines.length - 1
