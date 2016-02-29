function Blame() 

  blame_text = {
 		"Lake is late becuase he is killing Polar Bears", 
 		"I blame Lake for global warming",
 		"World hunger? Lake's fault",
 		"I blame Lake for the fact that I am out of toilet paper",
 		"I blame Lake for my car being out of gas",
 		"Lake messed up my keybinds",
 		"Lake lost my car keys",
 		"I blame Lake for the salting of Carthage",
 		"Lake made me roll a gutter ball",
 		"Lake is responsible for all the bad in the world",
 		"Lake shot down Amelia Earhart",
 		"I blame Lake for the fact that I quit my new years resolution",
 		"Last year I gained weight, I feel that Lake was involved",
 		"Lake stole my tax refund",
 		"Lake kicked my dog",
 		"I saw Lake stealing candy from a baby",
 		"Lake destroyed the Stormwind park",
 		"Lake wants Archimonde to win",
 		"I blame Lake for my failures, even when he is not there",
 		"I used to be rich, till Lake stole it all",
 		"Lake knows how many licks it take to get to the center of a tootsie pop, but he won't tell",
 		"Lake ran up charges on my credit card",
 		"I bounced a check, lake was responsible",
 		"I blame lake for Justin Bieber",
 		"Lake is responsible for Janet Jackson's wardrobe malfunction",
 		"Legion is delayed because Lake broke it",
 		"I blame lake for cold weather in winter",
 		"I blame lake for hot weather in summer",
 		"Lake created the hole in the ozone layer",
 		"I blame lake for long dps queues",
 		"Lake is the reason we weren't world first mythic Archimonde",
 		"I don't like that my pets follow me in my garrison, I am certain Lake is responsible",
 		"My class was nerfed because of Lake",
 		"I blame Lake for the fall of Rome",
 		"I blame Lake for my bad grades",
 		"Someone has bad breath, Lake brush your teeth",
 		"I used to be good at thi s game, I blame Lake",
 		"Lake is the reason that my toilet seat was cold this morning",
 		"Lake stole my girlfriend",
 		"Lake stole my boyfriend",
 		"Lake stole my dog",
 		"Lake unhooked me frum fonicks",
 		"We didn't spread, I blame Lake",
 		"We didn't stack, I blame Lake",
 		"Lake gives Nuit Headaches",
 		"I stepped on a crack and broke my mother's back, she blames Lake",
 		"My phone battery died, I blame Lake",
 		"Ice cream hurts my teeth, I blame Lake",
 		"I blame Lake for getting a bad grade on the 4th grade history paper",
 		"Twice in my life I have been knocked out, both were Lake's fault",
 		"I blame Lake for NSYNC breaking up",
 		"I blame Lake for WoD being terrible",
 		"I blame Lake for the earth being round",
 		"I blame Lake for not getting a raise",
 		"I blame Lake for eating all my ice cream",
 		"I blame Lake for the fact that I was late to work today",
 		"I blame Lake for barrage pulls",
 		"I blame Lake for aspect of the pack",
 		"I blame Lake for not bringing me pots, food, and flasks even though we are not on the same server",
 		"I blame Lake for making this Add-on",
 		"I blame Lake for being named after a body of water",
 		"I blame Lake for Nuit being late",
 		"I blame Lake for choosing the wrong person to summon",
 		"I blame Lake for being technically melee",
 		"I blame Lake for ahller of flames",
 		"Lake has the hots for Nuit",
 		"I blame Lake for the 50 cm of snow",
 		"I blame Lake for spreading doomfire",
 		"Lake messed up the raid markers",
 		"Lake modified my RNG",
 		"Doesn't matter, blame Lake",
 		"Lake split up Brad Pit and Jennifer Aniston",
 		"WHO LET THE DOGS OUT!? Lake let the dogs out",
 		"Lake invented the Macarena",
 		"Kanye owes Lake $53 million",
 		"Lake held my hamster hostage for ransom",
 		"I blame Lake for the traffic on the 405 today",
 		"Lake ate all the purple skittles and now I only have yellow ones",
    "Lake gave me the flu",
    "I had to work overtime because of Lake",
    "I had to get glasses because of Lake",
    "Lake killed Myspace",
    "Lake poured coke on my keyboard",
    "Some nights I stay up, cashing in my bad luck, Some nights it's all Lake's fault",
    "Lake put sugar in the salt shaker",
    "Lake stole my bagel this morning",
    "Lake ate all the Scooby snacks"

	}

  -- counting number of items in array
  Count = 0
  for Index, Value in pairs( blame_text ) do
    Count = Count + 1
  end

  -- random selection between 0 and number of entries
	number = math.random(Count);

  -- checking for selected channel and sending text
  if blameLakeCurrentChannel == 2 then
    SendChatMessage(blame_text[number] ,"RAID");
  elseif blameLakeCurrentChannel == 1 then
    SendChatMessage(blame_text[number] ,"SAY");
  end
end

-- setting up slash commands and linking to Blame() function
SLASH_BLAMELAKE1, SLASH_BLAMELAKE2 = '/lake', '/blamelake'; -- 3.
function SlashCmdList.BLAMELAKE(msg, editbox) -- 4.
  Blame();
end

-- handles switching from /say to /raid chat channels
function ToggleChannel()
  print("changing channels");
  if blameLakeCurrentChannel == 1 then
  	print("changed to raid");
  	blameLakeCurrentChannel = 2;
  	BlameLakeCheckButton:SetText('Raid');
  elseif blameLakeCurrentChannel == 2 then
  	print("changed to say");
  	blameLakeCurrentChannel = 1;
  	BlameLakeCheckButton:SetText('Say');
  end
end

-- value 1 = /say, value 2 = /raid
blameLakeCurrentChannel = 1;