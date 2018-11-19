echo '</div>'
# -------------------------------------
echo '<div class="item">'

echo '<h2>1.5 Enable OS X update installs (Scored)</h2>'

echo '<h4>Expected Result</h4>'
echo '<p class="result">1</p>'

echo '<h4>Actual Result</h4>'
RESULT=$(defaults read /Library/Preferences/com.apple.commerce.plist AutoUpdateRestartRequired)
echo "<p class=\"result\">$RESULT &nbsp;</p>"

echo '<h4>Findings</h4>'
if [[ "$RESULT" = "1" ]];
then
    echo '<p class="result compliant">Compliant</p>'
else
    echo '<p class="result non-compliant">Non-Compliant</p>'

    echo '<h5>Remediation</h5>'
    echo '<p>'
    echo 'Open a terminal and enter the following command:<br />'
    echo '<code>sudo defaults write /Library/Preferences/com.apple.commerce.plist AutoUpdateRestartRequired -bool TRUE</code>'
    echo '</p>'
fi

echo '</div>'