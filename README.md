ez-build
========

1. Make sure you've generated ssh keys for your github account. Follow [these instructions](https://help.github.com/articles/generating-ssh-keys/)

2. clone the repo `git clone git@github.com:ethoinformatics/ez-build`
  *  if you've already cloned the repo, run `git pull`

2. `cd ez-build` and run `git submodule update --init`

3. run `./build.sh`

4. `cd ethoinfo-project-app/dist/www`

4. Then you can run `python -m SimpleHTTPServer` and visit localhost:8000/ if you want to see it in a desktop browser.
5. To see it on your Android device, `cd dist/`, then
6. `cordova platform add android`
  *  You might also need to add a few plugins. The plugin list is as follows:
    * cordova-plugin-device 1.0.1 "Device"
    * cordova-plugin-geolocation 1.0.1 "Geolocation"
    * cordova-plugin-whitelist 1.0.0 "Whitelist"
    * de.appplant.cordova.plugin.background-mode 0.6.4 "BackgroundMode"
  *  You can add these by running `cordova plugin add <plugin name>`
7. Plug in your Android device and `cordova run android`

Check that your Android installation is up to date with your device, and delete any older versions of the app from your device before installing.
