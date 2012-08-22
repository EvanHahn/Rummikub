require 'sugar'

class Tile
	constructor: (@number, @color) ->
		@isJoker = (@number is 0)

isLegal = (tiles) ->
	true

readTilesFromFile = (filename) ->
	fs = require 'fs'
	data = fs.readFileSync(filename).toString()
	tiles = []
	for line in data.lines()
		unless line.isBlank()
			words = line.words()
			number = words[0].toNumber()
			color = words[1]
			tiles.push new Tile(number, color)
	tiles
