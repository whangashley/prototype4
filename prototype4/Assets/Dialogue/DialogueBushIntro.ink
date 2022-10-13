-> Begin

=== Begin
(Where could she be? I know I saw her run this direction...)
    + [Look through the bush]
        -> Look_through_bush
        
=== Look_through_bush ===
(Looks like she isn't here either.)
    + [Stop looking through the bush]
        -> Stop_looking_through_Bush
    + [Reflect on what happened]
        -> Reflect

=== Reflect ===
(I know she made a mistake in tonight's concert, but she didn't have to rush out of the venue like that...)
    + [Continue]
        -> Stop_looking_through_Bush

=== Stop_looking_through_Bush ===
(She couldn't have gone far. She's somewhere in this park. I just have to find her before our fans swarm us...)
    + [Continue]
        -> Defense_against_fans

=== Defense_against_fans ===
(I didn't even bring security with me. I guess I'll have to deal with them myself using...)
    + [Cringe]
        -> Fanservice
    + [Sigh]
        -> Fanservice
    + [Groan]
        -> Fanservice

=== Fanservice ===
(A photo-worthy pose or something...cute. Man, I hate fan service, but it'll distract a fan long enough to run away and find her.)
    + [Go find her]
        -> END