variable "aws_region" {
  description = "The AWS region to deploy the infrastructure"
  type        = string
  default     = "us-east-1"
}

variable "api_gateway_name" {
  description = "The name of the API Gateway"
  type        = string
  default     = "MyApiGateway"
}

variable "lambda_function_name" {
  description = "The name of the Lambda function"
  type        = string
  default     = "MyLambdaFunction"
}

variable "lambda_runtime" {
  description = "The runtime for the Lambda function"
  type        = string
  default     = "python3.8"
}

variable "lambda_handler" {
  description = "The handler for the Lambda function"
  type        = string
  default     = "main.lambda_handler"
}

variable "environment" {
  description = "The environment for deployment (e.g., dev, prod)"
  type        = string
  default     = "dev"
}