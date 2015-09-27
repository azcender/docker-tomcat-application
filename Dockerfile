FROM docker.azcender.com/tomcat:latest

MAINTAINER Bryan Belanger bbelanger@azcender.com

COPY tomcat.txt /etc/facter/facts.d/

COPY hiera.yaml /etc/puppetlabs/code/

COPY environment /etc/puppetlabs/code/environments/production

RUN puppet apply /etc/puppetlabs/code/environments/production/manifests/site.pp
