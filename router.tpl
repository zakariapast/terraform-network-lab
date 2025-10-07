hostname ${hostname}

%{ for iface in interfaces ~}
interface ${iface.name}
 ip address ${iface.ip} ${iface.mask}
 %{ if iface.state == "up" }no shut%{ else }shutdown%{ endif }
exit
%{ endfor ~}

interface Loopback0
 ip address ${loopback} 255.255.255.255
 no shut

end
write memory
