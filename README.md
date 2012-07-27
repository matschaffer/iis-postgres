# Setup for IIS and Postgres on Windows on EC2

## WinRM notes


    winrm quickconfig -transport:HTTPS
    winrm create winrm/config/listener?Address=*+Transport=HTTPS '@{Hostname="ec2-50-17-21-9.compute-1.amazonaws.com";CertificateThumbprint="abcd"}'

From Stocum:

I think it's just talking about standard HTTPS SSL certs. I don't remember ever having to configure that though, or even think about it. As far as creating them, I think you can do it from the command line using certreq and certutil http://technet.microsoft.com/en-us/library/cc725793(WS.10).aspx .

To activate windows, you can put the key in sysprep.xml . You can use WAIK 3 to generate a template, then just replace the key as needed https://www.microsoft.com/en-us/download/details.aspx?id=5753 . I'm mostly used to dealing with activation through a KMS. If the machine isn't activating right away, you could probably do a auto login in sys prep and add "slmgr -ato" to RunOnce, then either log off or reboot, but I think it'll try to activate automatically on first boot if it has a cd-key. You can also use slmgr to change the key, and do a number of activation things.
