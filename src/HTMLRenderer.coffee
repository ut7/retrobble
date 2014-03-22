rows = 20
columns = 16
ray = 20
$playfield = $ ".playfield"

delta = ray * (2 - Math.sqrt 3)

even = (n)->
  n %% 2 is 0

newBubble = (rowNumber, columnNumber)->
  column = columnNumber * 2 + (if even rowNumber then 0 else 1)
  verticalOffset = -delta * rowNumber
  horizontalOffset = if even rowNumber then 0 else ray
  "<div class='bubble' id='b-#{rowNumber}-#{column}' style='top: #{verticalOffset}px; left: #{horizontalOffset}px'></div>\n"

newRow = (rowNumber)->
  result = "<div class='row'>"
  bubbles = columns - (if even rowNumber then 0 else 1)
  result += newBubble(rowNumber, bubble) for bubble in [0...bubbles]
  result + "</div>"

$playfield.append newRow(rowNumber) for rowNumber in [0...rows]

$playfield.css
  height: "#{ray * (2 + (Math.sqrt 3) * (rows - 1))}px"
  width: "#{columns * 2 * ray}px"

$(".row").css
  height: "#{ray * 2}px"

$(".bubble").css
  width: "#{ray * 2}px"
  height: "#{ray * 2}px"
  background: "radial-gradient(circle #{ray}px, rgb(180, 180, 180) 0%, rgb(180, 180, 180) 90%, rgba(180, 180, 180, 0) 100%)"
