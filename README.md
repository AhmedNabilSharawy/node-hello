## CI Pipeline

This project's CI pipeline will be triggered automatically on any push to **master** branch

and the image tag will have the commit ID of the branch.

Docker Image will be stored on Dockerhub


## Deployment

Open the `@terraform` directory, update the `image_tag` variable with the required tag, and then run the commands below:


Run these commands in the `@cd-terraform` folder:

```bash
terraform init
terraform plan
terraform apply
```

## Result Image

![App ](result.png)