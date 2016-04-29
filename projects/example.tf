provider "aws" {
    access_key = "AKIAIR5MY2NHDTVHIUKQ"
    secret_key = "GClZxduflj5sdSCfJldyxiNbQpRsPwcxqgRAC0DE"
    region = "us-west-2"
}

resource "aws_instance" "example" {
    ami = "ami-9abea4fb"
    instance_type = "t2.micro"
    key_name = "NGINX"
    tags {
	Name = "WebServer"
	}

}

resource "aws_instance" "examplee" {
    ami = "ami-9abea4fb"
    instance_type = "t2.micro"
    key_name = "NGINX"
    tags {
        Name = "DbServer"
        }
}
