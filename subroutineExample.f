PROGRAM GR
    DIMENSION n1(7) !7 elemanlı dizi oluşturduk.
    character*8 c1(7) !8 karaktere sahip 7 elemanlı char dizi oluşturduk.

    DATA n1/3,6,9,7,4,2,1/ !DATA ile n1 dizimize değerleri atadık.
    DATA c1/'100 - 95','94 - 90','89 - 85','84 - 80','79 - 75','74 - 70','69 - 65'/ !8 karaktere sahip char dizimize elemanları atadık.

    WRITE(*,10)
10  FORMAT('  Aralık    Öğrenci Sayısı',/,'  ------    ------- ------')

    do 15 i=1,7 !7 defa 15. satırdaki Write komutu çalıştırılacak.
15  WRITE(*,20) c1(i), n1(i) !20. satırdaki format tipine göre çalıştırılacak.
20  FORMAT(1x, a8,'         ',i2)

    WRITE(*,25)
25  FORMAT(//) !2 satır kayacak.
    CONTINUE
    CALL GRAFIK(c1,n1) !Grafik subroutine'e c1 ve n1 değerleri gönderilecek.
    STOP
    END PROGRAM GR

    SUBROUTINE GRAFIK(c1,n1) !Gelen c1 ve n1 değerleri karşılanıyor.
    DIMENSION n1(7) !Ana programda olduğu gibi diziler tanımlanıyor.
    character*8 c1(7), c2*1 !c2 değişkenine 1 karakterlik alan ayrılıyor.
    c2='*' ! * ifadesini atıyoruz.

    do 30 i=1,7
    WRITE(*,35)c1(i)
35  FORMAT(1x, a8)
30  WRITE(*,*)(c2, j = 1, n1(i))
    return
END
