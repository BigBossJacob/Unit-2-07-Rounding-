

local myText = display.newText( "Pizza Cost Calculator", 160, -10, native.systemFont, 30 )
myText:setFillColor( 0/255, 255/255, 229/255 )

local myText = display.newText( "Enter Pizza Diameter Here:", 160, 350, native.systemFont, 18 )
myText:setFillColor( 0/255, 255/255, 229/255 )

display.setDefault( "background", 4/255, 44/255, 124/255 )

local image = display.newImageRect( "Assets/pizza1.png", 100, 100 )
image.x = 160
image.y = 120

local DiameterofPizzaTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 225, 40 )
DiameterofPizzaTextField.id = "Diameter textField"

local CostofPizzaTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 30 )
CostofPizzaTextField.id = "Cost textField"
CostofPizzaTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "Assets/enterButton.png", 260, 90 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"

local function calculateButtonTouch( event )
    -- this function calculates the cost of the pizza by inputing its diameter
 
    local DiameterofPizza
    local CostofPizza

    DiameterofPizza = DiameterofPizzaTextField.text
    CostofPizza = ((DiameterofPizza * 0.5) + 1 + 0.75) * 1.13
    -- print( CostofPizza )
    CostofPizzaTextField.text = "The Cost is " .. (math.floor(CostofPizza+0.5))
    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )