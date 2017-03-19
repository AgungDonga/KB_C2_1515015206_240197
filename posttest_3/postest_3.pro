PREDICATES %section ini untuk mendeklarasikan variabel atau predicate dengan suatu tipe data yang ada di dalam parameternya
nondeterm ambil(STRING,STRING,STRING) %predikat ambil dengan semua tipe data parameternya adalah STRING
nondeterm matakuliah(STRING) %predikat matakuliah dengan tipe data parameternya STRING
%nondeterm = nondeterm digunakan untuk predikat yang tidak determinan atau memiliki nilai bisa lebih dari satu jawaban 
	
CLAUSES %Klausa adalah suatu ungkapan atau susunan kata yang didalam Prolog dapat berupa fakta atau aturan.
ambil("Irfan","IntelejensiBuatan","A").
ambil("Komeng","IntelejensiBuatan","D").
ambil("Dati","IntelejensiBuatan","C").
ambil("Fatima","IntelejensiBuatan","B").
ambil("Maspion","IntelejensiBuatan","C").
	
ambil("Ricky","PDE","E").
ambil("Embang","PDE","A").
ambil("Salmin","PDE","D").
ambil("Vina","PDE","B").
ambil("Sondang","PDE","C").
	
ambil("Pamuji","SistemOperasi","D").
ambil("Luki","SistemOperasi","E").
ambil("Sadek","SistemOperasi","B").
ambil("Yusida","SistemOperasi","A").
ambil("Eka","SistemOperasi","A").

matakuliah("IntelejensiBuatan").
matakuliah("PDE").
matakuliah("SistemOperasi").
	
GOAL %Final atau pencapaian dari program dari clausa-clausa yang ditetapkan
write("Tugas A"),nl, %sebagai penanda bahwa ini adalah tugas yang a
ambil(Nama_Mahasiswa_Yang_Mengambil_IntelejensiBuatan,"IntelejensiBuatan",_);%menampilkan nama - nama mahasiswa yang mengikuti matakuliah Intelejensi Buatan dengan mengabaikan nilai yang didapat oleh mahasiswa.
write("\n"),% new line atau enter
write("Tugas B"),nl, %sebagai penanda bahwa ini adalah tugas yang b
ambil(Nama,MK_TidakLulus,Nilai),Nilai>"C"; % menampilkan semua nama mahasiswa yang tidak lulus, dimana nilai yang didapat oleh mahasiswa dibawah C (D dan E).
write("\n"), % new line atau enter
write("Tugas C"),nl, %sebagai penanda bahwa ini adalah tugas yang c
ambil(Nama,MK_Lulus,Nilai),Nilai<="C"; %menampilkan semua nama mahasiswa yang lulus, dimana nilai yang didapat oleh mahasiswa diatas sama dengan C(C,B, dan A).
write("\n"), % new line atau enter
write("Tugas D"),nl, %sebagai penanda bahwa ini adalah tugas yang d		
matakuliah(MataKuliah); % menampilkan seluruh nama matakuliah yang diajarkan.
write("\n"), % new line atau enter
write("Tugas E"),nl, %sebagai penanda bahwa ini adalah tugas yang e		
ambil(NamaMahasiswa,_,_); % menampilkan seluruh nama mahasiswa yang ada.
write("\n").	% new line atau enter
