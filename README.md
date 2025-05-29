Certificate Type Classifier and University Matcher App
This Streamlit web application classifies uploaded certificate images to identify the certificate type and extract the score using a pre-trained machine learning model. After recognizing the score, the app compares it against a CSV database of universities and displays a list of universities that match the user's certificate scores.

The model is loaded dynamically from Google Drive to keep the repository size small and make updating easier. Users can upload certificate images (e.g., IELTS, TOEFL, Duolingo), get instant score extraction, and see which universities accept their scores.

Features
Upload certificate images in JPG or PNG format
Automatically detect certificate type and extract score
Load the ML model dynamically from Google Drive
Compare scores with university requirements stored in a CSV file
Display a list of matching universities based on your scores
Built with Streamlit and Python for a fast and user-friendly experience

🛠 How to Run the Project Locally
⚠️ Note: This project is currently not hosted online. Please run it locally using the steps below.

Clone the repository:
git clone https://github.com/your-username/unimatch.git
cd unimatch
pip install -r requirements.txt

Run the Streamlit app:
streamlit run app.py --server.port 8502
A browser window will open at localhost:8502. Upload a certificate image and get university recommendations.

📂 Folder Structure
unimatch/
├── app.py
├── model.pkl
├── requirements.txt
├── University_info.csv
├── example_certificates/
│   ├── ielts_sample.png
│   ├── duolingo_sample.png
│   └── ...
└── README.md
🧪 Test Certificates
A folder https://drive.google.com/file/d/1bcme0dFioqT-c3lqAKhqiCVn1E_4YLqZ/view?usp=sharing contains sample images of various certificate types for testing the system.

Each image simulates a real user submission and is used to demonstrate how the OCR + ML model extracts data.


Sertifikat Turi Aniqlovchi va Universitet Moslashtiruvchi Dastur
Ushbu Streamlit ilovasi foydalanuvchi yuklagan sertifikat rasmlarini turlariga ajratadi va sertifikatdagi ballarni oldindan o‘rgatilgan mashina o‘rganish modeli yordamida aniqlaydi. Keyin, ballarni CSV faylida saqlangan universitetlar talablariga solishtirib, foydalanuvchiga mos keluvchi universitetlar ro‘yxatini ko‘rsatadi.

Model Google Drive’dan dinamik yuklanadi, bu repository hajmini kichraytiradi va yangilashni osonlashtiradi. Foydalanuvchilar IELTS, TOEFL, Duolingo kabi sertifikat rasmlarini yuklab, ballarni olishlari va o‘z ballariga mos universitetlarni ko‘rishlari mumkin.

Xususiyatlari
Sertifikat rasmlarini JPG yoki PNG formatida yuklash
Sertifikat turini aniqlash va ballarni chiqarish
Mashina o‘rganish modelini Google Drive’dan avtomatik yuklash
Ballarni CSV formatidagi universitet talablariga solishtirish
Mos keluvchi universitetlar ro‘yxatini ko‘rsatish
Streamlit va Python yordamida tez va qulay interfeys


