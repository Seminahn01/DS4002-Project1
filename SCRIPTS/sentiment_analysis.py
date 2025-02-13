# Perform sentiment analysis
df["sentiment_score"] = df["review_text"].apply(lambda x: sia.polarity_scores(str(x))["compound"])

