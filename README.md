# gitlab-runner
gitlab-runner based on alpine linux

This image contains dockerd.  
So runner uses docker inside gitlab-runner.  

If you want to use insecure registry, you can run gitlab-runner with --add-host=myregistry:`<IP>` option.  
By now the registry's port is only 5000.

Environment variables
---

| variables | example values | description |
| --------- | ------ | ----------- |
| CI_SERVER_URL  | `http://<url>` | gitlab url(*) |
| REGISTRATION_TOKEN | `XXXXXXXXXX` | token of gitlab(*) |
| RUNNER_EXECUTOR | `docker` | This image contains dockerd. So normally you set docker |
| RUNNER_BUILDS_DIR | `/home/gitlab-runner` | you can set like exsample |
| DOCKER_IMAGE | `alpine:edge` | you can set as you like(*) |

(*)you have to set the value
