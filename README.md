# Symfony Demo App with Docker Compose

Based on previous work made on [symfony-5-docker](https://gitlab.com/martinpham/symfony-5-docker), this project shows how to run a Symfony demo project by using docker-compose.

# Quickstart

How to test this?

1. [Install Docker Compose](https://docs.docker.com/compose/install/)
1. Clone this repository.
1. Run all containers with `docker-compose up`
1. To re-build the containers, you should run `docker-compose build`

# Deployment on AWS (ECS)

A testing demo app deployment can be provided by using [Docker ECS integration](https://docs.docker.com/cloud/ecs-integration/).

The project includes an Ansible playbook to deploy on ECS by using Cloudformation (based on [ecs-cloudformation](https://github.com/nathanpeck/ecs-cloudformation)).
