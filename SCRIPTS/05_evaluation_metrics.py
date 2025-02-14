# Predict values using the simple linear regression model
y_pred_2 = results_2.predict(x_2)

# Compute Evaluation Metrics
r2 = r2_score(y_2, y_pred_2)
mae = mean_absolute_error(y_2, y_pred_2)
mse = mean_squared_error(y_2, y_pred_2)
rmse = np.sqrt(mse)

# Print Evaluation Metrics
print("Evaluation Metrics for Simple Linear Regression (Review Length → Lifetime Gross)")
print(f"R² Score: {r2:.4f}")
print(f"Mean Absolute Error (MAE): {mae:.2f}")
print(f"Mean Squared Error (MSE): {mse:.2f}")
print(f"Root Mean Squared Error (RMSE): {rmse:.2f}")
