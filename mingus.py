import math
import wave
import struct

import pyaudio

def synthComplex(freq=[440],coef=[1], datasize=10000, fname="test.wav"):
    frate = 44100.00  
    amp=8000.0 
    sine_list=[]
    for x in range(datasize):
        samp = 0
        for k in range(len(freq)):
            samp = samp + coef[k] * math.sin(2*math.pi*freq[k]*(x/frate))
        sine_list.append(samp)
    wav_file=wave.open(fname,"w")
    nchannels = 1
    sampwidth = 2
    framerate = int(frate)
    nframes=datasize
    comptype= "NONE"
    compname= "not compressed"
    wav_file.setparams((nchannels, sampwidth, framerate, nframes, comptype, compname))
    for s in sine_list:
        wav_file.writeframes(struct.pack('h', int(s*amp/2)))
    wav_file.close()

synthComplex([440,880,1200], [0.4,0.3,0.1], 30000, "tone.wav")

p = pyaudio.PyAudio()

# open stream based on the wave object which has been input.
stream = p.open(format =
                p.get_format_from_width(wf.getsampwidth()),
                channels = wf.getnchannels(),
                rate = wf.getframerate(),
                output = True)

# read data (based on the chunk size)
data = wf.readframes(chunk)

# play stream (looping from beginning of file to the end)
while data:
    # writing to the stream is what *actually* plays the sound.
    stream.write(data)
    data = wf.readframes(chunk)


# cleanup stuff.
wf.close()
stream.close()    
p.terminate()


    p = pyaudio.PyAudio()
    stream = p.open(format=p.get_format_from_width(sampwidth),
                    channels=nchannels,
                    rate=framerate,
                    output=True)
    

    

    # for s in sine_list:
    #     wav_file.writeframes(struct.pack('h', int(s*amp/2)))
    # wav_file.close()

# synth music notes starting from C4 to C2

# C4 = 261.63 Hz
synthComplex([261.63], [1], 30000, "C4.wav")
synthComplex([293.66], [1], 30000, "D4.wav")
synthComplex([329.63], [1], 30000, "E4.wav")
synthComplex([349.23], [1], 30000, "F4.wav")
synthComplex([392.00], [1], 30000, "G4.wav")
synthComplex([440.00], [1], 30000, "A4.wav")
synthComplex([493.88], [1], 30000, "B4.wav")
synthComplex([523.25], [1], 30000, "C5.wav")
synthComplex([587.33], [1], 30000, "D5.wav")
synthComplex([659.25], [1], 30000, "E5.wav")
synthComplex([698.46], [1], 30000, "F5.wav")
synthComplex([783.99], [1], 30000, "G5.wav")
synthComplex([880.00], [1], 30000, "A5.wav")
synthComplex([987.77], [1], 30000, "B5.wav")
synthComplex([1046.50], [1], 30000, "C6.wav")
synthComplex([1174.66], [1], 30000, "D6.wav")
synthComplex([1318.51], [1], 30000, "E6.wav")
synthComplex([1396.91], [1], 30000, "F6.wav")
synthComplex([1567.98], [1], 30000, "G6.wav")
synthComplex([1760.00], [1], 30000, "A6.wav")
synthComplex([1975.53], [1], 30000, "B6.wav")
synthComplex([2093.00], [1], 30000, "C7.wav")



synthComplex([440,880,1200], [0.4,0.3,0.1], 30000, "tone.wav")