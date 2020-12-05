
Select the training-data-analyst/courses/design-process/deploying-apps-to-gcp folder in the explorer tree on the left.

From the File menu, select New File, and name the file app.yaml.

Paste the following into the file you just created:

runtime: python37

student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$ gcloud app create --region=us-central
You are creating an app for project [qwiklabs-gcp-04-d5c6b3cd0ee8].
WARNING: Creating an App Engine application for a project is irreversible and the region
cannot be changed. More information about regions is at
<https://cloud.google.com/appengine/docs/locations>.

Creating App Engine application in project [qwiklabs-gcp-04-d5c6b3cd0ee8] and region [us-central]....done.
Success! The app is now created. Please use `gcloud app deploy` to deploy your first app.
student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$



student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$ gcloud app deploy --version=one --quiet
Services to deploy:

descriptor:      [/home/student_04_0805777d1e27/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp/app.yaml]
source:          [/home/student_04_0805777d1e27/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp]
target project:  [qwiklabs-gcp-04-d5c6b3cd0ee8]
target service:  [default]
target version:  [one]
target url:      [https://qwiklabs-gcp-04-d5c6b3cd0ee8.uc.r.appspot.com]


Beginning deployment of service [default]...
Created .gcloudignore file. See `gcloud topic gcloudignore` for details.
╔════════════════════════════════════════════════════════════╗
╠═ Uploading 7 files to Google Cloud Storage                ═╣
╚════════════════════════════════════════════════════════════╝
File upload done.
Updating service [default]...done.
Setting traffic split service [default]...done.
Deployed service [default] to [https://qwiklabs-gcp-04-d5c6b3cd0ee8.uc.r.appspot.com]

You can stream logs from the command line by running:
  $ gcloud app logs tail -s default

To view your application in the web browser run:
  $ gcloud app browse
student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$ gcloud app browse
Did not detect your browser. Go to this link to view your app:
https://qwiklabs-gcp-04-d5c6b3cd0ee8.uc.r.appspot.com
student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$



student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$ gcloud app browse
Did not detect your browser. Go to this link to view your app:
https://qwiklabs-gcp-04-d5c6b3cd0ee8.uc.r.appspot.com



student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$ gcloud app deploy --version=two --quiet
Services to deploy:

descriptor:      [/home/student_04_0805777d1e27/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp/app.yaml]
source:          [/home/student_04_0805777d1e27/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp]
target project:  [qwiklabs-gcp-04-d5c6b3cd0ee8]
target service:  [default]
target version:  [two]
target url:      [https://qwiklabs-gcp-04-d5c6b3cd0ee8.uc.r.appspot.com]


Beginning deployment of service [default]...
╔════════════════════════════════════════════════════════════╗
╠═ Uploading 1 file to Google Cloud Storage                 ═╣
╚════════════════════════════════════════════════════════════╝
File upload done.
Updating service [default]...done.
Setting traffic split for service [default]...done.
Deployed service [default] to [https://qwiklabs-gcp-04-d5c6b3cd0ee8.uc.r.appspot.com]

You can stream logs from the command line by running:
  $ gcloud app logs tail -s default

To view your application in the web browser run:
  $ gcloud app browse
student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$
