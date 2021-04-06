FROM public.ecr.aws/lambda/nodejs:14
USER root

RUN yum update -y && \
    yum install tar xz wget unzip -y && \
    yum install "https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm" -y && \
    yum install yum-utils -y && \
    yum install "http://rpms.remirepo.net/enterprise/remi-release-7.rpm" -y && \
    yum-config-manager --enable remi && \
    yum install vips vips-devel vips-tools make -y && \
    yum group install "Development Tools" -y
