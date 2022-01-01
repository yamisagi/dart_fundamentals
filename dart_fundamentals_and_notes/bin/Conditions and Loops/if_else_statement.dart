/// If Else If ve Else Kullanımı

void main() {
  // If ,else if ve else kullanımı programımıza bir mantık üzerinden şartlarla belirli kod bloklarının çalışmasını sağlar.

  // Örneğin,
  const int age = 49;
  if (age >= 50) {
    print("You are a Adult");
  } else if (age < 18) {
    print("You are a Child");
  } else {
    print("You are Young");
  }
  /* Örnekteki gibi 
  
  if (condition){
    // Do something
  }else if (condition 2){
    // Do somethin else
  } else{
    // Do another thing
  }
   şeklinde geçer.
   ** Fakat dikkat edilmesi gereken şey eğer bir koşul true dönderirse geriye kalan koşullar es geçilir *ONLAR DA TRUE DÖNDERSE BİLE.
   
  */ 


}
