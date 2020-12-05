student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$ gcloud container clusters get-credentials cluster-1 --zone us-central1-c --project qwiklabs-gcp-04-d5c6b3cd0ee8
Fetching cluster endpoint and auth data.
kubeconfig entry generated for cluster-1.
student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$


student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$ kubectl get nodes -o wide
NAME                                       STATUS   ROLES    AGE     VERSION             INTERNAL-IP   EXTERNAL-IP      OS-IMAGE                             KERNEL-VERSION   CONTAINER-RUNTIME
gke-cluster-1-default-pool-336a86ff-fj9l   Ready    <none>   4m15s   v1.16.15-gke.4300   10.128.0.4    34.123.229.80    Container-Optimized OS from Google   4.19.112+        docker://19.3.1
gke-cluster-1-default-pool-336a86ff-j4wt   Ready    <none>   4m24s   v1.16.15-gke.4300   10.128.0.3    35.239.245.102   Container-Optimized OS from Google   4.19.112+        docker://19.3.1
gke-cluster-1-default-pool-336a86ff-vrgr   Ready    <none>   4m24s   v1.16.15-gke.4300   10.128.0.2    34.121.56.194    Container-Optimized OS from Google   4.19.112+        docker://19.3.1
student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$


To use K8S we need to build docker images-

