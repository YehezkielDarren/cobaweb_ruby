# COBA PROJEK PROGWEB: Membuat Website Sederhana Dinamis Dengan Ruby
## Langkah-langkah Instalasi Ruby

### Windows
1. Kunjungi [rubyinstaller.org](https://rubyinstaller.org/).
2. Unduh Ruby versi terbaru.
3. Jalankan installer dan ikuti petunjuknya.
4. Centang opsi "Add Ruby executables to your PATH".
5. Setelah selesai, buka Command Prompt dan cek instalasi dengan:
    ```
    ruby -v
    ```

### Linux (Ubuntu/Debian)
1. Buka terminal.
2. Update package list:
    ```
    sudo apt update
    ```
3. Instal Ruby:
    ```
    sudo apt install ruby-full
    ```
4. Verifikasi instalasi:
    ```
    ruby -v
    ```

### macOS
1. Buka Terminal.
2. Instal Homebrew jika belum ada:
    ```
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```
3. Instal Ruby menggunakan Homebrew:
    ```
    brew install ruby
    ```
4. Tambahkan Ruby ke PATH jika diperlukan (ikuti instruksi dari Homebrew).
5. Verifikasi instalasi:
    ```
    ruby -v
    ```
    
Jalankan program ini dengan cara
```
bundle install
ruby app.rb
```