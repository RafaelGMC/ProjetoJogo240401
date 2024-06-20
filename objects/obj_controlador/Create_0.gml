/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Verifica se alguma música está tocando e para qualquer música que estiver tocando
if (audio_is_playing(global.title_music)) {
    audio_stop_sound(global.title_music);
}

// Define a música da fase
global.music = snd_background_sound;

// Toca a música da fase em loop
audio_play_sound(global.music, 1, true);

// Define o volume da música (0.0 = mudo, 1.0 = volume máximo)
audio_sound_gain(global.music, 0.5, 0); // Volume em 50%