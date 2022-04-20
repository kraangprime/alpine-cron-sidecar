FROM alpine
CMD apk add logrotate
COPY splunk.cron /etc/periodic/15min/splunk.cron
COPY splunk.logrotate /etc/logrotate.d/splunk.logrotate
CMD /usr/sbin/crond -f -l 0
