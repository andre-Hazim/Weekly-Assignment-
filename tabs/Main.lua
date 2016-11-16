-- Setup


--local varibles 
local buttonClicked = false
local digit0 
local digit1
local digit2
local digit3
local digit4
local digit5
local digit6 
local digit7
local digit8 
local digit9
local number0 = 0
local number1 = 1
local number2 = 2
local number3 = 3
local number4 = 4
local number5 = 5
local number6 = 6
local number7 = 7
local number8 = 8
local number9 = 9
local buttonLocationX = (50)
local buttonLocationY = (HEIGHT/2)


-- Use this function to perform your initial setup
function setup()
    noFill()
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noSmooth()
    noStroke()
    pushStyle()
    
    digit0 = Button("Project:number0", vec2(WIDTH/6, HEIGHT/2))
    digit1 = Button("Project:number1", vec2(WIDTH/4, HEIGHT/2))
    digit2 = Button("Project:number2", vec2(WIDTH/3, HEIGHT/2))
    digit3 = Button("Project:number3", vec2(WIDTH/2.4, HEIGHT/2))
    digit4 = Button("Project:number4", vec2(WIDTH/6, HEIGHT/2.5))
    digit5 = Button("Project:number5", vec2(WIDTH/4, HEIGHT/2.5))
    digit6 = Button("Project:number6", vec2(WIDTH/3, HEIGHT/2.5))
    digit7 = Button("Project:number7", vec2(WIDTH/2.4, HEIGHT/2.5))
    digit8 = Button("Project:number8", vec2(WIDTH/6, HEIGHT/3.5))
    digit9 = Button("Project:number9", vec2(WIDTH/4, HEIGHT/3.5))

end

function touched(touch)
    
    buttonClicked = true
    digit0:touched(touch) 
    digit1:touched(touch)
    digit2:touched(touch)
    digit3:touched(touch)
    digit4:touched(touch)
    digit5:touched(touch)
    digit6:touched(touch)
    digit7:touched(touch)
    digit8:touched(touch)    
    digit9:touched(touch)
    
        if(buttonClicked ==true)then 
        buttonLocationX = buttonLocationX+5
    end
    
      

end

-- This function gets called once every frame
function draw()
    
    
    -- This sets a dark background color 
    background(255, 255, 255, 255)
    fontSize(50)
    fill(0, 0, 0, 255)
    textMode(CORNER)
    font("AmericanTypewriter-Bold")
    pushStyle()
    
    -- Do your drawing here
    digit0:draw()
    digit0:draw()
    digit1:draw()
    digit2:draw()
    digit3:draw()
    digit4:draw()
    digit5:draw()
    digit6:draw()
    digit7:draw()
    digit8:draw()
    digit9:draw()
    
    
    if(digit0.selected == true or buttonClicked == true )then
        text(""..number0, buttonLocationX, 50)
    end
    if (digit1.selected == true)then
        text(""..number1, buttonLocationX,50)
    end
    if (digit2.selected == true)then
        text(""..number2,buttonLocationX,50 )
    end
    if (digit3.selected == true)then
        text(""..number3,buttonLocationX,50 )
    end
    if (digit4.selected == true)then
        text(""..number4,buttonLocationX,50 )
    end
    if (digit5.selected == true)then
        text(""..number5,buttonLocationX,50 )
    end
    if (digit6.selected == true)then
        text(""..number6, buttonLocationX,50)
    end
    if (digit7.selected == true)then
        text(""..number7, buttonLocationX,50)
    end
    if (digit8.selected == true)then
        text(""..number8,buttonLocationX,50 )
    end
    if (digit9.selected == true)then
        text(""..number9,buttonLocationX,50 )
    end
   
end


