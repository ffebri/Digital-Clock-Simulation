DIGITAL CLOCK

KOM C 13
Nama	: Febriani F Damanik (132406106)
	  Elsaria Manalu (132406108)
	  Meylia Tampubolon (132406109)
	  Riris Lumbantobing (132406114)

Penjelasan:
jam digital ini akan dimulai dari 00:00. Dari jam, menit, detik dan millidetik. Jam Digital ini diperlihatkan melalui 8 7SEG-MPX1-CC yaitu Common Chatode dengan menggunakan konsep Multiplexing. IC yang digunakan yaitu AT89C51 dengan Compiler SDCC

Setiap segmen akan dimulai dari 0 dengan waktu delay 1 detik. Port yang digunakan ialah Port 0 (P0_0 - P0_7)dan Port 3. Apabila jam telah mencapai angka 24, maka akan otomatis dimulai dari 0 kembali.


#include<at89x51.h> //header file//

unsigned char angka[10]= {0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f};
int milsec1, milsec2, detik1, detik2, menit1, menit2, jam1, jam2, data_temp, x, data1;

void delay(int n)
{
int i, j;
 for(i=0;i<n;i++)
  for(j=0;j<135;j++); //untuk waktu atau kecepatan jam//
}

void ambil_data()
{
data_temp=data1; //data_temp = nilai data1 yaitu 0//
milsec1=(data_temp/10)%10;		//untuk milsec-digit pertama//
milsec2=(data_temp/100)%10;		//untuk milsec-digit kedua//
detik1=(data_temp/1000)%10;		//untuk detik-digit kedua//
detik2=(data_temp/10000)%10;	//untuk detik-digit pertama//
menit1=(data_temp/100000)%10;	//untuk menit-digit kedua//
menit2=(data_temp/1000000)%10;	//untuk menit-digit pertama//
jam1=(data_temp/10000000)%10;	//untuk jam-digit kedua//
jam2=(data_temp/100000000)%10;	//untuk jam-digit pertama//
}

void tampilkan_seven_segment()
{
    for(jam2=0;jam2<3;jam2++) //agar maksimal angka 2//
    {
     for(jam1=0;jam1<5;jam1++) //agar maksimal angka 4//
     {
      for(menit2=0;menit2<6;menit2++) //agar maksimal angka 5
      {
       for(menit1=0;menit1<10;menit1++) //agar maksimal angka 9//
       {
	  for(detik2=0;detik2<6;detik2++) //agar maksimal angka 5//
	   {
	   for(detik1=0;detik1<10;detik1++) //agar maksimal angka 9//
	    {
	     for(milsec2=0;milsec2<10;milsec2++) //agar maksimal angka 9//
          {
	     for(milsec1=0;milsec1<10;milsec1++) //agar maksimal angka 9//
	      {

P0_0=0;
P0_1=1;
P0_2=1;
P0_3=1;
P0_4=1;
P0_5=1;
P0_6=1;
P0_7=1;
P3=angka[milsec1]; //tiap 0 pada P0_1 hingga P0_7 akan berisikan angka[] yang akan menjadi milsec1//
delay(1);

P0_0=1;
P0_1=0;
P0_2=1;
P0_3=1;
P0_4=1;
P0_5=1;
P0_6=1;
P0_7=1;
P3=angka[milsec2]; //tiap 0 pada P0_1 hingga P0_7 akan berisikan angka[] yang akan menjadi milsec2//
delay(1);

P0_0=1;
P0_1=1;
P0_2=0;
P0_3=1;
P0_4=1;
P0_5=1;
P0_6=1;
P0_7=1;
P3=angka[detik1]; //tiap 0 pada P0_1 hingga P0_7 akan berisikan angka[] yang akan menjadi detik1//
delay(1);

P0_0=1;
P0_1=1;
P0_2=1;
P0_3=0;
P0_4=1;
P0_5=1;
P0_6=1;
P0_7=1;
P3=angka[detik2]; //tiap 0 pada P0_1 hingga P0_7 akan berisikan angka[] yang akan menjadi detik2//
delay(1);

P0_0=0;
P0_1=1;
P0_2=1;
P0_3=1;
P0_4=0;
P0_5=1;
P0_6=1;
P0_7=1;
P3=angka[menit1]; //tiap 0 pada P0_1 hingga P0_7 akan berisikan angka[] yang akan menjadi menit1//
delay(1);

P0_0=0;
P0_1=1;
P0_2=1;
P0_3=1;
P0_4=1;
P0_5=0;
P0_6=1;
P0_7=1;
P3=angka[menit2]; //tiap 0 pada P0_1 hingga P0_7 akan berisikan angka[] yang akan menjadi menit2//
delay(1);

P0_0=0;
P0_1=1;
P0_2=1;
P0_3=1;
P0_4=1;
P0_5=1;
P0_6=0;
P0_7=1;
P3=angka[jam1];//tiap 0 pada P0_1 hingga P0_7 akan berisikan angka[] yang akan menjadi jam1//
delay(1);

P0_0=0;
P0_1=1;
P0_2=1;
P0_3=1;
P0_4=1;
P0_5=1;
P0_6=1;
P0_7=0;
P3=angka[jam2]; //tiap 0 pada P0_1 hingga P0_7 akan berisikan angka[] yang akan menjadi jam2//
delay(1);
                  }
      	      }
	         }
            }
          }
        }
      }
    }
}


void main(void)
{
data1=0; //memberikan nila pada data1=0//
 while (1) //akan melakukan perulangan//
 {                   
 ambil_data(); //pemanggilan fungsi//
 tampilkan_seven_segment(); //pemanggilan fungsi//
 }     
}