# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:5173', 'https://coolage-5fbe878e57bb.herokuapp.com', 'https://coolage-web-8ab8e337f4da.herokuapp.com'
    resource '*',
             headers: :any,
             methods: %i[get post put patch delete options head],
             credentials: true
  end
end
