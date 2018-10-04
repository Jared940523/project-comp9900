import speech_recognition as sr
# need module pyaudio
# linux : sudo apt-get install python-pyaudio python3-pyaudio (pip install pyaudio)
#windows :pip install pyaudio

r = sr.Recognizer()
sr.Microphone.list_microphone_names()
mic = sr.Microphone()
with mic as source:
    print("try")
    r.adjust_for_ambient_noise(source)
    audio = r.listen(source)

if(audio):
    print(r.recognize_google(audio))
