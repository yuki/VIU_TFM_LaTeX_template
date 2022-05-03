# Plantilla TFM para la [VIU](https://www.universidadviu.com/es/)
Plantilla LaTeX para el Trabajo Fin de Máster (TFM) de la [VIU](https://www.universidadviu.com/es/).

Puedes ver el ejemplo de cómo queda el PDF en el fichero **[viu-tfm-template.pdf](viu-tfm-template.pdf)**

# Uso
Para utilizar esta plantilla se requiere de las siguientes dependencias:
* LuaLaTeX (se puede instalar con TexLive)
* [Inkscape](https://inkscape.org/) para utilizar gráficos SVG.

Puedes utilizar el fichero **[viu-tfm-template.tex](viu-tfm-template.tex)** como guía para crear tu TFM.

## Valores de la portada
Los datos que aparecen en la portada corresponden a las variables que aparecen en el fichero **[viu-tfm-template.tex](viu-tfm-template.tex)**.

```latex
\def\nombre{Apellido1 Apellido2, Nombre}
\def\dni{12345678-A}
\def\titulo{Título del TFM}
\def\titulacion{Máster Universitario en Desarrollo de Aplicaciones y Servicios Web}
\def\curso{2022-2023}

%Los siguientes son opcionales: si no se ponen, la portada cambia un poco. Ideal para escribir artículos/trabajos cortos
\def\dirige{Nombre del director/a}
\def\convocatoria{Primera}
% No pongas nombre de la asignatura si pones algo en “\dirige”, porque no tiene sentido. Esta definición sólo si es para un artículo/trabajo/actividad.
\def\asignatura{}
```

Las definiciones "dirige" y "convocatoria" son opcionales. Si están vacías, no aparecen en la portada.

Buscando que la plantilla se pueda usar en trabajos/actividades de asignaturas, he añadido la definición "asignatura" para ello. **No uses "asignatura" con "dirige"**.


## Cómo se compila
Para utilizar la plantilla, teniendo en cuenta el fichero de ejemplo de este repositorio y el ejemplo de bibliografía:

```bash
lualatex -shell-escape viu-tfm-template.tex
biber viu-tfm-template
lualatex -shell-escape viu-tfm-template.tex
lualatex -shell-escape viu-tfm-template.tex
```

# Para qué sirve cada fichero
La plantilla y el ejemplo se compone de los siguientes ficheros:
* **viu-tfm-template.cls**: La propia plantilla donde se configuran bordes, tipo de letra, tablas, listas ...
* **coverpage.tex**: En este fichero se establece cómo es la portada.
* **viu-tfm-template.tex**: Ejemplo de fichero para escribir el TFM
* **bibliography.bib**: Ejemplo de fichero para bibliografía.

En el directorio **img** hay varias imágenes necesarias para la plantilla:
* **logoVIU.svg**: Logo de la VIU en svg obtenido de la propia web. Se usa en la portada.
* **logoVIU-letras.svg**: Usando el fichero anterior, sólo la parte de las letras. Se usa en la cabecera.
* **logoVIU-pildora.svg**: Usando el primer fichero, sólo la parte de la pildora con "VIU". Se usa en la cabecera.
* **pildora_blanca.svg**: Del primer fichero, la parte de la "pildora" sin las letras y en color blanco. Se usa en la portada.
* **pildora_footer.svg**: Como la anterior, pero con el color corporativo. Se usa en los pie de página.

# Licencia
Esta plantilla LaTeX está bajo una <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Licencia Creative Commons Atribución-CompartirIgual 4.0 Internacional</a>. 

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Licencia Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />
