#1. Load TwitterSpam dataset into R studio, 
TwitterSpam <- read.csv("workspace/R/TwitterSpam/TwitterSpam.txt")
View(TwitterSpam)

#Use ggplot function to make density plot of followers’ number (column: no_follower) 
# to compare spam and non-spam.
library('ggplot2')
ggplot(TwitterSpam, aes(x = no_follower , fill = factor(label))) +
  geom_density(alpha = .5) + xlim(c(0, 6000))

ggplot(TwitterSpam, aes(x = no_follower , fill = factor(label))) +
  geom_density() + facet_grid(label ~ .) + xlim(c(0, 6000))

#2. Load TwitterSpam dataset into R studio, 
TwitterSpam <- read.csv("workspace/R/TwitterSpam/TwitterSpam.txt")
View(TwitterSpam)

# Use ggplot function to make density plot of followings’ number (column: no_following) 
# to compare spam and non-spam
library('ggplot2')
ggplot(TwitterSpam, aes(x = no_following , fill = factor(label))) +
  geom_density(alpha = .5) + xlim(c(0, 6000))

ggplot(TwitterSpam, aes(x = no_following , fill = factor(label))) +
  geom_density() + facet_grid(label ~ .) + xlim(c(0, 6000))

#4. Use ggplot function to make scatterplots to present the relation of posted tweets number 
#    (column: no_tweets) and the number of followers (column: no_follower). 
ggplot(TwitterSpam, aes(x = no_tweets, y= no_follower )) + geom_point()

#5.Add regression line to the scatterplot generated in Step 4. Compared with scatterplot only
ggplot(TwitterSpam, aes(x=no_tweets, y = no_follower)) +
  geom_point() + geom_smooth( method = 'lm' , formula = y ~(x))

#6. What other characteristics, points of interest, or initial patterns you find from the dataset? 
ggplot(data = TwitterSpam, mapping = aes(x = accout_age, y = no_follower)) +
  geom_line() + theme_bw()

