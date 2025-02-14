This folder contains all scripts for the project. They should be run in number order as indicated by script name. 
# Movie Sentiment and Box Office Revenue Analysis

This repository contains the code and data used for analyzing the relationship between movie review sentiment and box office revenue.  The analysis involves scraping data from Zenodo and Box Office Mojo, performing sentiment analysis using the VADER package in Python, and conducting hypothesis testing.

## Analysis Plan

The analysis follows these steps:

1. **Data Acquisition:**
    * **Zenodo:**  Data related to movie reviews (if available) will be scraped from Zenodo.  *(Specific details about the Zenodo dataset used should be included here if applicable.  E.g., "The Zenodo dataset 'Movie Review Dataset X' was used, containing..." )*
    * **Box Office Mojo:** Movie revenue data (lifetime gross) will be scraped from Box Office Mojo.

2. **Data Scraping (R):**
    * R will be used for web scraping both Zenodo and Box Office Mojo.  *(Include specific R packages used, e.g., `rvest`, `RSelenium`, etc.)*
    * The scraped data will be cleaned and preprocessed in R.

3. **Data Output:**
    * The processed data from R will be exported to CSV files for further analysis in Python.  *(Specify the names of the CSV files and what they contain.)*

4. **Sentiment Analysis (Python):**
    * Python will be used for sentiment analysis.
    * The VADER (Valence Aware Dictionary and sEntiment Reasoner) package will be employed to determine the sentiment score of movie reviews.  *(Include any specific preprocessing steps performed in Python before sentiment analysis.)*

5. **Hypothesis Testing:**
    Two hypotheses will be tested:

    * **Hypothesis 1 (Sentiment Score vs. Lifetime Gross Revenue):**
        * **H0:** There is no relationship between sentiment score and lifetime gross revenue.
        * **H1:** Movies with higher sentiment scores will have higher lifetime gross revenue.

    * **Hypothesis 2 (Review Length vs. Lifetime Gross Revenue):**
        * **H0:** There is no relationship between the length of review and lifetime gross revenue.
        * **H1:** Longer reviews will correlate with higher lifetime gross revenue.

## Repository Structure
