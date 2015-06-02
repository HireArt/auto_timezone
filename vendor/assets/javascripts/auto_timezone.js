Date.prototype.getDSTTimezoneOffset = function() {
  var jan = new Date(this.getFullYear(), 0, 1);
  var jul = new Date(this.getFullYear(), 6, 1);
  return Math.max(jan.getTimezoneOffset(), jul.getTimezoneOffset());
}

document.cookie = "auto_timezone_offset=" + -60 * new Date().getDSTTimezoneOffset();
