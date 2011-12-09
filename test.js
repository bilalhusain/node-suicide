(function() {
  setInterval(console.log, 2 * 1000, '.');
  setTimeout(require('./index').suicide, 5 * 1000);
}).call(this);
