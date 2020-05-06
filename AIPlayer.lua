--[[
    This is CS50 2019.
    Games Track
    Pong

    -- KeyboardPlayer Class --

    Author: Paul Holder
    pholder+cs50@gmail.com

    Based on the KeyboardPlayer this is a rudamentary AI that just
    tracks the ball location.
]]

AIPlayer = Class{}

-- Supply the paddle so we can know where it is and supply the ball so we can track it
-- Supply the speed to move the paddle, and two booleans so we can optionally not track
-- the ball after we return it (when it is moving away from the paddle)
function AIPlayer:init(paddleToMove, ballToTrack, paddleSpeed,
                       doNotUpdateWhenBallMovesLeft, doNotUpdateWhenBallMovesRight)
    self.paddleToMove = paddleToMove
    self.ballToTrack  = ballToTrack
    self.paddleSpeed  = paddleSpeed
    self.doNotUpdateWhenBallMovesLeft  = doNotUpdateWhenBallMovesLeft
    self.doNotUpdateWhenBallMovesRight = doNotUpdateWhenBallMovesRight
    -- The margin allows the paddle not to vibrate so much (basically debouncing)
    self.margin = 5
end

function AIPlayer:getDeltaY()
    -- Check if we should not move the paddle because the ball is moving in a direction
    -- (left or right) that we're not tracking
    if self.doNotUpdateWhenBallMovesLeft and  (self.ballToTrack.dx <= 0) then
        return 0
    end
    if self.doNotUpdateWhenBallMovesRight and (self.ballToTrack.dx >= 0) then
        return 0
    end

    -- Move the paddle up or down to track the ball
    local paddleMidPoint = self.paddleToMove.y + self.paddleToMove.height / 2
    if paddleMidPoint - self.margin > self.ballToTrack.y then
        return -self.paddleSpeed
    elseif paddleMidPoint + self.margin < self.ballToTrack.y then
        return self.paddleSpeed
    else
        return 0
    end
end
