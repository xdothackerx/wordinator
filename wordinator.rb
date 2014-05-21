require 'sinatra'
require 'json'

get '/:input1/:input2' do
  # content_type :json <- Don't know if this is necessary?
  def anagram
    params[:input1].chars.sort == params[:input2].chars.sort
  end
  {input1: params[:input1], input2: params[:input2], anagram?: anagram}.to_json
end
