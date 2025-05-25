require 'sinatra'
require 'erb'

set :bind, '0.0.0.0'
set :port, 4567
set :public_folder, File.dirname(__FILE__) + '/public'
pesan=""

get '/' do
  pesan=params['pesan']
  erb :form, locals: { pesan: pesan }
end

post '/register' do
  # logika validasi...
  if params['username'] == 'admin' and params['password']="admin123"
    redirect to('/?pesan=Username+admin+sudah+terdaftar.')
  else
    redirect to('/?pesan=Gagal+login+dengan+akun+' + params['username'])
  end
end
