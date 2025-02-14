## Section 1: Software and Platform

This project utilizes **Python** and **R** for sentiment analysis on movie reviews and predicting box office revenue. Below is a detailed breakdown of the software, required dependencies, and platform compatibility.

 ### Software Used
- **Python**: Used for sentiment analysis, feature engineering, and machine learning modeling.
- **R**: Used for data scraping and preprocessing.

### Required Add-On Packages
Before running the scripts, install the following dependencies.

### Python Dependencies
Ensure you have **Python 3.9+** installed. Required packages include:

- **Data Handling & Analysis:** `pandas`, `numpy`
- **Visualization:** `matplotlib`, `seaborn`
- **Natural Language Processing (NLP):** `nltk`, `vaderSentiment`, `TfidfVectorizer`
- **Machine Learning:** `scikit-learn`, `xgboost`
- **Statistical Modeling:** `statsmodels`
- **Utility & Web Scraping:** `requests`, `beautifulsoup4`

### R Dependencies
Ensure you have **R 4.0+** installed. Required packages include:

Web Scraping & Data Wrangling: tidyverse, rvest, dplyr

To install them in R, run:
install.packages(c("tidyverse", "rvest", "dplyr"))

### Platform Compatibility
This project is compatible with the following operating systems:

- **Windows**
- **MacOS**
- **Linux**
All scripts and dependencies should run smoothly across these platforms. Make sure you have the correct versions of Python and R installed before proceeding with the analysis.

## Section 2: A Map of the Repository

This section provides an overview of the repository's structure, listing all folders and files along with their descriptions.

### Project Directory Structure
The following tree diagram illustrates the hierarchy of folders and subfolders in the project:

```plaintext

├── README.md               # Project overview and instructions
├── LICENSE.md              # Terms for using and citing this repository
│
├── SCRIPTS/                # Contains all scripts used for data analysis
│   ├── 01_data_script1.R        # Data collection and processing 
│   ├── 02_sentiment_analysis.py   # Performs sentiment analysis on reviews
│   ├── 03_model_training.py       # Runs XGBoost models
│   └── 04_evaluation_metrics.py      # Computes model performance metrics
│
├── DATA/                   # Stores datasets used in the project
│   ├── movie_data_initial.csv          # Raw movie review dataset from Zenodo
│   ├── movie_data_final.csv       # Processed dataset (merged reviews & revenue)
│   ├── ReivewsData.md            # Access to movie_rievew.csv
│   └── Data_Appendix.pdf         # Detailed data documentation
│
├── OUTPUT/                 # Stores results generated from analysis
│   ├── sentiment_analysis_results.csv  # Sentiment scores for each review
│   ├── box_office_predictions.csv      # Predicted vs. actual revenue
│   ├── plots/
│   │   ├── sentiment_vs_revenue.png   # Sentiment correlation with revenue
│   │   ├── review_length_vs_revenue.png # Review length impact on revenue
│   └── model_results/
│       ├── random_forest_results.csv
│       ├── xgboost_results.csv
│       ├── regression_summary.txt
│       └── model_evaluation_metrics.txt

## Section 3: Introductions for Reproducing Results 

This section provides detailed step-by-step instructions to reproduce our results, including data collection, preprocessing, sentiment analysis, and model training. Follow these steps carefully to ensure a successful replication of our study.

### Step 1: Clone the Repository
First, download the repository to your local machine.

### Step 2: Install required Dependencies 

Ensure you have Python 3.9+ and R 4.0+ installed.

**Python Dependencies**
Open Python and instal the required packages: 
pip install pandas numpy matplotlib seaborn nltk scikit-learn xgboost statsmodels requests beautifulsoup4

**R Dependencies**
Open R and install the required packages:
install.packages(c("tidyverse", "rvest", "dplyr"))

### Step 3: Data Collection & Processing
Use the provided dataset(movie_data_final.csv) under DATA/ folder on Github. 

### Step 4: Sentiment Analysis 
Next, analyze the sentiment of each review using VADER sentiment scoring.

### Step 5: Train the Machine Learning Model

### Step 6: Generate Visualizations
Train XGBoost model for box office prediction. 

### Step 7: Hypothesis Testing with Regression Models

### Step 8: Evaluate Model Performance 
Check how well our models performed by viewing the evaluation metrics: 
