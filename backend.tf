terraform {
    backend "s3" {
        bucket = "amol1-bucket"
        key = "devopstfdemo/backenddemo"
        region = "us-east-1"
        dynamodb_table = "terraformwork"
      
    }
}