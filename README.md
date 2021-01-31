# R_Studio_Analytics_TwitterSpam_2
R_Studio_Analytics_TwitterSpam_2</br>
<strong>Contributed by Kian(Duyoung Jang)</strong>

<h1>Assessment Introduction </h1>

In this assessment, I will apply the data analytics and visualization skills to further analyse the provided TwitterSpam data set. Table 1 shows the features description of the dataset.

<img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385694-e6d87100-6414-11eb-952e-fcaf5b3d09c4.png" />
 

Follow the instructions below and write and essay that covers the following tasks. R script, R screenshot, your results and explanations should be covered for each question.

<h2>Questions</h2>

1.	Load TwitterSpam dataset into R studio, use ggplot function to make density plot of followers’ number (column: no_follower) to compare spam and non-spam. Please clarify on how you make the plot, and what's your observation from the density plot?

•	To load TwitterSpam dataset into R studio, TwitterSpam<-read.csv("workspace/R/TwitterSpam/TwitterSpam.txt")
•	To view overall dataset on a matrix-like to see it more clearly, View(TwitterSpam)

 <img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385698-eb9d2500-6414-11eb-85d3-c3a4a7491124.png" />
<img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385699-ecce5200-6414-11eb-8e6f-40e1bb1e7ca3.png"/>
<img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385703-f0fa6f80-6414-11eb-888c-75df67c81c55.png" />
<img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385705-f2c43300-6414-11eb-8b98-44a8145b9386.png" />
<img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385706-f5268d00-6414-11eb-9a9e-8754fc2a059e.png" />
<img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385707-f8217d80-6414-11eb-9a36-0b6cf5764566.png" />
<img width="500" height="auto"  src="https://user-images.githubusercontent.com/54985943/106385708-f8ba1400-6414-11eb-906b-2a79b0f6fa8a.png" />
<img width="500" height="auto"  src = "https://user-images.githubusercontent.com/54985943/106385709-fa83d780-6414-11eb-9961-e5302fb9ae08.png" />
 
-	Clarify on how you make the plot

•	To use ggplot function to make density plot of followers’ number (column: no_follower), firstly I import library('ggplot2'), and command: ggplot(TwitterSpam, aes(x = no_follower , fill = factor(label))) + geom_density(alpha = .5) + xlim(c(0, 6000)) and for the second graph: ggplot(TwitterSpam, aes(x = no_follower , fill = factor(label))) + geom_density() + facet_grid(label ~ .) + xlim(c(0, 6000))
•	x axis is the number of followers, y axis is the density of the graph.
•	ggplot2 is a system to declaratively creating graphics. I can tell ggplot2 how to map variables to aesthetics, what graphical primitives to use, and it takes care of the details.
•	aes is construct aesthetic mappings 
•	density plot of followers’number allocated in x = no_follower, fill = factor(label) for indicating the label non-spammer and spammer.
•	geom_density(alpha=.5) is smoothed density estimates.
•	xlim range from 0 to 6000 so we can specify the range of where we need to see as xlim(c(0,6000))
•	for the second graph I add facet_grid() that forms a matrix of panels defined by row and column faceting variables that is very useful when you have two discrete variables, and all combinations of the variables exist in the data and you can easily compare each other.

-	What's your observation from the density plot?

•	There is more than one way to use ggplot function to make density plot of follower’s number to compare spam and non-spam in this study.
•	One is to put non-spammer and spammer together on the one graph.
•	Second is to put non-spammer and spammer separate graphs.
•	On spammer accounts which is blue and button on the second graph, I can see quite higher density with lower follower number than non-spammer. On the other hand, non-spammer accounts which is red and top on the second graph, I can see lower density with more followers’number than spammer accounts. 
•	Overall, I can distinguish between non-spammer accounts and spammer accounts by followers’number and density. Spammers tend to have smaller number of followers with higher density than non-spammer.

<h2>2. Load TwitterSpam dataset into R studio, use ggplot function to make density plot of followings’ number (column: no_following) to compare spam and non-spam. Please clarify on how you make the plot, and what's your observation from the density plot?</h2>

•	To load TwitterSpam dataset into R studio, TwitterSpam<-read.csv("workspace/R/TwitterSpam/TwitterSpam.txt")
•	To view overall dataset on a matrix-like to see it more clearly, View(TwitterSpam)

 <img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385714-01124f00-6415-11eb-999e-4c046415a3d5.png" />
 <img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385715-0374a900-6415-11eb-9c60-ad1050f0db43.png" />
 <img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385717-053e6c80-6415-11eb-95a5-55bfe09d8473.png" />
 <img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385720-07083000-6415-11eb-85ab-64dcbf03b4c7.png" />
 <img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385723-08d1f380-6415-11eb-8028-ee85df63efb7.png" />
 <img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385727-0a9bb700-6415-11eb-9ca7-77f1ffeaf9b0.png" />

 
