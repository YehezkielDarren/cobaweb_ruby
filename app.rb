require 'sinatra'
require 'erb'

set :bind, '0.0.0.0'
set :port, 4567
set :public_folder, File.dirname(__FILE__) + '/public'
pesan_sukses=""
pesan_gagal=""

get '/' do
  # Baca pesan_sukses dan pesan_gagal dari parameter URL
  pesan_sukses = params['pesan_sukses']
  pesan_gagal = params['pesan_gagal']
  # Teruskan kedua variabel ini ke template form.erb sebagai locals
  erb :form, locals: { pesan_sukses: pesan_sukses, pesan_gagal: pesan_gagal }
end

post '/register' do
  # logika validasi...
  if params['username'] == 'admin' and params['password']=="admin123"
    redirect to('/?pesan_sukses=Username+admin+sudah+terdaftar.')
  else
    redirect to('/?pesan_gagal=Gagal+login+dengan+akun+' + params['username'])
  end
end
