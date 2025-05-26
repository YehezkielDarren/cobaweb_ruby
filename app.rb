require 'sinatra'
require 'erb'

set :bind, '0.0.0.0'
set :port, 4567
set :public_folder, File.join(File.dirname(__FILE__), 'public')

# Menggunakan helper untuk membuat komponen alert
helpers do
  def alert_component(message, type = "info")
    # type bisa "success", "danger", "warning", "info"
    "<div class=\"alert alert-#{type}\" style=\"display: block;\">#{ERB::Util.html_escape(message)}</div>"
  end
end

get '/' do
  # Baca pesan_sukses dan pesan_gagal dari parameter URL
  pesan_sukses = params['pesan_sukses']
  pesan_gagal = params['pesan_gagal']
  # Teruskan kedua variabel ini ke template form.erb sebagai locals
  erb :form, locals: { pesan_sukses: pesan_sukses, pesan_gagal: pesan_gagal }
end

post '/login' do
  # logika validasi...
  if params['username'] == 'admin' && params['password'] == 'admin123'
    redirect to('/?pesan_sukses=Login+berhasil!')
  else
    redirect to('/?pesan_gagal=Gagal+login+dengan+akun+' + params['username'])
  end
end
