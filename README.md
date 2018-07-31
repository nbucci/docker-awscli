# Minimal AWS Cli Docker Image
Just a small Alpine Linux-based image with Amazon Web Services command line tool.

## Usage examples
Passing credentials as environment variables:

```docker run -e AWS_ACCESS_KEY_ID=YOUR_AWS_ID -e AWS_SECRET_ACCESS_KEY=YOUR_AWS_SECRET nbucci/docker-awscli AWS_CLI_COMMAND```

Or mounting your credentials directory:

```docker run -v YOUR_AWS_CREDENTIALS_DIR:/root/.aws/ nbucci/docker-awscli AWS_CLI_COMMAND```
