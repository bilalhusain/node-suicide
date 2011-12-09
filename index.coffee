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

if not module.parent
	showHeartbeat()
	setTimeout suicide, 3 * 1000
