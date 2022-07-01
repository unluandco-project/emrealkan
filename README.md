# E-Ticaret Projesi

## Frontend Kısmının Çalıştırılması
Proje [Angular CLI](https://github.com/angular/angular-cli) versiyon 13.2.0 ile oluşturulmuştur.

Frontend kısmının çalıştırılması için `ng serve` komutunu yazmalıyız. Bu bizi `http://localhost:4200/` adresine yönlendirecektir. Proje dosyaları güncellenince otomatik olarak yeniden uygulama compile edilecektir.

## Backend Kısmının Çalıştırılması

Backend kısmı .net5 ile oluşturulmuştur. Uygulamanın ayağa kaldırılması için proje WebAPI katmanından başlatılması gerekir. Uygulama `http://localhost:5001/` adresinde çalışmaktadır. Swagger arayüzüne `https://localhost:5001/swagger/index.html` adresinden erişebiliriz.

Mail gönderimi için HangFire kütüphanesini kullanıyoruz. Kütüphanenin, database kısmına erişimini sağlamak için `Startup.cs` dosyasına database bağlantı yolunu vermeliyiz. Proje başlatılınca kütüphanenin tablolarını kendi veri tabanımızda görebiliriz.
