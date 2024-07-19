module "s3" {
  source = "../s3delete"
  source_scripts = "dev-bucket-19072024-scripts"
  destination_scripts = "qa-bucket-19072024-scripts"
  objects_to_copy_scripts = [
    "folder1/f1test1.txt",
    "folder2/f2test1.txt",
    "folder2/f2test2.txt",
    "folder3/" 
  ]
  source_spark-ui-logs ="dev-bucket-19072024-spark-ui-logs"
  destination_spark-ui-logs = "qa-bucket-19072024-spark-ui-logs"
  objects_to_copy_spark-ui-logs = [
    "folder1/f1test1.txt",
    "folder2/f2test1.txt",
    "folder2/f2test2.txt",
    "folder3/" 
  ]
  source_staging ="dev-bucket-19072024-staging"
  destination_staging = "qa-bucket-19072024-staging"
  objects_to_copy_staging = [
    "folder1/f1test1.txt",
    "folder2/f2test1.txt",
    "folder2/f2test2.txt",
    "folder3/" 
  ]
  source_temp = "dev-bucket-19072024-temp"
  destination_temp = "qa-bucket-19072024-temp"
  objects_to_copy_temp = [
    "folder1/f1test1.txt",
    "folder2/f2test1.txt",
    "folder2/f2test2.txt",
    "folder3/" 
  ]
}
