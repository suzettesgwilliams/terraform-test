provider "aws" {
  region = "us-west-2"
}

/*resource "aws_instance" "test_instance" {
  ami = "ami-085284d24fe829cd0"
  instance_type = "t2.micro"
}*/

/*module "ec2_module" {
  source = "../generated/aws/ec2_instance"
}*/

module "ecs_module" {
  source = "../generated/aws/ecs"
}

module "lambda_module" {
  source = "../generated/aws/lambda"
}

module "ecr_module" {
  source = "../generated/aws/ecr"
}

