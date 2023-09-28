diffW=method();
diffW(RingElement,RingElement) :=(P,f)->(
DR := ring P;
R := ring f;
if isPolynomialRing R == false then return "error: expected f to be an element of a polynomial ring";
createDpairs DR;
partials := ideal( DR.dpairVars_1);
sub((P*sub(f,DR)) % partials,R)
)

diffOnQuotientRing=method()
diffOnQuotientRing(RingElement,RingElement):=(P,f)->(
RI:=ring f;
I:=ideal RI;
S:=ring I;
fS:=sub(f,S);
sub(diffW(P,fS),RI)
)



