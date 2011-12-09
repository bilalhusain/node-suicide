# listen to signal 9
process.on 'SIGKILL', () ->
	process.exit()

# alive and kicking
module.exports.showHeartbeat = showHeartbeat = () ->
	setInterval () ->
		console.log 'lub dub'
	, 60 * 1000 / 72

# don't want to live anymore
module.exports.suicide = suicide = () ->
	process.emit 'SIGKILL'

# may or may not result in death
module.exports.attempt = attempt = () ->
	process.emit 'SIGKILL' if (Math.random() < 0.5)

# jump off the cliff
module.exports.jump = jump = () ->
	console.log 'jumped off the cliff'
	process.emit 'SIGKILL'

if not module.parent
	showHeartbeat()
	setTimeout suicide, 3 * 1000
