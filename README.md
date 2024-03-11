# eldalex_infra
Создать ~/.ssh/config
прописать проксирование через него.

Host bastion
  HostName 62.84.112.140
  User alex

Host someinternalhost
  HostName 10.128.0.27
  User alex
  ProxyJump bastion

Зайти по прямому имени.
**PS C:\Users\Alex\.ssh> ssh someinternalhost
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.4.0-170-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro
Last login: Sat Feb 17 21:25:13 2024 from 10.128.0.29
alex@someinternalhost:~$**


bastion_IP = 62.84.112.140
someinternalhost_IP = 10.128.0.27
