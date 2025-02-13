# Perform sentiment analysis
df["sentiment_score"] = df["review_text"].apply(lambda x: sia.polarity_scores(str(x))["compound"])

# Exploratory Data Analysis (EDA)
sns.scatterplot(data=df, x="sentiment_score", y="lifetime_gross")
plt.title("Sentiment Score vs. Lifetime Gross Revenue")
plt.xlabel("Sentiment Score")
plt.ylabel("Lifetime Gross Revenue")
plt.show()
    
