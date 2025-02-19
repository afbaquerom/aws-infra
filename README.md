# AWS GitHub Terraform Project

This project integrates AWS, GitHub, and infrastructure through CI/CD using Terraform. It includes a FastAPI application and is designed to be deployed on AWS.

## Project Structure

```
aws-github-terraform-project
├── src
│   ├── main.py          # FastAPI application with endpoints
│   └── __init__.py      # Python package initialization
├── terraform
│   ├── main.tf          # Main Terraform configuration
│   ├── variables.tf     # Input variables for Terraform
│   ├── outputs.tf       # Output values from Terraform
│   └── provider.tf      # Provider configuration for Terraform
├── .github
│   └── workflows
│       ├── plan.yml     # CI/CD workflow for Terraform plan
│       └── apply.yml    # CI/CD workflow for Terraform apply
├── .gitignore            # Files and directories to ignore by Git
├── requirements.txt      # Python dependencies for FastAPI
└── README.md             # Project documentation
```

## Setup Instructions

1. **Clone the repository:**
   ```
   git clone <repository-url>
   cd aws-github-terraform-project
   ```

2. **Set up a virtual environment:**
   ```
   python -m venv venv
   source venv/bin/activate  # On Windows use `venv\Scripts\activate`
   ```

3. **Install dependencies:**
   ```
   pip install -r requirements.txt
   ```

4. **Configure AWS credentials:**
   Ensure that your AWS credentials are configured in your environment. You can do this by setting the `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` environment variables or by using the AWS CLI.

5. **Deploy infrastructure using Terraform:**
   Navigate to the `terraform` directory and run:
   ```
   terraform init
   terraform apply
   ```

## Usage

- Start the FastAPI application:
  ```
  uvicorn src.main:app --reload
  ```

- Access the application at `http://localhost:8000`.

- The root endpoint returns a welcome message, and the health check endpoint can be accessed at `/health`.

## CI/CD Workflows

- The `plan.yml` workflow is triggered on pull requests to check the Terraform plan.
- The `apply.yml` workflow is triggered on merges to apply the Terraform changes.

## License

This project is licensed under the MIT License.