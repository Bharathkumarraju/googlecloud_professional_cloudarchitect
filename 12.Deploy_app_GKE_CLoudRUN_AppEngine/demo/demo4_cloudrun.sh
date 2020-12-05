student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$ gcloud builds submit --tag gcr.io/$DEVSHELL_PROJECT_ID/cloud-run-image:v0.1 .
Creating temporary tarball archive of 7 file(s) totalling 1.7 KiB before compression.
Uploading tarball of [.] to [gs://qwiklabs-gcp-04-d5c6b3cd0ee8_cloudbuild/source/1607129053.472195-20caab58d2f54cdf95b5b963fc35230a.tgz]
Created [https://cloudbuild.googleapis.com/v1/projects/qwiklabs-gcp-04-d5c6b3cd0ee8/builds/e394693b-6f5b-48e5-be6a-84fc5ec98fa4].
Logs are available at [https://console.cloud.google.com/cloud-build/builds/e394693b-6f5b-48e5-be6a-84fc5ec98fa4?project=936732110595].
--------------------------------------------------------------------------------------------------- REMOTE BUILD OUTPUT ---------------------------------------------------------------------------------------------------
starting build "e394693b-6f5b-48e5-be6a-84fc5ec98fa4"

FETCHSOURCE
Fetching storage object: gs://qwiklabs-gcp-04-d5c6b3cd0ee8_cloudbuild/source/1607129053.472195-20caab58d2f54cdf95b5b963fc35230a.tgz#1607129054441558
Copying gs://qwiklabs-gcp-04-d5c6b3cd0ee8_cloudbuild/source/1607129053.472195-20caab58d2f54cdf95b5b963fc35230a.tgz#1607129054441558...
/ [1 files][  1.1 KiB/  1.1 KiB]
Operation completed over 1 objects/1.1 KiB.
BUILD
Already have image (with digest): gcr.io/cloud-builders/docker
Sending build context to Docker daemon  9.216kB
Step 1/7 : FROM python:3.7
3.7: Pulling from library/python
756975cb9c7e: Pulling fs layer
d77915b4e630: Pulling fs layer
5f37a0a41b6b: Pulling fs layer
96b2c1e36db5: Pulling fs layer
c495e8de12d2: Pulling fs layer
33382189822a: Pulling fs layer
6eaa0b6b8562: Pulling fs layer
adbdcbacafe9: Pulling fs layer
4265e1f512d4: Pulling fs layer
96b2c1e36db5: Waiting
c495e8de12d2: Waiting
33382189822a: Waiting
6eaa0b6b8562: Waiting
adbdcbacafe9: Waiting
4265e1f512d4: Waiting
5f37a0a41b6b: Verifying Checksum
5f37a0a41b6b: Download complete
d77915b4e630: Verifying Checksum
d77915b4e630: Download complete
 ---> Running in 20dad4709ef9
Removing intermediate container 20dad4709ef9
 ---> ba357895d0c9
Step 7/7 : CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 main:app
 ---> Running in e0fa0e510e8b
Removing intermediate container e0fa0e510e8b
 ---> 349a769ee477
Successfully built 349a769ee477
Successfully tagged gcr.io/qwiklabs-gcp-04-d5c6b3cd0ee8/cloud-run-image:v0.1
PUSH
Pushing gcr.io/qwiklabs-gcp-04-d5c6b3cd0ee8/cloud-run-image:v0.1
The push refers to repository [gcr.io/qwiklabs-gcp-04-d5c6b3cd0ee8/cloud-run-image]
abd42e3a5304: Preparing
e5df3c922c6a: Preparing
0cff8433d091: Preparing
0bfdcc7112a6: Preparing
eaed50855d41: Preparing
026c477245c5: Preparing
ee78bcfefc78: Preparing
c4a6d8ca5d2c: Preparing
059ed1793a98: Preparing
712264374d24: Preparing
475b4eb79695: Preparing
f3be340a54b9: Preparing
114ca5b7280f: Preparing
026c477245c5: Waiting
ee78bcfefc78: Waiting
c4a6d8ca5d2c: Waiting
059ed1793a98: Waiting
712264374d24: Waiting
475b4eb79695: Waiting
f3be340a54b9: Waiting
114ca5b7280f: Waiting
eaed50855d41: Layer already exists
026c477245c5: Layer already exists
ee78bcfefc78: Layer already exists
c4a6d8ca5d2c: Layer already exists
059ed1793a98: Layer already exists
712264374d24: Layer already exists
475b4eb79695: Layer already exists
f3be340a54b9: Layer already exists
114ca5b7280f: Layer already exists
0cff8433d091: Pushed
0bfdcc7112a6: Pushed
e5df3c922c6a: Pushed
abd42e3a5304: Pushed
v0.1: digest: sha256:302fa6df96d3f79a2ebf1d3d1c04090014e18658a429f435106378645a0770c2 size: 3055
DONE
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ID                                    CREATE_TIME                DURATION  SOURCE                                                                                                      IMAGES                                                    STATUS
e394693b-6f5b-48e5-be6a-84fc5ec98fa4  2020-12-05T00:44:15+00:00  43S       gs://qwiklabs-gcp-04-d5c6b3cd0ee8_cloudbuild/source/1607129053.472195-20caab58d2f54cdf95b5b963fc35230a.tgz  gcr.io/qwiklabs-gcp-04-d5c6b3cd0ee8/cloud-run-image:v0.1  SUCCESS
student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$