-	Clarify on how you make the plot

•	To use ggplot function to make density plot of followers’ number (column: no_following), firstly I import library('ggplot2'), and command: ggplot(TwitterSpam, aes(x = no_following , fill = factor(label))) + geom_density(alpha = .5) + xlim(c(0, 6000)) and for the second one : ggplot(TwitterSpam, aes(x = no_following , fill = factor(label))) + geom_density() + facet_grid(label ~ .) + xlim(c(0, 6000))
•	x axis is the number of following, y axis is the density of the graph.
•	ggplot2 is a system to declaratively creating graphics. I use ggplot2 to map variables to aesthetics, what graphical primitives to use, and it takes care of the details.
•	aes is construct aesthetic mappings.
•	density plot of following number allocated in x = no_following, fill = factor(label) for indicating the label non-spammer and spammer.
•	geom_density(alpha=.5) is smoothed density estimates as used on the first graph.
•	xlim range from 0 to 6000 so we can specify the range of where we need to see as xlim(c(0,6000))
•	for the second graph I add facet_grid() that forms a matrix of panels defined by row and column faceting variables that is very useful when you have two discrete variables, and all combinations of the variables exist in the data and you can easily compare each other.


-	What's your observation from the density plot?

•	There is more than one approach to use ggplot function to make density plot of following number to compare spam and non-spam in this study.
•	One is to put non-spammer and spammer together on the one graph. ggplot(TwitterSpam, aes(x = no_following , fill = factor(label))) + geom_density(alpha = .5) + xlim(c(0, 6000))
•	Second is to put non-spammer and spammer separate graphs. ggplot(TwitterSpam, aes(x = no_following , fill = factor(label))) + geom_density() + facet_grid(label ~ .) + xlim(c(0, 6000))
•	When I investigate spammer accounts which is blue and button on the second graph, I can see more higher density with smaller following number than non-spammer. However, if I look at non-spammer accounts which is red and top on the second graph, I can see lower density with more following number than spammer accounts. 
•	In sum, I can distinguish between non-spammer accounts and spammer accounts by following number and density. Spammers have intentions to have smaller number of followings with higher density than non-spammer.

<h2>3. Compared with the result from task 1 and task 2, for the 'no_follower' and 'no_following' columns, which one is more valuable for detecting Twitter spam? Why?</h2>

Task1. No_follower	</br>	
<img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385706-f5268d00-6414-11eb-9a9e-8754fc2a059e.png" />
</br>
Task2. No_following </br>
 <img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385717-053e6c80-6415-11eb-95a5-55bfe09d8473.png" />
refer to task2
  

I find no_follower which is task 1 is more valuable for detecting Twitter Spam comparing the result task1 with task2.
The reasons being, are that if we go through each graph task 1 and task 2 as shown above, task1. No_follower has more distinct gap between spammer and non-spammer indicating approximately 0.0035 density difference between them however, task2 with no_following the difference between non-spammer and spammer density is only approximately 0.0025.
As a result, task1 is clearly more valuable for detecting Twitter spam as task 1with no_follower has bigger difference between spammer and non-spammer than task2 with no_following.

<h2>4. Use ggplot function to make scatterplots to present the relation of posted tweets number (column: no_tweets) and the number of followers (column: no_follower). Please explain how you make the scatterplot and the relationship between the number of posted tweets and the number of followers you observe from the scatterplot.</h2>

-	How you make the scatterplot

•	To use ggplot function to make scatterplots to present the relation of posted tweets number (column: no_tweets) and the number of followers (column: no_follower)        I command: ggplot(TwitterSpam, aes(x = no_tweets, y= no_follower )) + geom_point()
•	aes is construct aesthetic mappings 
•	ggplot is a system to declaratively creating graphics. I can use ggplot to map variables to aesthetics, what graphical primitives to use, and it takes care of the details.
•	x = no_tweets, y = no_follower.
•	geom_point() is used for regular unjittered points.

 <img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385772-48004480-6415-11eb-86c5-1327920d762b.png" />
  <img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385775-49ca0800-6415-11eb-9541-525a21d98c4f.png" />
   <img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385778-4b93cb80-6415-11eb-875b-6ba70988c5d2.png" />

 
-	Explain the relationship between the number of posted tweets and the number of followers you observe from the scatterplot.

