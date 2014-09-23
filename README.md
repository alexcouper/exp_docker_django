exp_docker_django
=================

Experimental repo for django docker usage.

To get going:

```
$ boot2docker up
$ export <whatever it told you to>
$ docker build -t="exp_docker_django" .
$ docker run -t -i -p 5000:8000 exp_docker_django
```

Then go to a "http://<ipaddress>:5000/hello" in a web browser!

