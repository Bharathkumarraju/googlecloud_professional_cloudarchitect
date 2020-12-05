
Repository: git clone https://GitHub.com/GoogleCloudPlatform/training-data-analyst.git




student_04_0805777d1e27@cloudshell:~ (qwiklabs-gcp-04-d5c6b3cd0ee8)$ mkdir gcp-course
student_04_0805777d1e27@cloudshell:~ (qwiklabs-gcp-04-d5c6b3cd0ee8)$ cd gcp-course; git clone https://GitHub.com/GoogleCloudPlatform/training-data-analyst.git
Cloning into 'training-data-analyst'...
remote: Enumerating objects: 41, done.
remote: Counting objects: 100% (41/41), done.
remote: Compressing objects: 100% (30/30), done.



student_04_0805777d1e27@cloudshell:~/gcp-course (qwiklabs-gcp-04-d5c6b3cd0ee8)$ cd training-data-analyst/courses/design-process/deploying-apps-to-gcp
student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$ sudo pip3 install -r requirements.txt
Collecting Flask==1.1.1 (from -r requirements.txt (line 1))
  Downloading https://files.pythonhosted.org/packages/9b/93/628509b8d5dc749656a9641f4caf13540e2cdec85276964ff8f43bbb1d3b/Flask-1.1.1-py2.py3-none-any.whl (94kB)
    100% |████████████████████████████████| 102kB 7.8MB/s
Requirement already satisfied: Werkzeug>=0.15 in /usr/local/lib/python3.7/dist-packages (from Flask==1.1.1->-r requirements.txt (line 1)) (1.0.1)
Requirement already satisfied: Jinja2>=2.10.1 in /usr/local/lib/python3.7/dist-packages (from Flask==1.1.1->-r requirements.txt (line 1)) (2.11.2)
Requirement already satisfied: click>=5.1 in /usr/local/lib/python3.7/dist-packages (from Flask==1.1.1->-r requirements.txt (line 1)) (7.0)
Requirement already satisfied: itsdangerous>=0.24 in /usr/local/lib/python3.7/dist-packages (from Flask==1.1.1->-r requirements.txt (line 1)) (1.1.0)
Requirement already satisfied: MarkupSafe>=0.23 in /usr/local/lib/python3.7/dist-packages (from Jinja2>=2.10.1->Flask==1.1.1->-r requirements.txt (line 1)) (1.1.1)
Installing collected packages: Flask
  Found existing installation: Flask 1.1.2
    Uninstalling Flask-1.1.2:
      Successfully uninstalled Flask-1.1.2
Successfully installed Flask-1.1.1
student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$ python3 main.py
 * Serving Flask app "main" (lazy loading)
 * Environment: production
   WARNING: This is a development server. Do not use it in a production deployment.
   Use a production WSGI server instead.
 * Debug mode: on
 * Running on http://0.0.0.0:8080/ (Press CTRL+C to quit)
 * Restarting with stat
 * Debugger is active!
 * Debugger PIN: 850-705-627
127.0.0.1 - - [05/Dec/2020 08:14:08] "GET /?authuser=0 HTTP/1.1" 200 -
127.0.0.1 - - [05/Dec/2020 08:14:10] "GET /favicon.ico HTTP/1.1" 404 -
^Cstudent_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$
student_04_0805777d1e27@cloudshell:~/gcp-course/training-data-analyst/courses/design-process/deploying-apps-to-gcp (qwiklabs-gcp-04-d5c6b3cd0ee8)$





