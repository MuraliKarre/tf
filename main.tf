resource "aws_s3_bucket" “s3test” {  
  bucket_prefix = var.bucket_prefix  
  acl    = “var.access”   
  tags = var.tags
 
}

resource "aws_s3_bucket_policy" “s3policy {
  bucket = aws_s3_bucket.s3test.id

policy = <<POLICY
{    
    "Version": "2012-10-17",    
    "Statement": [        
      {            
          "Sid": "PublicReadGetObject",            
          "Effect": "Allow",            
          "Principal": "*",            
          "Action": [                
             "s3:GetObject”
             "s3:PutObject", 
          ],            
          "Resource": [
             "arn:aws:s3:::${aws_s3_bucket.s3test.id}/*"            
          ]        
      }    
    ]
}
POLICY


}
