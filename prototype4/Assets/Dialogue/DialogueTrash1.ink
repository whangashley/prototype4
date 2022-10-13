-> Begin

=== Begin
(Maybe she's in here...)
    + [Say something]
        -> Say_something1
    + [Look in the trash can]
        -> Look_in_trash

=== Say_something1 ===
"Hey. Come out."
    + [Be polite]
        -> Polite
    + [Be urgent]
        -> Urgent
    + [Be funny]
        -> Funny

=== Polite ===
"...Please. It's just me, you know. We can go back together if you want, or we can sneak away from here. Whatever you want."
    + [Continue]
        -> Give_up1

=== Urgent ===
"Everyone's looking for you by now. I don't even want to THINK about what our manager is gonna say later..."
    + [Continue]
        -> Give_up1

=== Funny ===
"Don't get me wrong--I love talking to trash. It's why I wake up every morning. But you're not too bad either. Look at me, settling for second best."
    + [Continue]
        -> Give_up1

=== Give_up1 ===
(This isn't getting anywhere. I should check inside.)
    + [Check inside the trash can]
        -> Look_in_trash
        
=== Look_in_trash ===
(Oh boy. Here we go.)
    + [Peek inside]
        -> Nothing
    + [Dig girl DIG]
        -> Nothing
    + [Look inside like a normal person]
        -> Nothing

=== Nothing ===
(...Nothing's inside. I should hurry and look somewhere else.)
    + [Leave trash can]
        -> END








