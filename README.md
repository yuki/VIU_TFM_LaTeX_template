# Plantilla TFM para la [VIU](https://www.universidadviu.com/es/)
Plantilla LaTeX para el Trabajo Fin de Máster (TFM) de la [VIU](https://www.universidadviu.com/es/).

Puedes ver el ejemplo de cómo queda el PDF en el fichero **[viu-tfm-template.pdf](viu-tfm-template.pdf)**

# Uso
Para utilizar esta plantilla se requiere de las siguientes dependencias:
* XeLaTeX (se puede instalar con TexLive)
* [Inkscape](https://inkscape.org/) para utilizar gráficos SVG.

## Valores de la portada
Los datos que aparecen en la portada corresponden a las variables que aparecen en el fichero [viu-tfm-template.tex](viu-tfm-template.tex)**

```latex
\def\nombre{Apellido1 Apellido2, Nombre}
\def\dni{12345678-A}
\def\titulo{Título del TFM}
\def\titulacion{Máster Universitario en Desarrollo de Aplicaciones y Servicios Web}
\def\curso{2022-2023}

%Los siguientes son opcionales: si no se ponen, la portada cambia un poco. Ideal para escribir artículos/trabajos cortos
\def\dirige{Nombre del director/a}
\def\convocatoria{Primera}
```

Las definiciones "dirige" y "convocatoria" son opcionales. Si están vacías, no aparecen en la portada. De esta manera, esta plantilla se puede utilizar para hacer otros trabajos que no sean el TFM

## Cómo se compila
Para utilizar la plantilla, teniendo en cuenta el fichero de ejemplo de este repositorio y el ejemplo de bibliografía:

```bash
xelatex -shell-escape viu-tfm-template.tex
biber viu-tfm-template
xelatex -shell-escape viu-tfm-template.tex
xelatex -shell-escape viu-tfm-template.tex
```

# Ficheros utilizados
La plantilla y el ejemplo se compone de los siguientes ficheros:
* **viu-tfm-template.cls**: La propia plantilla donde se configuran bordes, tipo de letra, tablas, listas ...
* **coverpage.tex**: En este fichero se establece cómo es la portada.
* **viu-tfm-template.tex**: Ejemplo de fichero donde escribir el TFM
* **bibliography.bib**: Ejemplo de fichero para bibliografía.


# Licencia
Esta plantilla LaTeX está bajo una <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Licencia Creative Commons Atribución-CompartirIgual 4.0 Internacional</a>. 

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Licencia Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />
