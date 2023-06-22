create database TI

Create table Prodi(
id_prodi varchar (30) primary key,
nama_prodi varchar (30)
);

create table mahasiswa(
nim varchar (11) primary key,
nama_mahasiswa varchar (50),
jenis_kelamin char (1),
alamat varchar (50),
tgl_lahir varchar (15),
id_prodi varchar (30) foreign key references Prodi(id_prodi)
);

create table status_mahasiswa(
id_status varchar (30) primary key,
nim varchar (11) foreign key references mahasiswa(nim),
status_mahasiswa varchar (10),
tahun_masuk varchar (4)
);
