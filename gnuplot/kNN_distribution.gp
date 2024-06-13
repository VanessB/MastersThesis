V(r,d) = r > 0.0 ? r**d     * (pi)**(real(d)/2) / gamma(real(d)/2 + 1) : 0.0
S(r,d) = r > 0.0 ? r**(d-1) * 2 * (pi)**(real(d-1)/2) / gamma(real(d-1)/2) : 0.0

rho(V,k) = V > 0.0 ? exp(-V) * (V)**(k-1) / gamma(k) : 0.0
F(V,k)   = V > 0.0 ? 1 - exp(-V) * ( sum [m = 0 : k-1] V**m / gamma(m+1) ) : 0.0

rho_r(x,d,k) = S(x,d) * rho(V(x,d),k)
F_r(x,d,k) = F(V(x,d),k)

r_moment(d,k,m) = (V(1,d))**(-real(m)/d) * gamma(real(m) / d + k) / gamma(k)
r_mean(d,k) = r_moment(d,k,1)
r_std(d,k) = (r_moment(d,k,2) - (r_moment(d,k,1))**2)**(0.5)

x_normalized(x,d,k) = x * r_std(d,k) + r_moment(d,k,1)

rho_r_normalized(x,d,k) = r_std(d,k) * rho_r(x_normalized(x,d,k),d,k)
F_r_normalized(x,d,k) = F_r(x_normalized(x,d,k),d,k)
