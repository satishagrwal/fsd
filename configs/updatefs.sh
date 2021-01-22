#!/bin/bash

#configure default password
sed -i -e 's/.*<X-PRE-PROCESS cmd="set" data="default_password=1234"\/>.*/<X-PRE-PROCESS cmd="set" data="default_password=freeswitchplivo7809"\/>/g' /etc/freeswitch/vars.xml

#configure to restrict blind register
sed -i -e 's/.*<!-- <param name="accept-blind-reg" value="true"\/> -->.*/<param name="accept-blind-reg" value="false"\/>/g' /etc/freeswitch/sip_profiles/internal.xml
