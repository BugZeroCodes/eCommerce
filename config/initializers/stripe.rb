Rails.configuration.stripe = {

  :publishable_key => "pk_test_hvt9qOJL25XStsiemgpS32Bd",

  :secret_key => "sk_test_HPtsHc13M4Xq4UiIY672hDsM"

}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
