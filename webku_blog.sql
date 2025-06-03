
-- Buat database
CREATE DATABASE webku;
USE webku;

-- Buat tabel blog
CREATE TABLE blog (
    id INT AUTO_INCREMENT PRIMARY KEY,
    judul VARCHAR(255) NOT NULL,
    isi TEXT NOT NULL,
    link VARCHAR(512)
);

-- Tambahkan data awal
INSERT INTO blog (judul, isi, link) VALUES
(
  'Iklim Tropis Manado: Hujan Sepanjang Tahun',
  'Manado memiliki iklim hutan hujan tropis (Af) menurut klasifikasi Köppen, yang berarti tidak ada musim kemarau yang jelas. Bulan terbasah adalah Januari dengan curah hujan rata-rata 465 mm, sedangkan September adalah bulan terkering dengan 121 mm. Suhu rata-rata berkisar antara 25,4°C di bulan Januari dan Februari hingga 26,6°C di bulan Agustus.',
  'https://en.wikipedia.org/wiki/Manado?utm_source=chatgpt.com'
),
(
  'Prakiraan Cuaca Terkini di Manado',
  'Menurut data dari BMKG, prakiraan cuaca untuk Kota Manado menunjukkan hujan petir dengan suhu berkisar antara 24–32°C dan kelembapan 76–93%.',
  'https://www.bmkg.go.id/cuaca/prakiraan-cuaca/71.71?utm_source=chatgpt.com'
),
(
  'Cuaca Saat Ini di Manado',
  'Berdasarkan informasi dari AccuWeather, kondisi cuaca saat ini di Manado adalah sebagian cerah dengan suhu 88°F (31°C), namun terasa seperti 101°F (38°C), menunjukkan kondisi yang sangat panas.',
  'https://www.accuweather.com/id/id/manado/206050/current-weather/206050?utm_source=chatgpt.com'
);
