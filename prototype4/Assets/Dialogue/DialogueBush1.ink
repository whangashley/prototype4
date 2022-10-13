-> Begin

=== Begin
(A human-sized bush.)
    + [Look through the bush]
        -> Look_through_bush1
    + [Say something]
        -> Say_something

=== Say_something ===
"It's me. Are you there? In...a bush?"
    + [Say something again]
        -> Say_something_again
    + [Look through the bush]
        -> Look_through_bush1

=== Say_something_again ===
"If you're there, you should come out."
    + [Remember manners]
        -> Manners
    + [Look through the bush]
        -> Look_through_bush1

=== Manners ===
"Uh. Please..."
    + [Continue]
        -> Give_up

=== Give_up ===
(This isn't working. I should just look.)
    + [Look through the bush]
        -> Look_through_bush1

=== Look_through_bush1 ===
(...Damn. Nothing.)
    + [Leave]
        -> END