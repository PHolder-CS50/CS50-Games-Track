# CS50-Games-Track

I decided to do the games track.  (Of course I reserve the right to do some of the other tracks later as an excercise.)

So if I had planned better, I would have had two subdirectories, one for Pong and one for Mario.  I did not plan for that, unfortunately.  So the Pong files are in the top level directory, and the mario files are in a mario subdirectory.

For the Pong problem, to implement the AI, I created two new classes, and then modified the main.lua to use them.  As the base code is not mine to share, I have decided to not upload the entire working code here, but I will upload main.lua so that I can show my changes as a delta.

For the Mario problem, the goal was to add a pyramid and a flagpole beside it.  When "mario" jumped into the pole, it would end the game with a message.  I also animated the flag for the heck of it.  In doing the flag animation, I found what I believe to be a bug in the supplied Animation class where the last frame of animation was being skipped.
