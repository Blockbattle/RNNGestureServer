from flask import Flask, request
from waitress import serve
import numpy as np
from tensorflow import keras
from mediapipe.framework.formats import landmark_pb2
import mediapipe as mp
import cv2

model_loaded = keras.models.load_model('ru_gr_rnn_model1000')#('gr_rnn01_model')

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello, it is a gesture recogntion server!"

@app.route('/letter')
def recognize_gesture():
    xstr = request.args.getlist('x')
    ystr = request.args.getlist('y')

    xlist = list(map(float, xstr))
    ylist = list(map(float, ystr))

    hand_landmarks = landmark_pb2.NormalizedLandmarkList()
    for i in range(len(xlist)):
        hand_landmarks.landmark.add(x=xlist[i] * 3 / 4, y=ylist[i]) #3*4 - исправление разрешения экрана на квадратное

    margin = 10
    minX = min(hand_landmarks.landmark, key=lambda i: i.x).x
    maxX = max(hand_landmarks.landmark, key=lambda i: i.x).x
    minY = min(hand_landmarks.landmark, key=lambda i: i.y).y
    maxY = max(hand_landmarks.landmark, key=lambda i: i.y).y

    w = maxX - minX
    h = maxY - minY

    maxLength = max(w, h)
    
    res_lmrks = [[]]
    
    for i in range(len(hand_landmarks.landmark)):
        hand_landmarks.landmark[i].x = ((hand_landmarks.landmark[i].x - minX) * (192 - 2 * margin) / maxLength + margin) / 192
        hand_landmarks.landmark[i].y = ((hand_landmarks.landmark[i].y - minY) * (192 - 2 * margin) / maxLength + margin) / 192
        res_lmrks[0].append([hand_landmarks.landmark[i].x, hand_landmarks.landmark[i].y])
    
    pred = model_loaded.predict(res_lmrks)
    letter = np.argmax(pred,axis=1)

    return ' '.join(str(i) for i in pred[0])

if __name__ == '__main__':
    serve(app, host='0.0.0.0', port=8080)
