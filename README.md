# Docker - Social Landing Page
Docker container running nginx website that is a social media landing page similar to linktree, ContactInBio, Shorby, Lnk, Tab, blah, etc (there is so many out there).

# Usage
You have the following environment variables which allow you to configure the
social landing page:

| Variable name | Description  | Default | Example |
| --- | ---| ---| ---|
| DOMAIN | Domain name  | `none` | DOMAIN="awesome-website"
| META_DESCRIPTION | Meta description | `none` | META_DESCRIPTION="This website is all about awesome"
| META_TITLE | Meta title | `none` | META_TITLE="AWESOME WEBSITE | AWESOME STUFF"
| TITLE | Webpage head title | `TEST TITLE` | TITLE="AWESOME WEBSITE"
| SUB_TITLE | Subtitle | `This is a sub title.` | SUB_TITLE="THIS AWESOME SITE"
| ABOUT_ME | A about me section | `none` | ABOUT_ME="This is an awesome website with awesome things."
| PROFILE_IMG_URL | A profile image above the sub title | `none` | PROFILE_IMG_URL="https://pbs.twimg.com/profile_images/1274630142405427200/ethb5B1m_400x400.jpg"
| YOUTUBE_VIDEO_URL | A embed youtube video above the links button | `https://www.youtube.com/embed/VYOjWnS4cMY` | YOUTUBE_VIDEO_URL="https://www.youtube.com/embed/VYOjWnS4cMY"
| YOUTUBE_URL | Youtube profile button url | `none` | YOUTUBE_URL="https://www.youtube.com/channel/UC20LoHy2mX0LQODrkUalxVQ"
| TWITTER_URL | Twitter profile button url | `none` | TWITTER_URL="https://www.twitter.com/iamcool" 
| FACEBOOK_URL | Facebook profile button url | `none` | FACEBOOK_URL="https://www.facebook.com/iamcool" |
| INSTAGRAM_URL | Instagram profile button url | `none` | INSTAGRAM_URL="https://www.instagram.com/iamcool"
| SNAPCHAT_URL | Snapchat profile button url | `none` | SNAPCHAT_URL="https://www.snapchat.com/iamcool"
| GITHUB_URL | Github profile button url | `none` | GITHUB_URL="https://www.github.com/iamcool"
| EMAIL  | Email to be used for the email button | `none` | EMAIL="iamcool@awesome-website.com"

## Build docker image locally
```bash
docker build -t sociallandingpage .
```

## Run locally
```bash
docker run --rm -d -p 80:80 \
-e DOMAIN='notlinktree-sudovinh' \
-e META_DESCRIPTION='This is sudovinh notlinktree social landing page.' \
-e META_TITLE='Notlinktree-sudovinh' \
-e TITLE='Notlinktree-sudovinh' \
-e SUB_TITLE='Welcome non-existing fans!' \
-e ABOUT_ME='Sudovinh is an super non-micro influencer' \
-e PROFILE_IMG_URL='https://pbs.twimg.com/profile_images/1274630142405427200/ethb5B1m_400x400.jpg' \
-e YOUTUBE_VIDEO_URL='https://www.youtube.com/embed/7zil-zsn-a4?autoplay=1&mute=1' \
-e YOUTUBE_URL='https://www.youtube.com/channel/UCdupcYF7zU4SlK7S1sI1vvQ' \
-e TWITTER_URL='https://twitter.com/sudovinh' \
-e FACEBOOK_URL='https://www.facebook.com/sudovinh/' \
-e INSTAGRAM_URL='https://www.instagram.com/sudovinh/' \
-e SNAPCHAT_URL='https://www.snapchat.com/add/djvinhii' \
-e GITHUB_URL='https://github.com/sudovinh' \
-e EMAIL='thisiscool@sudovinh.com' \
--name testpage sociallandingpage:latest
```

## Accessing the page locally
Go to your browser then type the following in the url:
```bash
localhost:80
```
