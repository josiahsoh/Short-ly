get '/' do
  @urls = Url.all
  erb :"static/index"
end

post '/urls' do
  url = Url.create(long_urls: params[:long_url]) 
  redirect to "/" 
end

get '/:short_url' do
  url = Url.find_by(short_urls: params[:long_urls])
  url.save #if url.create means create and save automatically.
end

