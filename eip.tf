resource "aws_eip" "php_hello_world" {
  vpc      = true
  instance = aws_instance.php_hello_world.id
}
