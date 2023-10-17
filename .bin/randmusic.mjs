#!/usr/bin/env node
// plays some random selected music

const fs = require('fs')
const path = require('path')
const util = require('util')
const exec = util.promisify(require('child_process').exec)

function start () {
  const args = process.argv.slice(2)
  if (args.length === 0 || args.length > 3) {
    console.log('usage: randmusic <directory> <max-files:25> <max-depth:4>')
    process.exit(1)
  }
  const targetDir = args[0]
  const maxFiles = args[1] || 25
  const maxDepth = args[2] || 4
  const playlist = makeTempFile(`ram-${Date.now()}.m3u8`)
  const files = shuffle(find(targetDir, maxDepth))
    .slice(0, maxFiles)
    .filter((file) => !path.basename(file).startsWith('.'))
    .map((file) => {
      let filePath = file
      if (process.platform !== 'win32')
        filePath = `file:///${encodeURIComponent(file)}`
      return `#EXTINF:-1,${path.basename(file)}\n${filePath}`
    }).join('\n')
  fs.writeFileSync(playlist, `#EXTM3U\n${files}`)
  exec(`open ${playlist}`)  // mac
  .catch((err) => exec(`start ${playlist}`)) // win
  .catch((err) => {
    console.error(`error: ${err.message}`)
    process.exit(1)
  })
}

function find (dir, maxDepth) {
  function findRecursive (filePath, depth) {
    if (depth === 0) return []
    const dir = fs.readdirSync(filePath).map((file) => path.resolve(filePath, file))
    const audioFiles = dir.filter((file) => file.match(/.*[^.]+\.(flac|mp3|ogg|wav|aiff?)$/i))
    const directories = dir.filter((file) => fs.lstatSync(file).isDirectory())
    const result = directories
      .map((dir) => findRecursive(dir, depth - 1))
      .reduce((acc, all) => acc.concat(all), audioFiles)
    return result
  }
  return findRecursive(dir, maxDepth)
}

function shuffle (array) {
  for (let i = array.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1))
    const tmp = array[i]
    array[i] = array[j]
    array[j] = tmp
  }
  return array
}

function makeTempFile (fileName) {
  const tempDir = process.env.TMPDIR || process.env.TMP
  const filePath = path.join(tempDir, fileName)
  const tempFile = fs.writeFileSync(filePath, '')
  return filePath
}

try {
  start()
} catch (err) {
  console.error(`error: ${err.message}`)
  process.exit(1)
}
