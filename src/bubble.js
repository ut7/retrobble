(function (exports) {

  var Bubble = function (position) {
    this.position = position;
  };

  Bubble.prototype.move = function () {
    this.position.line -= 1;
    this.position.column -= 1;
  };

  exports.Bubble = Bubble;
}(this));
