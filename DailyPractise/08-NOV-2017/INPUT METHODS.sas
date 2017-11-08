data raghav.ds20;
infile datalines dsd;
input sid name ~$ strwght endwght;
datalines;
1011,adam,134,156
1022,'sardar',123,145
1033,manmohan,146,126
1044,"hussen",157,186
1055,sebnam,,149
;
run;
data raghav.ds21;
infile datalines dsd;
input name $ score1-score3 team ~$ 28. div $;
datalines;
Joseph,11,32,76,"Red Racers, Washington",AAA
Mitchel,13,29,82,"Blue Bunnies, Richmond",AAA
Sue Ellen,14,27,74,"Green Gazelles, Atlanta",AA
;
Run;

data raghav.ds22;
infile datalines;
input eid name $13. +14 score;
datalines;
101 satyananda                 200
102 nityaram                   300
103 thulasiraghav              400
104 radharani                  500
105 soumyarai                  600
;
run;

data raghav.tolly;
infile datalines;
input  #1 id name $ 4-19;  
input #2 movie1 $ 1-13 movie2 $ 15-30 movie3 $ 31-44; 
input #3 credits1 credits2 credits3;
datalines;
10 samantha        
emayachesave  manam           janathagarage 
7 8 9
11 kajal 
temper        brundavanam     khaidino150   
6 7 8
13 rakulprethsingh 
druva         nannakuprematho sarainodu 
8 9 10
;
run; 

data raghav.tolly1;
infile datalines;
input #2 movie1 $ 1-13 movie2 $ 15-30 movie3 $ 31-44 
#3 credits1 credits2 credits3 #1 id name $ 4-19;
datalines;
10 samantha        
emayachesave  manam           janathagarage 
7 8 9
11 kajal 
temper        brundavanam     khaidino150   
6 7 8
13 rakulprethsingh 
druva         nannakuprematho sarainodu 
8 9 10
;
run;
data raghav.team3;
infile datalines;
input @1id 4. @6name $15. @25team $6. @32sweight 3. @36 eweight 3.;
Datalines; 
1023 David Shaw         red    189 165 
1049 Amelia Serrano     yellow 145 124 
1219 Alan Nance         red    210 192 
1246 Ravi Sinha         yellow 194 177 
1078 Ashley McKnight    red    127 118 
1221 Jim Brown          yellow 220 
; 
Run;
data raghav.team4;
infile datalines;
input id=4. name=$15. team=$6. strtwght=3. endwght=3.; 
Datalines; 
ID=1023 NAME=David Shaw         TEAM=red    strtwght=189 endwght=165 
ID=1049 NAME=Amelia Serrano     TEAM=yellow strtwght=145 endwght=124 
ID=1219 NAME=Alan Nance         TEAM=red    strtwght=210 endwght=192 
ID=1246 NAME=Ravi Sinha         TEAM=yellow strtwght=194 endwght=177 
ID=1078 NAME=Ashley McKnight    TEAM=red    strtwght=127 endwght=118 
;
Run;
data raghav.team5;
infile datalines;
input team $ 13-19 @;
if team="red";
input id 1-4 swt 20-23 ewt 24-27;
datalines; 
1023 David  red    189 165 
1049 Amelia yellow 145 124 
1219 Alan   red    210 192 
1246 Ravi   yellow 194 177 
1078 Ashley red    127 118 
1078 Ashley red    127 118 
1221 Jim    yellow 220   . 
; 
Run;
Data raghav.redteam; 
Infile datalines;
Input team $ 13-18 @; 
If team='red'; 
Input idno 1-4 strtwght 20-23 endwght 24-26; 
datalines; 
1023 David  red    189 165 
1049 Amelia yellow 145 124 
1219 Alan   red    210 192 
1246 Ravi   yellow 194 177 
1078 Ashley red    127 118 
1078 Ashley red    127 118 
1221 Jim    yellow 220   . 
; 
Run; 
 
data raghav.ds23;
infile datalines;
input id 1-3 @;
if id in(101,103,105);
input name $ 5-8 sal 9-13; 
Datalines;
101 abc 1000
102 asd 2000
103 dfg 3000
104 hjk 3400
105 xyz 5000
;
Run;


data raghav.temp;
infile datalines;
input city $ mtemp evetemp @@;
datalines;
hyd 27 17 mum 30 20 kalkata 29 19 bgl 20 15 knl 35 20
;
run;



