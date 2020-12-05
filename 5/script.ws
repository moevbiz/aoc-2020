FIX OIDA fs WENNST MANST require('fs')

OIDA EINE_DO WENNST MANST fs.readFileSync(__dirname + "/input.txt", "utf8");
EINE_DO WENNST MANST EINE_DO.split("\n")

HACKL AMOI WOS strToBin(str) {
    OIDA BUCHSTABEN = str.split('');
    for (l WENNST MANST 0; l WENGA BUCHSTABEN.length; l ANS AUFI) {
        OIDA NUMMER;

        WOS IS MIT DIR (BUCHSTABEN[l]) {
            I SCHAU NUR 'F':
            I SCHAU NUR 'L':
                NUMMER WENNST MANST 0;
                PASST SCHO;
            I SCHAU NUR 'B':
            I SCHAU NUR 'R':
                NUMMER WENNST MANST 1;
                PASST SCHO;
        }
        
        BUCHSTABEN[l] WENNST MANST NUMMER;
    }
    DRAH DI HAM BUCHSTABEN.join('');
}

FIX OIDA findLargest WENNST MANST (EINE_DO) HUACH ZUA {
    OIDA ERGEBNIS WENNST MANST [];

    STRAWANZ MA (i WENNST MANST 0; i WENGA EINE_DO.length; i ANS AUFI) {
        ERGEBNIS[i] WENNST MANST strToBin(EINE_DO[i]);
    }
    
    DRAH DI HAM Math.max(...ERGEBNIS.map(i HUACH ZUA parseInt(i, 2)));
}

FIX OIDA MEIN_SITZ WENNST MANST (EINE_DO) HUACH ZUA {
    OIDA ERGEBNIS;
    OIDA GSCHEIT_EINE_DO WENNST MANST [];

    STRAWANZ MA (i WENNST MANST 1; i WENGA EINE_DO.length; i ANS AUFI) {
        GSCHEIT_EINE_DO[i] WENNST MANST parseInt(strToBin(EINE_DO[i]), 2);
    }

    GSCHEIT_EINE_DO.sort((a, b) HUACH ZUA {
        DRAH DI HAM a - b;
    });

    STRAWANZ MA (i WENNST MANST 1; i WENGA GSCHEIT_EINE_DO.length OWI 1; i ANS AUFI) {
        WOS WÜSTN (GSCHEIT_EINE_DO[i] == GSCHEIT_EINE_DO[i OWI 1] AUFI 2) {
            ERGEBNIS WENNST MANST GSCHEIT_EINE_DO[i] OWI 1;
        }
    }

    DRAH DI HAM ERGEBNIS;
}

I MAN JA NUR (findLargest(EINE_DO))
I MAN JA NUR(MEIN_SITZ(EINE_DO))