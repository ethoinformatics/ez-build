ez-build
========

1. Change directories to wherever you want to store the ez-build project
2. Make sure you've generated ssh keys for your github account. Follow [these instructions](https://help.github.com/articles/generating-ssh-keys/)

3. clone the repo `git clone git@github.com:ethoinformatics/ez-build`
  * if you've already cloned the repo, run `git pull`
  * You can also just use the github desktop app if you prefer.

4. `cd ez-build` and run `git submodule update --init`

5. You may need to manually update each of the submodules. It can't hurt to do it. Here's how:

```bash
$ cd d3-timeline
$ git pull origin master
$ cd ../ethoinfo-framework
$ git pull origin master
$ cd ../ethoinfo-project-app
$ git pull origin master
```

then  `cd ..` to get back to the main ez-build directory.

6. run `./build.sh`

7. `cd ethoinfo-project-app/dist/www`

8. Then you can run `python -m SimpleHTTPServer` and visit localhost:8000/ if you want to see it in a desktop browser. For python 3 users, you might need to type `python3` instead of `python`.
9. To see it on your Android device, `cd dist/`, then
10. `cordova platform add android`
  *  You might also need to add a few plugins. The plugin list is as follows:
    * cordova-plugin-device 1.0.1 "Device"
    * cordova-plugin-geolocation 1.0.1 "Geolocation"
    * cordova-plugin-whitelist 1.0.0 "Whitelist"
    * de.appplant.cordova.plugin.background-mode 0.6.4 "BackgroundMode"
  *  You can add these by running `cordova plugin add <plugin name>`
11. Plug in your Android device and `cordova run android`

Check that your Android installation is up to date with your device, and delete any older versions of the app from your device before installing.

To update your local copy of the project when changes are made by others, repeat steps 5 through 8.
