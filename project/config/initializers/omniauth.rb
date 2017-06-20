OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook,'236219000208737', '9320e1a98fa2483222813c3b4d4e9090', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end