•	If I take a look at the scatterplot graph, I can see the relationship between the number of posted tweets and the number of followers
•	Firstly, when I investigate the data with the graph, most of points are on the very button of left side closed to 0 followers and 0 tweets. it means most of the accounts on the graph have low number of tweets and small number of followers.
•	However, I can see very few accounts have big number of tweets but no followers.
•	and few of accounts have big number of follower and big number of tweets.
•	As a result, I can distinguish between very common cases and rare cases on the scatterplot which is one of the big advantages to use scatterplot when you need to see through distinct difference.
•	It helps you particularly find and see the odds easier.
•	It is suitable to apply when I want to see correlation between variables and clustering effects as a quick and simple overview of the dataset.
•	However, if I need to sort out or evaluate which accounts are spammer and non-spammer, this scatterplot is not very effective because it does not show you the valuable information as it does not reveal exact values.

<h2>5. Add regression line to the scatterplot generated in Step 4. Compared with scatterplot only, what are the advantages of adding a regression line?</h2>

-	How you make the regression line to the scatterplot generated in 4.

•	To add regression line to the scatterplot generated in Step4: ggplot(TwitterSpam, aes(x=no_tweets, y = no_follower)) + geom_point() + geom_smooth( method = 'lm' , formula = y ~(x))
•	I simply add: geom_smooth( method = 'lm' , formula = y ~(x)) to make the regression line to the scatterplot.
•	geom is the geometric object to use display the data
•	formula is used in smoothing function.</br>
<img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385783-50f11600-6415-11eb-999f-82d23e62ecac.png" />
<img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385785-53ec0680-6415-11eb-89c9-1eb932c20e89.png" />
<img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385789-56e6f700-6415-11eb-9c0e-d30fa1fc0988.png" />

 
-	Compared with scatterplot only, what are the advantages of adding a regression line?

Compared with scatterplot only, with added Regression line to the Scatterplot I can find out that the number of no_follower is increasing as the number of no_tweets is growing. On the other hand, with scatterplot only, I can hardly see what would make the effect of having some values such as no_tweets. One of the biggest advantage to add Regression line I believe is that it makes the estimation procedure simple, and this linear equation is easier to understand interpretation on the graph number 2 as shown above when we compare with Scatterplot only.

</h2>6. Data exploration is the initial step in data analysis, where users explore a data set in an unstructured way to uncover initial patterns, characteristics, and points of interest. Except approaches mentioned in Assessment 1 and Assessment 2 (1)(2)(3)(4)(5) and characteristics observed from these approaches, what other characteristics, points of interest, or initial patterns you find from the dataset? Please describe one of your findings and give a detailed description of how you achieve it.</h2>

-	How you achieve it. And describe one of your findings

•	In this session, I was wondering the relationship between numbers of no_follower accounts and the number of account age. 
•	So, I decided to investigate the number of no follower accounts according to the number of older account age.
•	To figure it out, I command: ggplot(data = TwitterSpam, mapping = aes(x = accout_age, y = no_follower)) +  geom_line() + theme_bw()
•	Mapping is set of aesthetic mappings created by aes() or aes_() it combined with the default mapping at the top level of the plot.
•	geom_line() is suitable for time series so in this case I thought it would be the best option to apply with account age.
•	Theme_bw() function is used to change the background colour to white.
•	I found out that more than 2000 number of account_age has the most number of no follower. And the more number of account_age have, the more no follower there is.
 
 <img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385800-623a2280-6415-11eb-90a5-dd58a7b6d199.png" />
 <img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385804-65cda980-6415-11eb-9f76-83d4fb107fe8.png" />
<h2>Conclusion</h2>
  <img width="500" height="auto" src="https://user-images.githubusercontent.com/54985943/106385807-6bc38a80-6415-11eb-8cfc-dd3befeb0951.png" />

In conclusion, I investigate Twitter Spam dataset using R studio. I learned how to load the dataset into R studio, to use ggplot with appropriate cases as to visualize dataset on graph, comparing each dataset, and I experienced with regression line and scatterplot on R studio. Also, I achieved some other characteristics, points of interest, or initial patterns I find from this Twitter Spam dataset and implemented it on my own with demonstration.

<h2>REFERENCE</h2>
Ggolot2 31.01.2021

https://www.rdocumentation.org/packages/ggplot2/versions/3.3.3

Ggolot2, jitter 31.01.2021 

https://ggplot2.tidyverse.org/reference/geom_jitter.html?q=geom%20_%20point

Ggolot2 smooth 31.01.2021

https://ggplot2.tidyverse.org/reference/geom_smooth.html

Ggolot2 mappings 31.01.2021

https://ggplot2.tidyverse.org/reference/stat_sf_coordinates.html?q=mapping#arguments

