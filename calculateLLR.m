function LLR = calculateLLR(x,u0,sig0,u1,sig1)
pdfx0 = normpdf(x,u0,sig0);
pdfx1 = normpdf(x,u1,sig1);
LLR = log(pdfx1/pdfx0);
LLR = log(sig0/sig1)+(x-u0)^2/2*(1/sig0^2-1/sig1^2);