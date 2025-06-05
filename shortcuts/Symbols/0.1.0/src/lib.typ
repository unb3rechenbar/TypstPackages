// >========= Upright Symbols =========



#let upp = $upright(p)$

#let uq = $upright(q)$

#let uI = $upright(I)$

#let uT = $upright(T)$



// > ========= cal small =========
#let ca = $cal(a)$
#let cA = $cal(A)$

#let cb = $cal(b)$
#let cB = $cal(B)$

#let cc = $cal(c)$
#let cC = $cal(C)$

#let cd = $cal(d)$
#let cD = $cal(D)$

#let ce = $cal(e)$
#let cE = $cal(E)$

#let cf = $cal(f)$
#let cF = $cal(F)$

#let cg = $cal(g)$
#let cG = $cal(G)$

#let ch = $cal(h)$
#let cH = $cal(H)$

#let cj = $cal(j)$
#let cJ = $cal(J)$

#let ck = $cal(k)$
#let cK = $cal(K)$

#let cl = $cal(l)$
#let cL = $cal(L)$

#let cm = $cal(m)$
#let cM = $cal(M)$

#let cn = $cal(n)$
#let cN = $cal(N)$

#let co = $cal(o)$
#let cO = $cal(O)$

#let cp = $cal(p)$
#let cP = $cal(P)$

#let cq = $cal(q)$
#let cQ = $cal(Q)$

#let cr = $cal(r)$
#let cR = $cal(R)$

#let cs = $cal(s)$
#let cS = $cal(S)$

#let ct = $cal(t)$
#let cT = $cal(T)$

#let cu = $cal(u)$
#let cU = $cal(U)$

#let cv = $cal(v)$
#let cV = $cal(V)$

#let cw = $cal(w)$
#let cW = $cal(W)$

#let cx = $cal(x)$
#let cX = $cal(X)$

#let cy = $cal(y)$
#let cY = $cal(Y)$

#let cz = $cal(z)$
#let cZ = $cal(Z)$

// > ========= cal big =========
#let cA = $cal(A)$
#let cB = $cal(B)$
#let cC = $cal(C)$
#let cD = $cal(D)$
#let cE = $cal(E)$
#let cF = $cal(F)$
#let cG = $cal(G)$
#let cH = $cal(H)$
#let cI = $cal(I)$
#let cJ = $cal(J)$
#let cK = $cal(K)$
#let cL = $cal(L)$
#let cM = $cal(M)$
#let cN = $cal(N)$
#let cO = $cal(O)$
#let cP = $cal(P)$
#let cQ = $cal(Q)$
#let cR = $cal(R)$
#let cS = $cal(S)$
#let cT = $cal(T)$
#let cU = $cal(U)$
#let cV = $cal(V)$
#let cW = $cal(W)$
#let cX = $cal(X)$
#let cY = $cal(Y)$
#let cZ = $cal(Z)$



// > ========= Tilde Symbols =========
#let tida = $accent(a,tilde)$
#let tidA = $accent(A,tilde)$

#let tidb = $accent(b,tilde)$
#let tidB = $accent(B,tilde)$

#let tidc = $accent(c,tilde)$
#let tidC = $accent(C,tilde)$

#let tidd = $accent(d,tilde)$
#let tidD = $accent(D,tilde)$

#let tide = $accent(e,tilde)$
#let tidE = $accent(E,tilde)$

#let tidf = $accent(f,tilde)$
#let tidF = $accent(F,tilde)$

#let tidg = $accent(g,tilde)$
#let tidG = $accent(G,tilde)$

#let tidh = $accent(h,tilde)$
#let tidH = $accent(H,tilde)$

#let tidi = $accent(i,tilde)$
#let tidI = $accent(I,tilde)$

#let tidj = $accent(j,tilde)$
#let tidJ = $accent(J,tilde)$

#let tidk = $accent(k,tilde)$
#let tidK = $accent(K,tilde)$

#let tidl = $accent(l,tilde)$
#let tidL = $accent(L,tilde)$

#let tidm = $accent(m,tilde)$
#let tidM = $accent(M,tilde)$

#let tidn = $accent(n,tilde)$
#let tidN = $accent(N,tilde)$

#let tido = $accent(o,tilde)$
#let tidO = $accent(O,tilde)$

#let tidp = $accent(p,tilde)$
#let tidP = $accent(P,tilde)$

#let tidq = $accent(q,tilde)$
#let tidQ = $accent(Q,tilde)$

#let tidr = $accent(r,tilde)$
#let tidR = $accent(R,tilde)$

#let tids = $accent(s,tilde)$
#let tidS = $accent(S,tilde)$

#let tidt = $accent(t,tilde)$
#let tidT = $accent(T,tilde)$

#let tidu = $accent(u,tilde)$
#let tidU = $accent(U,tilde)$

#let tidv = $accent(v,tilde)$
#let tidV = $accent(V,tilde)$

#let tidw = $accent(w,tilde)$
#let tidW = $accent(W,tilde)$

#let tidx = $accent(x,tilde)$
#let tidX = $accent(X,tilde)$

#let tidy = $accent(y,tilde)$
#let tidY = $accent(Y,tilde)$

#let tidz = $accent(z,tilde)$
#let tidZ = $accent(Z,tilde)$


#let chaphead(Chapter,Subchapter) = align(center, [
    #text(size: 9pt)[_-Chapter #context{counter(heading).get().at(0)}: #Chapter -_]\ 
    #smallcaps([#context{counter(heading).get().at(0)}.#context{counter(heading).get().at(1)} - #Subchapter])
  ])



// > ========= Mathematik =========
#let ci = $accent(dotless,compose)$

#let card = "card"
#let Bild = "Bild"

#let endlich = $italic("endlich")$
#let unendlich = $italic("unendlich")$
