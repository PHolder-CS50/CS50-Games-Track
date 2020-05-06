--[[
    This is CS50 2019.
    Games Track
    Pong

    -- KeyboardPlayer Class --

    Author: Paul Holder
    pholder+cs50@gmail.com

    Extract the keyboard playing functions from the supplied code so
    that eventually we can replace them with an AI.
]]

KeyboardPlayer = Class{}

-- Supply the keyname for up and down and the speed at which the
-- paddle will move up or down
function KeyboardPlayer:init(keyForMoveUp, keyForMoveDown, paddleSpeed)
    self.keyForMoveUp   = keyForMoveUp
    self.keyForMoveDown = keyForMoveDown
    self.paddleSpeed    = paddleSpeed
end

-- Return the value for delta Y based on user input at the keyboard
function KeyboardPlayer:getDeltaY()
    if love.keyboard.isDown(self.keyForMoveUp) then
        return -self.paddleSpeed
    elseif love.keyboard.isDown(self.keyForMoveDown) then
        return self.paddleSpeed
    else
        return 0
    end
end
