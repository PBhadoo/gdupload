# Bhadoo Cloud Drive

Save Files from URL to Google Drive

## Required

* Open [Google Dev Credentials Site](https://console.developers.google.com/apis/credentials).
* Create a Project, name as you like.
* Enable [Drive API](https://console.developers.google.com/apis/library/drive.googleapis.com)
* In [Credentials Page](https://console.developers.google.com/apis/credentials) Click `Create Credentials` and then Click `OAuth Client ID`.
* Select Web Application.
* In `Authorized JavaScript origins` enter your domain name or IP whichever you are using for this app.
* In `Authorized redirect URIs` enter your domain name or IP with `/api/oauth/google/callback` at last.
* eg. for `https://bhadooclouduploader.herokuapp.com` it's `https://bhadooclouduploader.herokuapp.com/api/oauth/google/callback`
* Copy your details.
* You'll need these 3 when deploying to Heroku using below button.

## Deploy to Ubuntu

* Use your own Client Credentials if you're deploying it, or it won't work.
* `git clone https://github.com/PBhadoo/gdupload app`
* `cd app`
* `chmod +x mvnw`
* `export client_id=58094879805-jdsomen2duv9ilj81fcu1qkag5todele.apps.googleusercontent.com`
* `export client_secret=EG0OYdjcllAGJ81eEMpQ3vW6`
* `export redirect_uri=https://gdupload.hashhackers.com/api/oauth/google/callback`
* `tmux new -s 1`
* `./mvnw package`
* `./mvnw spring-boot:run`

Source: https://github.com/cloud-transfer/cloud-transfer-backend
