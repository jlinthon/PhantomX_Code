#! This code is dependent on Python and PIP (WINDOWS OS), both are needed in order to RUN #! 

import pynput


#! Listener is whats writting our key events so lets start with that !#
from pynput.keyboard import Key, Listener

#! This line creates 2 funtions called on_press and on_release, Adding a print statement to the function to see it working real time #!
def on_press(key):
    print('{0} pressed'.format(key))


def on_release(key):
    if key == Key.esc:
        return False


#! these are the funtions that are going to be called when a key is pressed and when a key is released #!
with Listener(on_press=on_press, on_release=on_release) as listener:
    listener.join()
