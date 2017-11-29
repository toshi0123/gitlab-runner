# gitlab-runner
gitlab-runner based on alpine linux

This image contains dockerd.  
So runner uses docker inside gitlab-runner.  

If you want to use insecure registry, you can run gitlab-runner with --add-host=myregistry:<IP> option.
By now the registry's port is only 5000.
