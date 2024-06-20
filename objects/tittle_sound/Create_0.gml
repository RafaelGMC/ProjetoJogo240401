// Verifica se alguma música está tocando e para qualquer música que estiver tocando


// Define a música da fase
global.title_music = snd_title_sounds;

// Toca a música da fase em loop
audio_play_sound(global.title_music, 1, true);

// Define o volume da música (0.0 = mudo, 1.0 = volume máximo)
audio_sound_gain(global.title_music, 0.5, 0); // Volume em 50%