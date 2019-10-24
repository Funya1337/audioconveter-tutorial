## Инструкция по установке и работе с DeepSpeech
- Создать папку на удаленном сервере или локально на Ubuntu и установить __[DeepSpeech](https://nodeca.github.io/pica/demo/)__ ниже приведен список команд для установки:
``` bash
# Create and activate a virtualenv
virtualenv -p python3 $HOME/tmp/deepspeech-venv/
source $HOME/tmp/deepspeech-venv/bin/activate

# Install DeepSpeech
pip3 install deepspeech

# Download pre-trained English model and extract
curl -LO https://github.com/mozilla/DeepSpeech/releases/download/v0.5.1/deepspeech-0.5.1-models.tar.gz
tar xvf deepspeech-0.5.1-models.tar.gz

# Download example audio files
curl -LO https://github.com/mozilla/DeepSpeech/releases/download/v0.5.1/audio-0.5.1.tar.gz
tar xvf audio-0.5.1.tar.gz

# Transcribe an audio file
deepspeech --model deepspeech-0.5.1-models/output_graph.pbmm --alphabet deepspeech-0.5.1-models/alphabet.txt --lm deepspeech-0.5.1-models/lm.binary --trie deepspeech-0.5.1-models/trie --audio audio/2830-3980-0043.wav
```
#### Описание команд
- Первые команды создают виртуальную среду для запуска DeepSpeech и запускают это среду
- Вторая команда устанавливает DeepSpeech
- Третие команды скачивают репозиторий DeepSpeech и устанавливают допонительные зависимости.
- Последняя команда запускает DeepSpeech и конвертирует выбранный аудио файл в текстовый формат.

#### Скрипты
- Для более удобной работы с нейронной сетью я добавил скрипт на автоматический запуск виртуальный среды, данный файл называется `startenv.sh`
- А также для преобразования в текстовый формат и для быстрого запуска, я написал скрипт `run.sh`