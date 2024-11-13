## Introduction
This fork adds some scripts, summary data, and notes to Goodhue and Wagner's bestiary.  The additions were prepared for Fall 2024 Semantics Seminar at Cornell.

The additions are in the repository.  They can be rebuilt with `build.sh`.
```
source script/build.sh
```

## Counts
Counts of contour labels are in data/counts.txt.
```
 255 Yes/No Rise
 151 RFR
 108 Contradiction Contour
  88 Fall
  66 Polarity Focus
  32 Upstepped Fall
  29 Presumption Contour
  14 Other Fall
  11 NA
   2 Incredulity Contour
   1 Contour
```
## Interpretation of filenames
In the filename `contour_1072_7_3.wav`, 1072 is the speaker index, 7 is the sentence index, and 3 classifies the context as one with a partial answer pragmatics.
In general filenames have the structure `countour_<speaker>_<sentence>_<context type>`.  


## RFR tokens
`data/RFR.txt` is a list of rise fall rise tokens in this format. The third column has the host sentence for the contour, and the fourth column the context.  
```
contour_1072_7_3.wav	RFR	You know Manuel	The concert tonight is all sold out and I didn't get a ticket yet! I wish I knew someone who worked there who could get me in. 
contour_1072_4_3.wav	RFR	You eat cheese	We're going to a Swiss restaurant, and I'm worried that there won't be much that I'd actually want to eat.
contour_1072_1_3.wav	RFR	You like John	I don't feel like going to this party tonight, I have the feeling I might not like any of the people there.
contour_1072_5_3.wav	RFR	You went shopping	This day has turned out to be so lame, I just wanted to have fun, but I didn't get to do a single thing I liked. 
contour_1072_6_3.wav	RFR	You have money	I don't really know why this foundation keeps asking me for donations, they should know that I don't respond well to soliciting.
contour_1072_3_3.wav	RFR	You like cats	She asked what my favorite animal is, but I'm not really sure, I'm just not an animal person. 
contour_1094_1_3.wav	RFR	You like John	I don't feel like going to this party tonight, I have the feeling I might not like any of the people there.
contour_1094_5_3.wav	RFR	You went shopping	This day has turned out to be so lame, I just wanted to have fun, but I didn't get to do a single thing I liked.
```

Goodhue and Wagner's README follows.
## The Intonational Bestiary

Authors: Dan Goodhue &  Michael Wagner

This repository contains the data from  the following paper:

Goodhue, D., Harrison, L., Su, Y. T. C., and Wagner, M. (2016). Toward a bestiary of English intonational tunes. In Hammerly, C. and Prickett, B., editors, Proceedings of the 46th Conference of the North Eastern Linguistic Society (NELS), Concordia University, pages 311–320.

It also contains the code used to generate the webpage with interactive plots using shiny, which can be found here:

[http://prosodylab.org/data/bestiary/bestiary-risingcontours/](http://prosodylab.org/data/bestiary/bestiary-risingcontours/)

There's also a paat annotation  script that can be used to create a  new annotation (one can choose whether one wants to see the condition and/or prior  annotation or  not).

Description: © 2021 Michael Wagner & Dan Goodhue. This is an open-access OSF project which is distributed under the terms of the Creative Commons Attribution-NonCommercial 4.0 International License (see LICENSE file).



