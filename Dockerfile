FROM docker.azcender.com/tomcat:latest

MAINTAINER Bryan Belanger bbelanger@azcender.com

COPY tomcat.txt /etc/facter/facts.d/

COPY code /etc/puppetlabs/code

RUN puppet apply /etc/puppetlabs/code/environments/production/manifests/site.pp
