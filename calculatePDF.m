function [xx,pdfx] = calculatePDF(x)
u = mean(x);
sigma = std(x);
xx = sort(x,'ascend');
pdfx = 1/sqrt(2*pi*sigma^2).*exp(-((xx-u).^2/(2*sigma^2)));
pdfx = pdfx/sum(pdfx);
%%
