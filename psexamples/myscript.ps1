###################################
#  basic variables, objects, etc
###################################
$name="Matt";
echo $name;

#display the current working directory
$cwd=(Get-Item -Path ".\" -Verbose).Fullname;
echo "My current working directory is: $cwd";

#well, look at that!
$myuser=(whoami);
echo "current user is: $myuser"

#date object example/usage
$today = (Get-Date);
$year = $today.Year;
$month = $today.Month;

echo "Today is: $today";
echo "The year is $year";
echo "The month is $month";

###################################
#   LOOPS
###################################

# example for loop
for($i=10; $i -gt 0; $i--){
  echo $i;
}

# do-while example loop
$number = 0;
do{
  echo $number;
  $number++;
}
while($number -le 10);

# foreach example loop
$fruits = @("apple","orange","grape");
foreach($fruit in $fruits){
  echo $fruit;
}


###################################
#   USER INPUTS
###################################
read-host "Press the enter key..."

$age=read-host "What is your age?";
write-host "Your age is $age";

clear-host

$option = "null";
$oldbgcolor = $host.UI.RawUI.BackgroundColor;
$oldfgcolor = $host.UI.RawUI.ForegroundColor;

do{
  $host.UI.RawUI.BackgroundColor = "black";
  $host.UI.RawUI.ForegroundColor = "green";

  echo "+_____________________________________________________________+";
  echo "| IT-Network Specialist Mission Control v0.1.0                |";
  echo "| Awaiting your command...                                    |";
  echo "+_____________________________________________________________+";
  echo "| ip      - shows the current ip configuration of your system |";
  echo "| release - releases the ip configuration of your system      |";
  echo "| renew   - renews your ip configuration of your system       |";
  echo "| flush   - flushdns of your ip configuration of your system  |";
  echo "| user    - shows your current user name                      |";
  echo "| exit    - exit out of the program                           |";
  echo "+_____________________________________________________________+";

  $option = read-host "What option would you like to select?";
  if($option -eq "ip"){
    $host.UI.RawUI.BackgroundColor = $oldbgcolor;
    $host.UI.RawUI.ForegroundColor = $oldfgcolor;
    ipconfig /all
  }
  if($option -eq "release"){
    $host.UI.RawUI.BackgroundColor = $oldbgcolor;
    $host.UI.RawUI.ForegroundColor = $oldfgcolor;
    ipconfig /release
  }
  if($option -eq "renew"){
    $host.UI.RawUI.BackgroundColor = $oldbgcolor;
    $host.UI.RawUI.ForegroundColor = $oldfgcolor;
    ipconfig /renew
  }
  if($option -eq "flush"){
    $host.UI.RawUI.BackgroundColor = $oldbgcolor;
    $host.UI.RawUI.ForegroundColor = $oldfgcolor;
    ipconfig /flushdns
  }
  if($option -eq "user"){
    $host.UI.RawUI.BackgroundColor = $oldbgcolor;
    $host.UI.RawUI.ForegroundColor = $oldfgcolor;
    whoami
  }
}
while($option -ne "exit");
$host.UI.RawUI.BackgroundColor = $oldbgcolor;
$host.UI.RawUI.ForegroundColor = $oldfgcolor;
