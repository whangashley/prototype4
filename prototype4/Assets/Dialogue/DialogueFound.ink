-> Main

=== Main
(Maybe I should look here--wait. Is that...)
    + [Say something]
        -> Say_something2
    + [Lift trash can lid]
        -> Lift_lid

=== Lift_lid ===
TRASH CAN (?): "NOOOOOOOOOOOOO!!!"
    + [???!!!]
        -> Surprise
    + [SCREAM BACK???]
        -> Scream
    + [COMMUNICATE WITH IT]
        -> Communicate

=== Communicate ===
"UH UM UH, HELLO?!"
    + [Calm down calm down calm down]
        -> Calm

=== Surprise ===
"GOD YOU SCARED ME."
    + [Calm down calm down calm down]
        -> Calm

=== Scream ===
"AAAHHHHH!"
    + [Calm down calm down calm down]
        -> Calm

=== Calm ===
"I--I mean. Uh. Ehem."
    + [Talk to it. Her. Yea]
        -> Say_something2

=== Say_something2 ===
"I was looking all over this park for you. Come on out, please."
    + [Continue]
        -> I_see_you

=== I_see_you ===
"I see you, you know. You aren't being really slick."
    + [Continue]
        -> Persuade

=== Persuade ===
(She isn't coming out. What should I do...?)
    + [Reason with her]
        -> Reason
    + [Comfort her]
        -> Comfort
    + [Make a joke]
        -> Joke

=== Reason ===
"You know our manager is going to come for our throats if you don't come out. Even if the concert is over, you still have fans to meet backstage..."
    + [Continue]
        -> Alpha_comfort

=== Comfort ===
"Every performer makes mistakes, but you have our group members and me to support you through everything. I promise you nobody even noticed it." 
    + [Continue]
        -> Alpha_comfort

=== Joke === 
"If you don't come out, I'm gonna look REAL DUMB talking to a trash can. I've talked to a lot of inanimate objects, thanks to you. But I did it because...I care."
    + [Continue]
        -> Alpha_comfort

=== Alpha_comfort ===
"Out of all of us, you work the hardest. Everyone knows that. Fans know that. There's no need to hide--you're a fantastic performer. Be proud of that. And whatever happens, we can get through together, ok?"
    + [Wait for her to speak]
        -> Wait

=== Wait ===
TRASH CAN (?): "..."
    + [Wait some more]
        -> Music_critic
    + [Be patient with her]
        -> Music_critic
    + [Give her time]
        -> Music_critic

=== Music_critic ===
TRASH CAN (?): "But...people think our music is...too different. Weird. I can't stop thinking it everytime we perform."
    + [Give her some advice]
        -> Advice
    + [Tell her that art is meant to challenge]
        -> Art
    + [Dunk on those critics]
        -> Dunk

=== Advice ===
"For every bad review, we have 100 good ones. Artists are constantly evolving. Music is vastly different."
    + [Continue]
        -> Advice2

=== Advice2 ===
"We can't please everyone--but who says we're trying to? All that matters is that we like what we make."
    + [Continue]
        -> Insecure

=== Art ===
"Remember when we were trainees, we hoped to bring something new and exciting to the industry? This is exactly that."
    + [Continue]
        -> Art2

=== Art2 ===
"Art is meant to challenge conventions. We take risks no other artist would dare. Give us some more credit."
    + [Continue]
        -> Insecure

=== Dunk ===
"Ugh, don't listen to those idiots! Let them say what they want. They aren't the ones that take risks--they have the advantage of safety." 
    + [Continue]
        -> Dunk2

=== Dunk2 ===
"We don't play it safe. That's why people love us. We need more of that."
    + [Continue]
        -> Insecure

=== Insecure ===
TRASH CAN: "I don't know. I just feel so...bad at this. Like every mistake is a sign I should just stop. I'm a Big Mistake made up of lots of Little Mistakes.
    + [Continue]
        -> Insecure2

=== Insecure2 ===
"And it's not like I'll be young forever...my appearance and voice will change. But even then, I won't be satisfied. It's not good enough. What's the point of trying if I'm no good?"
    + [Tell her she is good]
        -> Ult_comfort
    + [Tell her she shouldn't give up]
        -> Ult_comfort
    + [Tell her she is not a mistake]
        -> Ult_comfort

=== Ult_comfort ===
"Do you know how proud I am that I get to work with a talented, funny, awesome person? You bring people together. That's something special. I wish you could see yourself the way other people do."
    + [Continue]
        -> See_yourself

=== See_yourself ===
"So please be kinder to yourself. I don't appreciate it when people talk badly about my best friend."
    + [Continue]
        -> Wow

=== Wow ===
TRASH CAN: "...I think that's the nicest thing anyone's ever said to me."
    + [Deny this]
        -> Deny
    + [Accept this]
        -> Accept

== Deny ===
"You literally could not be more wrong. I've seen what your fans say. The chants...the posters...the memes. I could probably learn a thing or two..."
    + [Continue]
        -> Bday

=== Accept ===
"This is probably the nicest I've ever been to someone in my life. You're very welcome."
    + [Continue]
        -> Bday

=== Bday === 
TRASH CAN: "Not gonna lie, this is super out of character...but I fully support and embrace it. And it's not even, like, my birthday either!"
    + [Continue]
        -> Thanks

=== Thanks ===
TRASH CAN: "But seriously, thanks. I...I really needed that. I think I'm really lucky to have you."
    + [Tell her she IS lucky]
        -> Lucky
    + [Complain about finding her]
        -> Complain
    + [Stop the cheesiness] 
        -> Cheese
        
=== Lucky ===
"Yeah. You ARE lucky to have me. I had to fanservice my way through several fans--don't ask--and risked my life running away from our manager."
    + [Continue]
        -> A_sight_to_behold

=== Complain ===
"Do you know how many fans I had to fight to find you? Let's just say I won't be doing any fanservice for a REALLY LONG TIME..."
    + [Continue]
        -> A_sight_to_behold

=== Cheese ===
"Yeah, yeah. Kumbaya and junk. This feels gross...might be remnants of the fanservice I had to weaponize against our fans. Let's cut it out before I start feeling again."
    + [Continue]
        -> A_sight_to_behold

=== A_sight_to_behold ===
TRASH CAN: "WHAT?! And you're telling me I MISSED all of this? Wow...I should run away more often!"
    + [No]
        -> Come_out1
    + [Absolutely not]
        -> Come_out1
    + [Don't even think about it]
        -> Come_out1

=== Come_out1 ===
"If you do, I'm calling the police. I'll mobilize the fans. Don't try me."
    + [Ask her to come out]
        -> Come_out2

=== Come_out2 ===
"So...are you ready to come out now?"
    + [Continue]
        -> Hug

=== Hug ===
TRASH CAN: "Yeah! And when I do, I'm going to give you the biggest hug."
    + [Continue]
        -> Smelly

=== Smelly ===
"Respectfully, no. You probably STINK."
    + [Continue]
        -> Whatever

=== Whatever ===
"...Damn. The feelings are back. If you do, I guess I won't stop you."
    + [Continue]
        -> The_end

=== The_end ===
//comes out of trash can
THE END!!!
    + [Close] -> END





