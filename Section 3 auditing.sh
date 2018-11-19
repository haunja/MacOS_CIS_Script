# -------------------------------------
echo '<div class="item">'

#echo '<span class="tag">Manual</span>'
echo '<h2>3.1.1 Retain system.log for 90 or more days (Scored)</h2>'

echo '<h4>Expected Result</h4>'
echo '<p class="result">90</p>'

echo '<h4>Actual Result</h4>'
RESULT=$(grep -i system.log /etc/asl.conf | grep -Eo ttl="([[:digit:]]+)" | grep -Eo "([[:digit:]]+)")
echo "<p class=\"result\">$RESULT &nbsp;</p>"

echo '<h4>Findings</h4>'
if [[ "$RESULT" =~ "90" ]];
then
    echo '<p class="result compliant">Compliant</p>'
else
    echo '<p class="result non-compliant">Non-Compliant</p>'

    echo '<h5>Remediation</h5>'
    # echo '<p><ol>'
    # echo "<li>Run this command in terminal:<br /><code>sudo vim /etc/asl.conf</code></li>"
    # echo "<li>Replace or edit the current setting with the following:<br /><code>system.log mode=0640 format=bsd rotate=utc compress file_max=5M ttl=90</code></li>"
    # echo "<li>Run the following command in Terminal:<br /><code>sudo /usr/bin/sed -i.bak 's/^>\ system\.log.*/>\ system\.log\ mode=640\ format=bsd\ rotate=utc\ compress\ file_max=5M\ ttl=90/' /etc/asl.conf</code></li>"
    # echo '</ol></p>'
    echo '<p>Run the system configuration script again and reboot the device before running the audit script.</p>'
fi    

echo '</div>'
# -------------------------------------
echo '<div class="item">'

#echo '<span class="tag">Manual</span>'
echo '<h2>3.1.2 Retain appfirewall.log for 90 or more days (Scored)</h2>'

echo '<h4>Expected Result</h4>'
echo '<p class="result">90</p>'

echo '<h4>Actual Result</h4>'
RESULT=$(grep -i appfirewall.log /etc/asl.conf | grep -Eo ttl="([[:digit:]]+)" | grep -Eo "([[:digit:]]+)")
echo "<p class=\"result\">$RESULT &nbsp;</p>"

echo '<h4>Findings</h4>'
if [[ "$RESULT" =~ "90" ]];
then
    echo '<p class="result compliant">Compliant</p>'
else
    echo '<p class="result non-compliant">Non-Compliant</p>'

    echo '<h5>Remediation</h5>'
    # echo '<p><ol>'
    # echo '<li>Run this command in terminal:<br /><code>sudo vim /etc/asl.conf</code></li>'
    # echo "<li>Replace or edit the current setting with the following:<br /><code>appfirewall.log mode=0640 format=bsd rotate=utc compress file_max=5M ttl=90</code></li>"
    # echo "<li>Run the following command in terminal:<br /><code>sudo /usr/bin/sed -i.bak 's/^\?\ \[=\ Facility\ com.apple.alf.logging\]\ .*/\?\ \[=\ Facility\ com.apple.alf.logging\]\ file\ appfirewall.log\ mode=0640\ format=bsd\ rotate=utc\ compress\ file_max=5M\ ttl=90/' /etc/asl.conf</code></li>"
    # echo '</ol></p>'
    echo '<p>Run the system configuration script again and reboot the device before running the audit script.</p>'
fi

echo '</div>'
# -------------------------------------
echo '<div class="item">'

#echo '<span class="tag">Manual</span>'
echo '<h2>3.1.3 Retain authd.log for 90 or more days (Scored)</h2>'

echo '<h4>Expected Result</h4>'
echo '<p class="result">90</p>'

echo '<h4>Actual Result</h4>'
RESULT=$(grep -i authd.log /etc/asl/com.apple.authd | grep -Eo ttl="([[:digit:]]+)" | grep -Eo "([[:digit:]]+)")
echo "<p class=\"result\">$RESULT &nbsp;</p>"

echo '<h4>Findings</h4>'
if [[ "$RESULT" =~ "90" ]];
then
    echo '<p class="result compliant">Compliant</p>'
else
    echo '<p class="result non-compliant">Non-Compliant</p>'

    echo '<h5>Remediation</h5>'
    # echo '<p><ol>'
    # echo '<li>Run the following command in Terminal:<br/><code>sudo vim /etc/asl/com.apple.authd</code></li>'
    # echo '<li>Replace or edit the current setting with the following:<br/><code>* file /var/log/authd.log mode=0640 format=bsd rotate=utc compress file_max=5M ttl=90</code></li>'
    # echo '<li>Run the following command in Terminal:<br />'
    # echo "<code>sudo /usr/bin/sed -i.bak 's/^\*\ file\ \/var\/log\/authd\.log.*/\*\ file\ \/var\/log\/authd\.log\ mode=640\ format=bsd\ rotate=utc\ compress\ file_max=5M\ ttl=90/' /etc/asl/com.apple.authd</code></li>"
    # echo '</ol></p>'
    echo '<p>Run the system configuration script again and reboot the device before running the audit script.</p>'
fi

echo '</div>'