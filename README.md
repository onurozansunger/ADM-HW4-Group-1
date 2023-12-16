# ADM-HW4-Group-1
HW4 for ADM course
## Introduction
This project was carried out by Group 1 from Algorithmic Methods for Data Mining (ADM) course, made of the mebers:

| NAME and SURNAME | EMAIL |
| --- | --- |
| Rahim Rahimov| rahimov.1921843@studenti.uniroma1.it
| Petra Udovicic| |
| Jacopo Orsini | orsini.2099929@studenti.unirom1.it |
| | |
## Question 2
The second question of the Homework 4 concerns topics such as feature engeneering, dimensionality reduction and clsutering. In details, starting from a dataset about the Netflix's accesses by users from Kaggle, the following functions has been implemented:
1. Feature engeneering: the users has been "grouped by" in oreder to have for each row a unique user and then 15 new features has been created starting from the original features. 
2. Dimensinality reduction: after ggettib the new dataset, 2 dimensionality reduction techniques has been imlemented: Principal Component Analysis (PCA) and Factor Analysis for Mixed Data (FAMD); just this second technique has been used to perform the kmeans algorithm and this choice is justified by its characteristic of dealing with datasets that cointain both numberical and categorical features. 
3. Clsutering: a kmeans algorithm has been implemented from scratch, firstly without the random inizialization and then with it, together with 2 methods to find the optimal number of clsuters. In the last point of this third part, is also present another clustering alorithm suggested by ChatGPT with some considerations about. 
4. Analysis of the results: ehe last part of the code is dedicated to the analysis of the results through the pivot tables
