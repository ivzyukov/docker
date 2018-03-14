FROM centos
MAINTAINER ivzyukov

ADD postgresql-9.2.15-1.el7_2.x86_64.rpm  postgresql-libs-9.2.15-1.el7_2.x86_64.rpm  postgresql-server-9.2.15-1.el7_2.x86_64.rpm postgresql-contrib-9.2.15-1.el7_2.x86_64.rpm libxslt-1.1.28-5.el7.x86_64.rpm uuid-1.6.2-26.el7.x86_64.rpm /tmp/

RUN yum install /tmp/postgresql-9.2.15-1.el7_2.x86_64.rpm /tmp/postgresql-libs-9.2.15-1.el7_2.x86_64.rpm /tmp/postgresql-server-9.2.15-1.el7_2.x86_64.rpm /tmp/postgresql-contrib-9.2.15-1.el7_2.x86_64.rpm /tmp/libxslt-1.1.28-5.el7.x86_64.rpm /tmp/uuid-1.6.2-26.el7.x86_64.rpm -y

ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

USER postgres
CMD /usr/bin/postgres -D /var/lib/pgsql/data -p 5432
