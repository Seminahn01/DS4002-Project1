# Reduce the number of TF-IDF features further to improve efficiency
tfidf = TfidfVectorizer(max_features=100)

# Transform the review text into numerical features
X_text = tfidf.fit_transform(df["review_text"].astype(str))

# Combine TF-IDF features with review length
df['review_length'] = df['review_text'].apply(lambda x: len(str(x)))
X_combined = hstack((X_text, df[["review_length"]]))
     

# Train/Test Split
X_train, X_test, y_train, y_test = train_test_split(X_combined, df["lifetime_gross"], test_size=0.2, random_state=42)

# Train Optimized XGBoost Model (only XGBoost to avoid memory issues)
xgb_model = xgb.XGBRegressor(objective="reg:squarederror", n_estimators=50, max_depth=5, random_state=42)
xgb_model.fit(X_train, y_train)
y_pred_xgb = xgb_model.predict(X_test)
     

# Create a DataFrame with actual vs. predicted revenue for comparison
predictions_df = pd.DataFrame({
    "Actual Revenue": y_test.values,
    "Predicted Revenue": y_pred_xgb
})

# Display the results
print(predictions_df.head(30))

plt.figure(figsize=(8, 6))
plt.scatter(y_test, y_pred_xgb, alpha=0.5, label="Predictions")
plt.plot([y_test.min(), y_test.max()], [y_test.min(), y_test.max()], 'r--', label="Perfect Prediction")
plt.xlabel("Actual Revenue")
plt.ylabel("Predicted Revenue")
plt.title("Actual vs. Predicted Movie Revenue")
plt.legend()
plt.show()
     
