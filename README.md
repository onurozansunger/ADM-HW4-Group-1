# Movie Recommendation & User Clustering

A multi-part data-science project covering **recommendation systems**, **clustering** and **algorithmic optimization** on Netflix-like access data.

Developed at **Sapienza University of Rome** as part of the MSc in Data Science (2023/24).

## Project Overview

The project is structured into four modules, each focused on a different problem on top of a real-world Netflix-style dataset:

### 1. Movie Recommendation System (MinHash)

A from-scratch recommendation pipeline that suggests 5 movies a given user is most likely to enjoy:

1. Extract each user's top-10 most-clicked movies.
2. Build a **MinHash** scheme from scratch over genre interests, using 12 hash functions reduced to 3 MinHash signatures, so users with similar genre profiles land in the same bucket.
3. Identify the two most similar users to a target user and recommend movies they have both watched, falling back to top movies of the most similar user when needed.

### 2. Feature Engineering, Dimensionality Reduction & Clustering

Working with a Netflix access dataset from Kaggle:

- **Feature engineering:** the rows are aggregated by user, then 15 new features are derived from the original ones.
- **Dimensionality reduction:** both **PCA** and **FAMD** (Factor Analysis of Mixed Data) are evaluated. FAMD is chosen for clustering because it handles mixed numerical/categorical features.
- **Clustering:** an implementation of **k-means from scratch**, both without and with random initialization, plus two strategies for selecting the optimal number of clusters. An additional ChatGPT-suggested clustering algorithm is also evaluated for comparison.
- **Result analysis:** pivot-table-based analysis of the resulting clusters.

### 3. Command-Line Analytics

Pure command-line analysis of Netflix usage:

1. Find the most-watched Netflix title.
2. Compute the average time interval between subsequent clicks on `netflix.com`.
3. Identify the user with the most total time spent on Netflix.

### 4. Algorithmic Optimization

A recursive algorithm is designed to maximize a final score under a custom university grading rule:

1. Recursive solution with full big-O complexity analysis.
2. An optimized non-recursive version, also analyzed.
3. A third, even more optimized implementation with its own complexity analysis.
4. Worked examples to validate correctness.

## Tech Stack

`Python` · `pandas` · `numpy` · `scikit-learn` · `matplotlib` · `seaborn` · `Jupyter` · `Bash`

## Team

This was a team project developed collaboratively by:

- Rahim Rahimov
- Petra Udovicic
- Jacopo Orsini
- **Onur Ozan Sünger**
