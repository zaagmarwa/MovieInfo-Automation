# MovieInfo-Automation



## Configuration:

1. clone [MovieInfo](https://github.com/alfianlosari/MovieInfoMVVMiOS) iOS application.
2. Generate the artifact (.app) that will be used in the APP_LOCATION env variable.

          xcodebuild -workspace 'MovieInfo.xcworkspace' -configuration Release -scheme 'MovieInfo' -sdk iphonesimulatorX.Y EXCLUDED_ARCHS=arm64

    After the BUILD SUCCEEDED you get the MovieInfo.app path

    PS:  ***X.Y*** represents the simulator version

3. Set env variables using the following commands:


        export REMOTE_URL=http://localhost:4723/wd/hub
        export PLATFORM_VERSION=15.0
        export DEVICE_NAME="iPhone 11"
        export APP_LOCATION=/Users/marwazaag/Desktop/MovieInfo.app 
