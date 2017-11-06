 # Store the environment variables on the Rails.configuration object
 Rails.configuration.stripe = {
   publishable_key: ENV['pk_test_Xmtl4sZvvASwR4pkV7un4ZkE'],
   secret_key: ENV['sk_test_1JmqS2ncyjbPhxHjOHGeej5R']
 }
 
 # Set our app-stored secret key with Stripe
 Stripe.api_key = Rails.configuration.stripe[:secret_key]