fs = require 'fs'
rummi = require '../rummi'

shouldBeLegal = (filename) ->
	if !isLegal(readTilesFromFile(filename))
		console.error "Expected the board in #{filename} to be legal."

shouldBeIllegal = ->

LEGAL_FILES_COUNT = 4
ILLEGAL_FILES_COUNT = 0

for i in [1..LEGAL_FILES_COUNT]
	shouldBeLegal "legal#{i}.txt"

for i in [1..ILLEGAL_FILES_COUNT]
	shouldBeIllegal "illegal#{i}.txt"
