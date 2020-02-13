


%Section 76
nooffence(X,S):-S=76,act(X),(boundlaw(X);mistakenboundlaw(X)).  

%Section 77
nooffence(X,S):-S=77,judge(X),judicialact(X).

%Section 78
nooffence(X,S):-S=78,act(X),warrantedbycourtofjustice(X),believesjudgementjurisdiction(X).

%Section 79
nooffence(X,S):-S=79,justifiedbylaw(X),act(X).

%Section 80
nooffence(X,S):-S=80,act(X),(accident(X);misfortune(X)).

%Section 81
nooffence(X,Y,S):-S=81,act(X),nocriminalintent(X),topreventfurtherharm(X,Y),likelytocauseharm(X,Y).
	
betweenage(A,Y,B):-A<Y,Y=<C.

%Section 82
nooffence(X,A,S):-S=82,betweenage(0,A,7),act(X).

%Section 83
nooffence(X,A,S):-S=83,betweenage(7,A,12),act(X),immatureunderstanding(X).

%Section 84
nooffence(X,S):-S=84,unsoundmind(X),act(X).

%Section 85
nooffence(X,S):-S=85,act(X),(intoxwithoutknowledge(X);intoxagainstwill(X)).                                    

%Section 86
nooffence(X,S):-S=86,act(X),((knowledgeofaction(X),(intoxwithoutknowledge(X);intoxagainstwill(X)));\+knowledgeofaction(X)).

%Section 87
nooffence(X,Y,S):-S=87,act(X),nointent(X),\+likelytocausedeath(X,Y),\+likelytocauseharm(X,Y),consent(Y).

%Section 88
nooffence(X,Y,S):-S=88,act(X),deathnotintended(X,Y),consent(Y).

%Section 89
nooffence(X,Y,A,S):-S=89,act(X),(agebetween(0,A,12);unsoundmind(Y)).

%Section 90
noconsent(X):-S=90,(threatenedconsent(X);misinformedconsent(X);unsoundmind(X);child(X)).

%Section 92
nooffence(X,Y,S):-S=92,act(X),benifitintended(X,Y),\+attempttocausedeath(X,Y),\+likelytocausedeath(X,Y),\+attemptohurt(X,Y),\+likelytocauseharm(X,Y).

%Section 93
nooffence(X,Y,S):-S=93,communication(X,Y),benifitintended(X,Y).

%Section 94
nooffence(X,S):-S=94,act(X),\+murder(X),threatenedbydeath(X).

%Section 95
nooffence(X,S):-S=95,act(X),slightharmcaused(X).

%Section 96
nooffence(X,S):-S=96,act(X),defend(X,X).

%Section 97
nooffence(X,S):-S=97,act(X),(defend(X,X);defend(X,Y);defendproperty(X,X);defendproperty(X,Y)).

%Section 98
rightofprivatedefense(X,Y,S):- S=98,(unsoundmind(Y);immatureunderstanding(Y);intox(Y)).

%Section 99
norightofprivatedefense(X,Y,S):- S=99,((publicservant(Y),\+likelytocauseharm(Y,X));(directedbypublicservant(Y),\+likelytocauseharm(Y,X))).

%Section 100
rightofprivatedefense(X,Y,S):- S=100,act(Y),(intenttorape(Y);intenttomurder(Y);unnaturallust(Y);likelytocauseharm(Y);confiningaction(Y);acidattack(Y);kidnap(Y)).

%Section 101
rightofprivatedefensebutnotmurder(X,Y,S):- S=101,act(Y),\+(intenttorape(Y);intenttomurder(Y);unnaturallust(Y);likelytocauseharm(Y);confiningaction(Y);acidattack(Y);kidnap(Y)).

%Section 102
rightofprivatedefense(X,Y,S):-S=102, perceivedanger(X,Y).

%Section 103
rightofprivatedefense(X,Y,S):-S=103;act(Y),(robbery(Y,X);housebreak(Y,X);arson(Y,X)).

%Section 104
rightofprivatedefensebutnotmurder(X,Y,S):-S=104,act(Y),\+(robbery(Y,X);housebreak(Y,X);arson(Y,X)).

%Section 105
rightofprivatedefense(X,Y,S):-S=105,perceivedangertoproperty(X,Y).