student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$ gcloud builds submit --tag gcr.io/$DEVSHELL_PROJECT_ID/devops-image:v0.2 .
Creating temporary tarball archive of 7 file(s) totalling 1.0 KiB before compression.
Uploading tarball of [.] to [gs://qwiklabs-gcp-04-d5c6b3cd0ee8_cloudbuild/source/1607128624.004073-393ddba8cb79470c810f4b3b396fde1e.tgz]
Created [https://cloudbuild.googleapis.com/v1/projects/qwiklabs-gcp-04-d5c6b3cd0ee8/builds/3173012f-408c-4805-851f-c7fa2d21a09c].
Logs are available at [https://console.cloud.google.com/cloud-build/builds/3173012f-408c-4805-851f-c7fa2d21a09c?project=936732110595].
--------------------------------------------------------------------------------------------------- REMOTE BUILD OUTPUT ---------------------------------------------------------------------------------------------------
starting build "3173012f-408c-4805-851f-c7fa2d21a09c"

FETCHSOURCE
Fetching storage object: gs://qwiklabs-gcp-04-d5c6b3cd0ee8_cloudbuild/source/1607128624.004073-393ddba8cb79470c810f4b3b396fde1e.tgz#1607128625435020
Copying gs://qwiklabs-gcp-04-d5c6b3cd0ee8_cloudbuild/source/1607128624.004073-393ddba8cb79470c810f4b3b396fde1e.tgz#1607128625435020...
/ [1 files][  907.0 B/  907.0 B]
Operation completed over 1 objects/907.0 B.
BUILD
Already have image (with digest): gcr.io/cloud-builders/docker
Sending build context to Docker daemon  8.192kB
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
d77915b4e630: Verifying Checksum
d77915b4e630: Download complete
5f37a0a41b6b: Verifying Checksum
5f37a0a41b6b: Download complete
756975cb9c7e: Verifying Checksum
756975cb9c7e: Download complete
33382189822a: Verifying Checksum
33382189822a: Download complete
96b2c1e36db5: Verifying Checksum
96b2c1e36db5: Download complete
adbdcbacafe9: Pull complete
4265e1f512d4: Pull complete
Digest: sha256:589ad424900170aa321efbbc904b233578b708db18857e6b7d30959e022b5648
Status: Downloaded newer image for python:3.7
 ---> 7fefbebd95b5
Step 2/7 : WORKDIR /app
 ---> Running in 7cb9565d1dc5
Removing intermediate container 7cb9565d1dc5
 ---> e57fa8eb974f
Step 3/7 : COPY . .
 ---> c1e15e70228e
Step 4/7 : RUN pip install gunicorn
 ---> Running in 86298d41b6f3
Collecting gunicorn
  Downloading gunicorn-20.0.4-py2.py3-none-any.whl (77 kB)
Requirement already satisfied: setuptools>=3.0 in /usr/local/lib/python3.7/site-packages (from gunicorn) (50.3.2)
Installing collected packages: gunicorn
Successfully installed gunicorn-20.0.4
Removing intermediate container 86298d41b6f3
 ---> 501c2c0085f2
Step 5/7 : RUN pip install -r requirements.txt
 ---> Running in 74acf4260eb2
Collecting Flask==1.1.1
  Downloading Flask-1.1.1-py2.py3-none-any.whl (94 kB)
Collecting click>=5.1
  Downloading click-7.1.2-py2.py3-none-any.whl (82 kB)
Collecting itsdangerous>=0.24
  Downloading itsdangerous-1.1.0-py2.py3-none-any.whl (16 kB)
Collecting Jinja2>=2.10.1
  Downloading Jinja2-2.11.2-py2.py3-none-any.whl (125 kB)
Collecting MarkupSafe>=0.23
  Downloading MarkupSafe-1.1.1-cp37-cp37m-manylinux1_x86_64.whl (27 kB)
Collecting Werkzeug>=0.15
  Downloading Werkzeug-1.0.1-py2.py3-none-any.whl (298 kB)
Installing collected packages: MarkupSafe, Werkzeug, Jinja2, itsdangerous, click, Flask
Successfully installed Flask-1.1.1 Jinja2-2.11.2 MarkupSafe-1.1.1 Werkzeug-1.0.1 click-7.1.2 itsdangerous-1.1.0
Removing intermediate container 74acf4260eb2
 ---> 5d5552802574
Step 6/7 : ENV PORT=80
 ---> Running in bb4caa355e1d
Removing intermediate container bb4caa355e1d
Removing intermediate container bb4caa355e1d
 ---> ddc7ead7b779
Step 7/7 : CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 main:app
 ---> Running in be0171889554
Removing intermediate container be0171889554
 ---> e46761f06753
Successfully built e46761f06753
Successfully tagged gcr.io/qwiklabs-gcp-04-d5c6b3cd0ee8/devops-image:v0.2
PUSH
Pushing gcr.io/qwiklabs-gcp-04-d5c6b3cd0ee8/devops-image:v0.2
The push refers to repository [gcr.io/qwiklabs-gcp-04-d5c6b3cd0ee8/devops-image]
76bec95185b3: Preparing
8da0a22a6b3d: Preparing
9f795ae2fb85: Preparing
ce9bdf3adb99: Preparing
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
ce9bdf3adb99: Pushed
9f795ae2fb85: Pushed
712264374d24: Layer already exists
f3be340a54b9: Layer already exists
475b4eb79695: Layer already exists
8da0a22a6b3d: Pushed
76bec95185b3: Pushed
114ca5b7280f: Layer already exists
v0.2: digest: sha256:a2d26a6cc017bd98b4ccb7c81682d1f4d473255d6f74f6a677cfab293e1900d3 size: 3054
DONE
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ID                                    CREATE_TIME                DURATION  SOURCE                                                                                                      IMAGES                   STATUS
3173012f-408c-4805-851f-c7fa2d21a09c  2020-12-05T00:37:06+00:00  46S       gs://qwiklabs-gcp-04-d5c6b3cd0ee8_cloudbuild/source/1607128624.004073-393ddba8cb79470c810f4b3b396fde1e.tgz  gcr.io/qwiklabs-gcp-04-d5c6b3cd0ee8/devops-image:v0.2  SUCCESS
student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$



student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$ kubectl apply -f kubernetes-config.yaml
deployment.apps/devops-deployment created
service/devops-deployment-lb created
student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$


student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$ kubectl get svc
NAME                   TYPE           CLUSTER-IP   EXTERNAL-IP   PORT(S)        AGE
devops-deployment-lb   LoadBalancer   10.8.3.65    <pending>     80:30023/TCP   28s
kubernetes             ClusterIP      10.8.0.1     <none>        443/TCP        10m
student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$ kubectl get deploy
NAME                READY   UP-TO-DATE   AVAILABLE   AGE
devops-deployment   3/3     3            3           34s
student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$ kubectl get pods
NAME                                 READY   STATUS    RESTARTS   AGE
devops-deployment-5b8c4cdf6b-gdqth   1/1     Running   0          40s
devops-deployment-5b8c4cdf6b-gdsgg   1/1     Running   0          40s
devops-deployment-5b8c4cdf6b-wz6tv   1/1     Running   0          40s
student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$

Get the EXTERNAL-IP as below

student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$ kubectl get svc
NAME                   TYPE           CLUSTER-IP   EXTERNAL-IP      PORT(S)        AGE
devops-deployment-lb   LoadBalancer   10.8.3.65    35.193.200.177   80:30023/TCP   72s
kubernetes             ClusterIP      10.8.0.1     <none>           443/TCP        10m
student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$