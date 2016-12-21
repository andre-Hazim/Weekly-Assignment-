--Weekly Assignment

--created by Andre hazim
--created on nov 16
--created for ICSO2
--this program displays math questions and lets you solve them


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
local backspace
local enter
local reset
local buttonLocationX = (50)
local buttonLocationY = (HEIGHT/2)
local entireNumber = ""
local randomNumber1 = math.random(1, 99)
local randomNumber2 = math.random(1, 99)
local operators = {"+", "-", "*", "/"}
local displayOperator = operators [ math.random(1,#operators)]
local answer
local promptUser
local promptUser2
local promptUser3
local temp
 

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
    backspace = Button("Project:backspace", vec2(WIDTH/2.7, HEIGHT/3.5))
    enter = Button("Project:enter", vec2(WIDTH/2.7, HEIGHT/6))
    reset = Button("Project:resetButton", vec2 (WIDTH/4.5, HEIGHT/6))
    
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
    backspace:touched(touch)
    enter:touched(touch)
    reset:touched(touch)
    -- moveing the numbers 
    if (digit0.selected == true)then
        entireNumber=entireNumber.. 0
    end
    if (digit1.selected == true)then
        entireNumber=entireNumber.. 1
    end
    if (digit2.selected == true)then
        entireNumber=entireNumber.. 2
    end
    if (digit3.selected == true)then
        entireNumber=entireNumber.. 3
    end
    if (digit4.selected == true)then
        entireNumber=entireNumber.. 4
    end
    if (digit5.selected == true)then
        entireNumber=entireNumber.. 5
    end
    if (digit6.selected == true)then
        entireNumber=entireNumber.. 6
    end
    if (digit7.selected == true)then
        entireNumber=entireNumber.. 7
    end
    if (digit8.selected == true)then
        entireNumber=entireNumber.. 8
    end
    if (digit9.selected == true)then
        entireNumber=entireNumber.. 9
    end
    if (backspace.selected == true)then
        entireNumber = string.sub(entireNumber,0,string.len(entireNumber) - 1)
    end
    if(enter.selected ==true  )then
        if(displayOperator == "+")then
            answer = tonumber(randomNumber1 ) +tonumber(randomNumber2)  
            
        elseif(displayOperator == "-")then
            if (randomNumber1<randomNumber2)then
                
                answer = tonumber(randomNumber2) - tonumber(randomNumber1)
            else 
                answer= tonumber (randomNumber1 ) - tonumber(randomNumber2)
                
            end
            
        end
            
        elseif(displayOperator == "*")then
            answer= tonumber (randomNumber1 ) * tonumber(randomNumber2)
             
            
        elseif(displayOperator == "/")then
        randomNumber1 = randomNumber1 * randomNumber2
        answer = tonumber (randomNumber1)/ tonumber (randomNumber2)
        answer = math.floor (answer)
        
        
        
        end

    
    if(reset.selected == true)then 
        restart()
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
    backspace:draw()
    enter:draw()
    reset:draw()
    
    if (displayOperator == '-')then
        if(randomNumber1<randomNumber2)then
           promptUser = "can you solve ".. randomNumber2 ..  displayOperator .. randomNumber1
            else
            promptUser = "can you solve ".. randomNumber1 ..  displayOperator .. randomNumber2
            
        end
            
    else
        promptUser = "can you solve ".. randomNumber1 ..  displayOperator .. randomNumber2
    
    end
    

    
    
    text(promptUser, WIDTH/3, HEIGHT/1.8)
    

    -- displays numbers 
    if(digit0.selected == true or buttonClicked ==true )then
        
        text(""..entireNumber, buttonLocationX, HEIGHT/20)
    end
    if (digit1.selected == true)then
        text(""..entireNumber, buttonLocationX,HEIGHT/20)
    end
    if (digit2.selected == true)then
        text(""..entireNumber,buttonLocationX,HEIGHT/20 )
    end
    if (digit3.selected == true)then
        text(""..entireNumber,buttonLocationX,HEIGHT/20 )
    end
    if (digit4.selected == true)then
        text(""..entireNumber,buttonLocationX,HEIGHT/20 )
    end
    if (digit5.selected == true)then
        text(""..entireNumber,buttonLocationX,HEIGHT/20 )
    end
    if (digit6.selected == true)then
        text(""..entireNumber, buttonLocationX,HEIGHT/20)
    end
    if (digit7.selected == true)then
        text(""..entireNumber, buttonLocationX,HEIGHT/20)
    end
    if (digit8.selected == true)then
        text(""..entireNumber,buttonLocationX,HEIGHT/20 )
    end
    if (digit9.selected == true)then
        text(""..entireNumber,buttonLocationX,HEIGHT/20 )
    end
    if(enter.selected == true) then
        if(answer == tonumber (entireNumber) )then
            promptUser2 = "correct"
        else
            promptUser2 ='wrong'
        
        end
      text(promptUser2, WIDTH/3, HEIGHT/1.5)  
      
          
    end 
  
end


