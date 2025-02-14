## Multiple Linear Regression using Sentiment Score and Review Length to predict Lifetime Gross
# independent variables
x = df[['sentiment_score','review_length']]

# dependent variable
y = df['lifetime_gross']

# add constant for intercept
x = sm.add_constant(x)

# fit the regression model
model = sm.OLS(y,x)
results = model.fit()

print(results.summary())

## Simple Linear Regression using Review Length to predict Lifetime Gross (Sentiment Score insignificant)
# independent variable
x_2 = df['review_length']

# dependent variable
y_2 = df['lifetime_gross']

# add constant for intercept
x_2 = sm.add_constant(x_2)

# fit regression model
model_2 = sm.OLS(y_2,x_2)
results_2 = model_2.fit()

print(results_2.summary())
