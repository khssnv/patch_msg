Patch Msg
=========

An example on how to add your convinient method to ROS message python class.

Generate patch
--------------
TODO

Try it
------

```console
# build
catkin clean -y
catkin build --cmake-args \
  -DCMAKE_CXX_STANDARD=17 \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DPYTHON_EXECUTABLE=/usr/bin/python3 \
  -DPYTHON_INCLUDE_DIR=/usr/include/python3.6m \
  -DPYTHON_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.6m.so

# check
ipython
>>> from patch_msg.msg import State
>>> s = State(state=State.ON)
>>> str(s)
>>> Ctrl^D

# patch
rosrun patch_msg patch.sh

# check patched
ipython
>>> from patch_msg.msg import State
>>> s = State(state=State.ON)
>>> str(s)
>>> Ctrl^D
```
