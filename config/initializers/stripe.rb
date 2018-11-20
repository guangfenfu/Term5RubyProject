Rails.configuration.stripe = {
  :publishable_key => "pk_test_cybDGDY2rvn8Ot9fyXcz7ELL",
  :secret_key      => "sk_test_ofUsVpBprkmOAues9xo2jZ8I"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]