# Prediksi Kesehatan Mental Dari Komentar Di Media Sosial


| | Deskripsi |
| ----------- | ----------- |
| Dataset | [Mental Health Corpus](https://www.kaggle.com/datasets/reihanenamdari/mental-health-corpus) <br>Korpus Kesehatan Mental adalah kumpulan teks yang berkaitan dengan orang-orang dengan kecemasan, depresi, dan masalah kesehatan mental lainnya. Korpus terdiri dari dua kolom: satu berisi komentar, dan lainnya berisi label yang menunjukkan apakah pengguna yang berkomentar terkena penyakit mental atau tidak.|
| Masalah | Mental health adalah kondisi kesehatan emosional, psikologis, dan sosial seseorang. Ini mencakup bagaimana seseorang merasa, berpikir, bertindak, dan berhubungan dengan orang lain. Kesehatan mental yang baik memungkinkan seseorang untuk mengatasi stres, menjaga hubungan yang sehat, membuat keputusan yang baik, dan berkontribusi secara positif dalam kehidupan sehari-hari. Gangguan mental, seperti depresi, kecemasan, atau skizofrenia, dapat memengaruhi kesehatan mental seseorang dan memerlukan perawatan profesional. Perhatian terhadap kesehatan mental semakin meningkat sebagai bagian penting dari kesejahteraan holistik seseorang. |
| Solusi machine learning | Dengan memprediksi risiko kesehatan mental, sistem perawatan kesehatan dapat mengalokasikan sumber daya dengan lebih efisien, memprioritaskan mereka yang membutuhkan perawatan yang lebih intensif. |
| Metode pengolahan | Pada data Mental Health Corpus, terdapat feature text dan label, features itu yang akan digunakan, , diantaranya metode pengolahannya:<br> 1. Data ingestion <br> pada tahap ini dilakukan split data training dan eval menjadi rasio 80:20, dan mengubah data feature menjadi lowercase serta feature label menjadi integer<br> 2. Membuat Tahapan Data Validation<br> Pada tahap ini, dengan membuat summary statistic menggunakan komponen **StatisticsGen()**. Komponen memiliki parameter input berupa examples untuk menerima dataset dari komponen ExampleGen<br> 3. Membuat Tahapan Data Preprocessing<br> Setelah melakukan data validation, tahap berikutnya adalah melakukan data preprocessing. Tujuan dari tahap ini adalah mengubah data mentah menjadi data yang siap digunakan untuk melatih model dengan menggunakan TFT dan komponen Transform untuk melakukan data preprocessing <br> 4. Model Development<br> Membuat mental_trainer.py untuk menyimpan proses train pada module mental_trainer.py <br> 5. Membuat Tahapan Analisis dan Validasi Model<br>  - membuat baseline dengan resolver<br> - evaluator model dengan tfma  |
| Arsitektur model | Arsitektur model yang digunakan yaitu model embedding dimana terdiri dari vectorize_layer, kemudian layer embedding dengan dimensi embedding yaitu 16, setelah itu layer GlobalAveragePooling1D karena data merupakan bentuk text,  kemudian layer dense 64, 32 dengan activation relu dan sigmoid karena akan dilakukan klasifikasi antar dua label. Loss yang digunakan binary_crossentropy dengan optimizer Adam dan metrik BinaryAccuray|
| Metrik evaluasi | Metrik evaluasi yang digunakan yaitu ExampleCount, AUC, FalsePositives, TruePositives, FalseNegatives, TrueNegatives, dan BinaryAccuracy dengan lower_bound 0.5 dan absolute 0.0001|
| Performa model | Evaluasi model diperoleh yaitu AUC sebesar 95.1%, kemudian example_count 5579, dengan BinaryAccuracy 88.9%, dan loss sebesar 55%. Untuk False Negatives 258, False Positive 361, True Negative  2417 dan True Positive 2543. Model yang telah dibuat dapat dilakukan peningkatan performa, karena model cukup baik karena BinaryAccuracy sudah diatas 80%<br> hasil deployment model: <br> ![gambar](data/deplot_metadata.png)|
