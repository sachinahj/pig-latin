require 'sinatra'
require 'pig_latin'

set :bind, '0.0.0.0'

get '/' do
  @converted = 'igpay atinlay onvertercay'
  erb :view
end

post '/' do
  string = params[:to_convert]
  words = string.split
  puts words
  @converted = words.map {|x| PigLatin::Code.convert(x)}
  puts @converted
  @converted = @converted.join(" ")
  # @converted = PigLatin::Code.convert(params[:to_convert])
  puts @converted
  erb :view
end