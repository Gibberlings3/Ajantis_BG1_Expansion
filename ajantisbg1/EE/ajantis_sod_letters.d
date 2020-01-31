

/* SoD: letters from Ajantis */

/* 1# letter from Ajantis - still in BG city: C#AJBG11
~To Lady <CHARNAME> of Candlekeep, currently residing in Baldur's Gate City, Ducal Palace

Beloved <CHARNAME>,
now I am on the way to Waterdeep, to the home of my family as we have recently discussed. My heart is full of worry that my parents may not agree to our betrothal... Will I be able to help them see your charm, your imperturbable determination, your impressive talents? That you walk the path of good without the slightest doubt? I can only hope that they will see past the stigma of 'daughter of Bhaal' into my heart and the woman whom I see in you, beloved!

Loving you, revering you, and missing you, your Ajantis.~  */


/* 2# letter from Ajantis C#AJBG12
~Beloved <CHARNAME>, 
Everything has turned out differently than I had planned. After I was detained on the way to Waterdeep by my martial duties (there are still many municipalities along the coast which suffer from the remaining bandit rabble), a message from the Order calling me to my brethren overtook me before the gates of the city! You know why - Baldur's Gate must be full of refugees by now, driven away by Caelar and her men. I am left with no other option than to send one short letter to my parents, and then go directly south. I have not spoken yet with my parents about your heritage, beloved. Forgive me!
I am painstricken I left you when I did. What importance do my personal aims have in times like these? Now you are there and I am here, and I cannot come near you. Be Helms blessing with you!

Loving you, revering you, and missing you, your Ajantis.~ */


/* 3# letter from Ajantis C#AJBG13
~Beloved <CHARNAME>, 
What news reached us from Baldur's Gate. You are marching against this warlord, love. Yes, I guess it would have to be you, heroine of Baldur's Gate! And still no possibility for me to return to you, the streets are full with refugees, and I am ordered to help here - we Order brethren are needed here, and much so. I am scared about your well-being, love. I know you are able to handle danger, probably better than I can. And you are in good hands, with the Flaming Fist now back to representing a force of good, and also Waterhavian forces supposed to help in the upcoming battle. How I wished to be one of them! To be at your side, to fight at your side - to protect you, as good as I could.

The Order is in highest alert, we cannot let Caelar turn the land into a battle field! But even if we march, I will not be where you are, so many are the places where our help is needed. All I can do is wish you well, my love. May Helm protect you - may all the gods protect you, so I will have you back unharmed and in one piece!

Loving you, revering you, and missing you, your Ajantis.~ */

BEGIN C#AjSoD1
IF ~True()~ THEN letter
SAY @96
IF ~Global("C#AjantisSoDLetter","GLOBAL",3)~ THEN DO ~GiveItemCreate("C#AJBG12",Player1,1,0,0) EscapeArea()~ EXIT
IF ~Global("C#AjantisSoDLetter","GLOBAL",5)~ THEN DO ~GiveItemCreate("C#AJBG13",Player1,1,0,0) EscapeArea()~ EXIT
END

