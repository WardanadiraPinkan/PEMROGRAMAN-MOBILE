void main() {
  String test = "test2";
  
  // Blok pertama
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") {
    print("Test2 again");
  }

  // Blok kedua yang ditambahkan
  String booleanTest = "true";  
  if (booleanTest == "true") {  
    print("Kebenaran");
  }
}
