describe("A bubble", function () {
  it("moves upward", function () {
    var bubble = new Bubble({line: 16, column: 8}, Bubble.MOVING_TOWARD_LEFT);

    expect(bubble.position).toEqual({line: 16, column: 8});
    bubble.move()

    expect(bubble.position).toEqual({line: 15, column: 7});
  });
});
