// Mendapatkan tombol mode gelap/terang
const toggleButton = document.getElementById('toggle-mode');

// Fungsi untuk mengganti mode
function toggleMode() {
  document.body.classList.toggle('dark-mode');
  if (document.body.classList.contains('dark-mode')) {
    localStorage.setItem('mode', 'dark');
    toggleButton.textContent = 'Light Mode';
  } else {
    localStorage.setItem('mode', 'light');
    toggleButton.textContent = 'Dark Mode';
  }
}

// Menambahkan event listener pada tombol mode
toggleButton.addEventListener('click', toggleMode);

// Memeriksa mode yang disimpan di local storage
if (localStorage.getItem('mode') === 'dark') {
  document.body.classList.add('dark-mode');
  toggleButton.textContent = 'Light Mode';
} else {
  toggleButton.textContent = 'Dark Mode';
}