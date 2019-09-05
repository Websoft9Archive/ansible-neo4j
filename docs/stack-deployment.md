# Deployment

**Deployment is to copy the Neo4j pre-packaged online to your Cloud Server**. For example, after the user subscribe Neo4j on the Cloud Platform, the Platform will automatically copy the Neo4j to the corresponding Cloud Server.

- If Neo4j has been deployed, go to [Initial Installation](/zh/stack-installation.md) to complete the operation.
- If Neo4j is not deployed, you need to deploy Neo4j to your cloud server first.

We offer two deployment Neo4j scenarios (the deployment results are the same):

## Deploy by Image

**Deploy by Image** means starting instance from Neo4j images. **Neo4j Image** provide OS and software environment needed for Neo4j.

For users with experience with cloud servers, Deploy by Image equated with "one-click deployment".

Websoft9 published [Neo4j image](https://apps.websoft9.com/neo4j) on Cloud Platform, three methods for your deployment:

* When **Create New Instance** , select the Neo4j image as the system boot template.
* When **Subscribe Neo4j** on Marketplace, the system will promote you to create a new instance for this image at the same time.
* When **Re-install OS** for you instance, you can replace the existing image with a Neo4j image.

## Deploy by Script

**Deploy by Script** means running a script on your cloud instance to pull the pre-packages online to your instance and configure it at the same time.

Websoft9 provide the [Neo4j ansbile automation script](https://github.com/Websoft9/ansible-neo4j) on Github. If you are familiar with Ansible, you can deploy the Neo4j to the instance automaticly.

## Comparison

Although the results of the **deploy by image** are consistent with the results of **deploy by script**, what is the difference between the two deployment methods?

Suggest you read the document [Deploy by Image vs Deploy by Script](https://support.websoft9.com/docs/faq/bz-product.html#deployment-comparison)