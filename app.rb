require 'sinatra'
require 'erb'

set :bind, '0.0.0.0'
set :port, 4567

# Data mahasiswa akan disimpan di memori sementara
mahasiswa_list = []

get '/' do
  erb :form, locals: { mahasiswa_list: mahasiswa_list }
end

post '/register' do
  nama = params['nama']
  nim = params['nim']
  password = params['password']
  mahasiswa_list << { nama: nama, nim: nim, password: password }
  erb :form, locals: { mahasiswa_list: mahasiswa_list }
end
