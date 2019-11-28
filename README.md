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

## Deploy to Heroku

Before you deploy follow the above steps or it won't work.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

Source: https://github.com/ParveenBhadooOfficial/cloud-transfer-backend
