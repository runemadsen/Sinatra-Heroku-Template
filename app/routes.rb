get '/' do
  erb :front
end

# Use Sass with `views/style.scss` as your stylesheet
# To use, delete `public/stylehseets/style.css`
get '/css/style.css' do
  scss :style
end

# 404 Error
not_found do
  erb :notfound
end