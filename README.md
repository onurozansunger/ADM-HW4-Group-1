# ADM-HW4
This repository contains the source code, notebooks, and additional materials related to Assignment 4 of the "Algorithms for Data Mining" course (23/24) from the Data Science Master's program at Sapienza University of Rome. Below, you will find an overview of the contents of this repository.

## Introduction
This project was carried out by Group 1 from Algorithmic Methods for Data Mining (ADM) course, made of the mebers:

| NAME and SURNAME | EMAIL |
| --- | --- |
| Rahim Rahimov| rahimov.1921843@studenti.uniroma1.it
| Petra Udovicic| petra.udovicic1997@gmail.com|
| Jacopo Orsini | orsini.2099929@studenti.unirom1.it |
| Onur Ozan Sunger| sunger.2113119@studenti.uniroma1.it|
| | |
## Question 1
The goal of the first question was to provide a 5 movies that the given user will most likely find interesting. The recommendation system had to be implemented and its steps were the following:
1. Extracting the top 10 movies for each user. The movie on which the user clicked on the biggest amount of times was considered the movie top one for that user.
2. Building a minhash function from scratch to get users with similar genre interest in the sam bucket. The list of all genres were made and 3 columns have been added to the dataframe. The first column had lists with 0 if the genre that is in the same position in the list of genres is not present in that row and 1 if the genre is present in the row. The other column had the result of our 12 hash functions. The last column added provided information about the result of the minhash function that reduced our 12 scores gotten from hash functions to just 3 scores.
3. We identified two most similar users to the user from the input and made a list of all the movies they both watched. If the list has 5 elements, these five movies will be recommended to the user. If it has less, the rest of the list of movies recommended will be filled with top movies from the most similar user. If the list has more then 5 elements, the five movies that have the biggest number of clicks by the most similar user will be recommended.
## Question 2
The second question of the Homework 4 concerns topics such as feature engeneering, dimensionality reduction and clsutering. In details, starting from a dataset about the Netflix's accesses by users from Kaggle, the following functions has been implemented:
1. Feature engeneering: the users has been "grouped by" in oreder to have for each row a unique user and then 15 new features has been created starting from the original features. 
2. Dimensinality reduction: after ggettib the new dataset, 2 dimensionality reduction techniques has been imlemented: Principal Component Analysis (PCA) and Factor Analysis for Mixed Data (FAMD); just this second technique has been used to perform the kmeans algorithm and this choice is justified by its characteristic of dealing with datasets that cointain both numberical and categorical features. 
3. Clsutering: a kmeans algorithm has been implemented from scratch, firstly without the random inizialization and then with it, together with 2 methods to find the optimal number of clsuters. In the last point of this third part, is also present another clustering alorithm suggested by ChatGPT with some considerations about. 
4. Analysis of the results: ehe last part of the code is dedicated to the analysis of the results through the pivot tables
## Algorithmic Question
 In this problem, we need to help Federico maximize his final score at a university with a unique grading system. We will:
a) Write a recursive algorithm to calculate the highest possible final score Federico can achieve. The code should take his initial score and a list of exam scores as input.
b) Analyze the time complexity of your recursive solution using big-O notation, demonstrating whether or not it is efficient.
c) If the recursive solution is found to be inefficient, optimize the code using a different approach, and again analyze its time complexity to prove the improvement.
d) Challenge me to provide a third, potentially more optimized implementation, and analyze its time complexity.
We will use example inputs and outputs to test and demonstrate the functionality of the code. The challenge includes not only implementing the algorithms but also analyzing and optimizing their efficiency.
