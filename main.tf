# Criar bucket s3
resource "aws_s3_bucket" "site" {
  bucket = "viacep-tf"
}

# Permitir acesso público ao bucket
resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.site.bucket
  acl    = "public-read"
}

# Adicionar policy
resource "aws_s3_bucket_policy" "allow_access" {
  bucket = aws_s3_bucket.site.bucket
  policy = file("policy.json")
}

# Habilitar hospedagem de site estático
resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.site.bucket

  index_document {
    suffix = "index.html"
  }
}

# Subir arquivo index.html
resource "aws_s3_object" "viacep" {
  bucket       = aws_s3_bucket.site.bucket
  key          = "index.html"
  source       = "index.html"
  content_type = "text/html"
}
