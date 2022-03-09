   **D-type FF**
   | **clk** | **d** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ![rising](images/eq_uparrow.png) | 0 | 0 | 0 | Clear (Reset) |
   | ![rising](images/eq_uparrow.png) | 0 | 1 | 0 | Clear (Reset) |
   | ![rising](images/eq_uparrow.png) | 1 | 0 | 1 | Set |
   | ![rising](images/eq_uparrow.png) | 1 | 1 | 1 | Set |

q_{n+1}^D = d


   **JK-type FF**
   | **clk** | **j** | **k** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-: | :-- |
   |  | 0 | 0 | 0 | 0 | No change |
   |  | 0 | 0 | 1 | 1 | No change |
   |  | 0 | 1 | 0 | 0 | Reset |
   | ![rising](images/eq_uparrow.png) | 0 | 1 | 1 | 0 | Reset |
   | ![rising](images/eq_uparrow.png) | 1 | 0 | 0 | 1 | Set |
   | ![rising](images/eq_uparrow.png) | 1 | 0 | 1 | 1 | Set |
   | ![rising](images/eq_uparrow.png) | 1 | 1 | 0 | 1 | Toogle |
   | ![rising](images/eq_uparrow.png) | 1 | 1 | 1 | 0 | Toogle |
   q_{n+1}^{JK} = j*/qn + /k*qn

   **T-type FF**
   | **clk** | **t** | **q(n)** | **q(n+1)** | **Comments** |
   | :-: | :-: | :-: | :-: | :-- |
   | ![rising](images/eq_uparrow.png) | 0 | 0 | 0 | No change |
   | ![rising](images/eq_uparrow.png) | 0 | 1 | 1 | No change |
   | ![rising](images/eq_uparrow.png) | 1 | 0 | 1 | Invert (Toggle) |
   | ![rising](images/eq_uparrow.png) | 1 | 1 | 0 | Invert (Toggle) |

