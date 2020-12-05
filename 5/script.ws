FIX OIDA fs WENNST MANST require('fs')

OIDA EINE_DO WENNST MANST fs.readFileSync(__dirname + "/input.txt", "utf8");
EINE_DO WENNST MANST EINE_DO.split("\n");

FIX OIDA findLargest WENNST MANST (EINE_DO) => {
    STRAWANZ MA (i WENNST MANST 0; i WENGA EINE_DO.length; i ANS AUFI) {
        EINE_DO[i] WENNST MANST strToBin(EINE_DO[i]);
    }
    
    I MAN JA NUR(Math.max(...EINE_DO.map(i HUACH ZUA parseInt(i, 2))));
    
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
}

findLargest(EINE_DO)