%Section 106
rightofprivatedefense(X,Y,S):-S=106,act(Y),act(X),endanger(Y,X),endangerothers(X).

%Section 107
abetment(X,Y,S):-S=107,act(Y),(instigates(X,Y);conspirators(X,Y)).

%Section 108
abettor(X,Y,S):-S=108,act(Y),instigates(X,Y).

%Section 109
ispunished(X,Y,S):-S=109,act(Y),abettor(X,Y,108),ispunished(Y).

%Section 110
ispunished(X,Y,S):-S=110,act(Y),abettor(X,Y,108),sameactresult(X,Y).

%Section 111
ispunished(X,Y,S):-S=111,act(Y),abettor(X,Y,108),differentactdone(X,Y).

%Section 112
ispunished(X,Y,S):-S=112,act(Y),abettor(X,Y,108),commitsanotherliableoffence(Y),knowledgeofliability(X).

%Section 113
ispunished(X,Y,S):-S=113,act(Y),abettor(X,Y,108),differenteffectcaused(Y).

%Section 114
ispunishedlikeoffender(X,Y,S):-S=114,act(Y),abettor(X,Y,108),presentduringoffence(X).

%Section 115
sentenceupto7years(X,Y,S):-S=115,abettor(X,Y,108),\+act(Y),\+harmdone(Y).

sentenceupto14years(X,Y,S):-S=115,abettor(X,Y,108),act(Y),harmdone(Y).

%Section 116     
onefourthsentenceofoffence(X,Y,S):-S=116,abettor(X,Y,108),\+act(Y),dutytopreventact(X).

halfsentenceofoffence(X,Y,S):-S=116,abettor(X,Y,108),\+act(Y),publicservant(X),dutytopreventact(X).

%Section 117

ispunished(X,S):-S=117,abetsmorethan10people(X).

%Section 118
sentenceupto7years(X,Y,S):-S=118,act(X),commitsoffence(Y),concealsandhelps(X,Y).

sentenceupto3years(X,Y,S):-S=118,act(X),\+commitsoffence(Y),concealsandhelps(X,Y).

%Section 119
onefourthsentenceofoffence(X,Y,S):-S=119,act(Y),\+commitsoffence(Y),concealsandhelps(X,Y),publicservant(X),dutytopreventact(X).

halfsentenceofoffence(X,Y,S):- S=119,act(Y),commitsoffence(Y),concealsandhelps(X,Y),publicservant(X),dutytopreventact(X).
  
sentenceupto10years(X,Y,S):-S=119,act(Y),causesdeath(Y),concealsandhelps(X,Y),publicservant(X),dutytopreventact(X).

%Section 120
onefourthofsentence(X,Y,S):-S=120,act(Y),commitsoffence(Y),concealsandhelps(X,Y).

oneeightofoffence(X,Y,S):-S=120,act(Y),\+commitsoffence(Y),concealsandhelps(X,Y).

%Section 121   
ispunished(X,S):-S=121,conspiresagainstgov(X).

%Section 122
sentenceupto10years(X,S):-S=122,collectsarms(X),conspiresagainstgov(X).

%Section 123
sentenceupto10years(X,Y,S):-S=123,conspiresagainstgov(Y),concealsandhelps(X,Y).

%Section 124
sentenceupto7years(X,S):-S=124,(assaultspresident(X);assaultsgovernor(X)).

sentenceupto3years(X,S):-S=124,dissaffectiontogov(X).

%Section 125
sentenceupto7years(X,S):-S=125,conspiresagainstasiaticallies(X).

%Section 126
sentenceupto7years(X,S):-S=126,(depradationagainstallies(X);conspiresdepradationagainstallies(X)).

%Section 127
sentenceupto7years(X,S):-S=127,(warcommissionproperty(X);depradationcomissionproperty(X)).

%Section 128
sentenceupto10years(X,Y,S):-S=128,(prisonerofstate(Y);prisonerofwar(Y)),publicservant(X),aidsescape(X,Y).

%Section 129
sentenceupto3years(X,S):-S=129,(prisonerofstate(Y);prisonerofwar(Y)),publicservant(X),negligintlyletsescape(X,Y).

%Section 130
sentenceupto10years(X,S):-S=130,aidsescape(X,Y);rescues(X,Y);harborsprisoner(X,Y),helpspreventcapture(X,Y).
   

   

   
   































