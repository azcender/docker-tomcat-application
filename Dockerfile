FROM docker.azcender.com/tomcat:latest

MAINTAINER Bryan Belanger bbelanger@azcender.com

COPY tomcat.txt /etc/facter/facts.d/

COPY hiera.yaml /etc/puppet

COPY code/environments/production /etc/puppet

RUN puppet apply /etc/puppet/code/manifests/site.pp
