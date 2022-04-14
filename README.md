# Quick start to setting tmaxgooroom openQA testing

1. Install openSUSE Leap

2. Copy this project to openqa/tests
 - $ cp {this respository} /var/lib/openqa/tests/tmaxgooroom

3. Install openQA
 - $ ./install-openqa.sh

4. Apply Job Template
 - $ ./setting.sh

5. Locate tmaxgooroom iso on /var/lib/openqa/factory/iso/
 - You can download tmaxgooroom iso image from below site
 - https://tmaxanc.com/#!/download/TmaxOS/product

6. Test
 - $ ./exec-test.sh

7. References
 - https://github.com/os-autoinst/openQA/blob/master/docs/GettingStarted.asciidoc#gettingstarted
 - https://open.qa/docs/#gettingstarted
 - http://open.qa/api/testapi/
