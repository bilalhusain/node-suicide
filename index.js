(function() {
  var showHeartbeat, suicide;
  process.on('SIGKILL', function() {
    return process.exit();
  });
  module.exports.showHeartbeat = showHeartbeat = function() {
    return setInterval(function() {
      return console.log('lub dub');
    }, 60 * 1000 / 72);
  };
  module.exports.suicide = suicide = function() {
    return process.emit('SIGKILL');
  };
  if (!module.parent) {
    showHeartbeat();
    setTimeout(suicide, 3 * 1000);
  }
}).call(this);
