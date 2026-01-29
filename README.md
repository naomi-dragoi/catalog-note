# Aplicație de gestionare a notelor școlare

Această aplicație console în C++ gestionează complet un catalog electronic școlar. Programul permite adăugarea, modificarea și ștergerea datelor pentru studenți, materii și note. Suportă note zecimale (de exemplu 8.5) și păstrează toate datele în fișiere CSV pentru persistență între sesiuni.

## Autor
- **Nume:** Drăgoi Naomi
- **Grupă:** grupa 1.1
- **Email:** naomi.dragoi@student.upt.ro
- **An academic:** 2025-2026


## Aplicația oferă un meniu interactiv cu următoarele opțiuni:

- Adăugarea de studenți și materii cu verificare automată a duplicatelor;

- Introducerea notelor cu validare în intervalul 1.0 - 10.0;

- Calculul mediilor pe student, pe materie și media generală a tuturor notelor;

- Filtrarea notelor după student, materie sau interval de valori;

- Generarea rapoartelor complete de situație școlară pentru fiecare student;

- Identificarea studenților cu medii sub un prag specificat;

- Statistici privind cea mai bună și cea mai slabă materie;

- Salvare automată în fișiere CSV la ieșirea din program;


## Proiectul este organizat în următoarele directoare și fișiere:

- src/ - conține toate fișierele sursă C++ (.h și .cpp);

- data/ - fișierele CSV pentru persistența datelor:

  - studenti.csv - lista studenților (id,nume);

  - materii.csv - lista materiilor (id,nume);

  - note.csv - notele fiecărui student pe fiecare materie (numeStudent,numeMaterie,nota);
  

## Fișierele principale din src/ includ:

- main.cpp - programul principal cu meniul interactiv;

- catalog_utils.cpp/h -  funcții utilitare complete: afișări meniu, validări existență/duplicat, calcul medii (student/materie/generală), filtrare note cu sortare descrescătoare, rapoarte grupate pe materii, statistici materii, import/export CSV;

- student.cpp/h - clasa Student;

- materii.cpp/h - clasa Materie;

- nota.cpp/h - clasa Nota;


## Tehnologii folosite
- **Limbaj:** C++17
- **Biblioteci:**
  - `std::vector/map/set` - containere pentru liste, grupări, liste unice
  - `std::fstream/sstream` - procesare CSV
  - `std::algorithm` - sortare cu lambda
- **Tools:** Git, GitHub, g++


## Cerințe sistem
- **Compilator:** g++ (versiune 9+)
- **Sistem de operare:** Windows/Linux/macOS
- **Dependențe externe:** Niciuna



## Instalare și Rulare

### Varianta 1: Docker (Recomandat - Rapid)
Puteți rula aplicația direct, fără compilare, folosind imaginea publică Docker:

```bash
# Descarcă imaginea
docker pull naomidragoi/catalog-note:latest

# Rulează aplicația
docker run -it --rm naomidragoi/catalog-note
```

### Varianta 2: Compilare din sursă (GitHub)
**1. Clone repository**
```bash
git clone https://github.com/naomi-dragoi/catalog-note.git
cd catalog-note/src
```

**2. Compilare**
```bash
g++ -std=c++17 *.cpp -o catalog
```

**3. Rulare**
- **Linux/Mac**
```bash
./catalog
```

- **Windows**
```bash
./catalog.exe
```



## Exemple de utilizare:
**Exemplul 1: Adaugare date de test**
```bash
1. Adaugă student → ID:1, Nume: Ion
2. Adaugă materie → ID:1, Nume: Mate  
3. Adaugă notă → Ion, Mate, 8.5
3. Adaugă notă → Ion, Romana, 6.0
```

## Resurse Bibliografice

### Documentație C++ și STL
- **[CppReference - C++17 Standard](https://en.cppreference.com/w/cpp/17)**
  Referința oficială utilizată pentru containerele `std::vector`, `std::map`, `std::set` și algoritmii de sortare (`std::sort`).
- **[CPlusPlus.com - Input/Output with files](https://cplusplus.com/doc/tutorial/files/)**
  Ghid pentru utilizarea `std::fstream` (citire/scriere fișiere CSV).

### Tutoriale și Exemple
- **[Stack Overflow - CSV Parsing in C++](https://stackoverflow.com/questions/1120140/how-can-i-read-and-parse-csv-files-in-c)**
  Discuție tehnică despre metodele eficiente de parsare a fișierelor CSV folosind `std::getline` și `std::stringstream`.
- **[Input Validation in C++ (cin)](https://www.learncpp.com/cpp-tutorial/detecting-and-handling-errors/)**
  Resursă pentru gestionarea corectă a erorilor de input (`cin.fail()`, `cin.ignore()`) pentru validarea notelor.

