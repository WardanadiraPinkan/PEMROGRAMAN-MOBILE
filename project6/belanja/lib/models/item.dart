class item {
  String name;
  int price;
  String imageUrl; 
  int stock;       
  double rating;   

  
  item({
    required this.name, // Menggunakan 'required' agar parameter ini wajib diisi
    required this.price,
    required this.imageUrl,
    required this.stock,
    required this.rating,

  });
}

