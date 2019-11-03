data=xlsread('Klasifikasi.xls','B2:C52');
fuzzy_nilai=readfis('fuzzy');
[m n]=size(data);
for i=1:m
        x1=data(i,1);
        x2=data(i,2);
        output(i)=evalfis([x1 x2],fuzzy_nilai);
        if (output(i)<74)
           kategori(i)="E";
        else
            if(output(i)<79)
                kategori(i)="C";
            else
                if (output(i)<89)
                    kategori(i)="B";
                else
                    kategori(i)="A";
                end
            end
        end
end
output=output';
kategori=kategori';
xlswrite('hasil_nilai.xls',output);
xlswrite('hasil_kategori.xls',kategori);