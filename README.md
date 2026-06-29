# 🛡️ app_secdata

![PowerBuilder](https://img.shields.io/badge/PowerBuilder-2025-orange?style=flat-square&logo=sap&logoColor=white)
![Seguridad](https://img.shields.io/badge/datos-seguros-2EA043?style=flat-square&logo=shieldsdotio&logoColor=white)
![Blog](https://img.shields.io/badge/blog-rsrsystem-FF5722?style=flat-square&logo=blogger&logoColor=white)

> Un paseo práctico por los **nuevos objetos de seguridad** de PowerBuilder: codificar, cifrar y hashear datos **sin salir del IDE**. 🔒

---

## 📋 ¿Qué es esto?

PowerBuilder lleva ya un tiempo trayendo herramientas de seguridad **de serie**, y muchos
no las conocen todavía. **app_secdata** es una pequeña app de demostración que pone a
trabajar los objetos **`coderobject`** y **`crypterobject`** para enseñar, con ejemplos
ejecutables, las tres grandes familias de "protección de datos":

| Demo | ¿Qué hace? |
|------|------------|
| **Encoding** | Codifica/decodifica texto y ficheros en **Base32, Base64, Base64URL y Hexadecimal**. |
| **Encrypting** | Cifra y descifra con criptografía **simétrica** (clave compartida) y **asimétrica** (clave pública/privada). |
| **Hashing** | Calcula huellas con **MD5, SHA y HMAC**, además del **checksum** de un fichero. |

La gracia es que **no necesitáis nada externo**: ni DLLs, ni componentes COM, ni APIs de
terceros. Todo lo pone PowerBuilder de forma nativa. Sin frameworks, sin npm… 😉

## ✨ Cómo funciona

El ejemplo envuelve los objetos nativos en dos subclases muy cómodas de reutilizar:

- **`nvo_coderobject`** (subclase de `coderobject`) — métodos `of_Base32/64/64Url/Hex`
  para **codificar y decodificar** tanto cadenas como ficheros (lee la imagen de ejemplo
  y la vuelca codificada, y al revés).
- **`nvo_crypterobject`** (subclase de `crypterobject`) — métodos `of_SymmetricEncrypt`,
  `of_AsymmetricEncrypt`/`of_AsymmetricDecrypt`, y para huellas `of_md5`, `of_sha`,
  `of_hmac`.

Cada demo vive en su propia ventana (`w_encoding`, `w_encrypting`, `w_hashing`), de modo
que podéis abrir el código y ver, paso a paso y sin ruido, cómo se usa cada técnica.

> 💡 **No confundamos churras con merinas:** *codificar* (Base64) no es *cifrar* (AES); y
> *hashear* (SHA) es de un solo sentido, no se "desjashea". Esta app os ayuda justo a
> tocar con las manos esas diferencias.

## 🛠️ Requisitos

- **PowerBuilder 2025** (objetos nativos `coderobject` y `crypterobject`).
- Sin dependencias externas.

## ▶️ Cómo probarlo

1. Clona el repo y abre `ws_secdata.pbsln` en el IDE (**en modo solución**: clonas y
   compila).
2. Ejecuta la aplicación y elige una de las tres demos del menú: **Encoding**,
   **Encrypting** o **Hashing**.
3. Escribe un texto (o usa la imagen de ejemplo que viene en la carpeta), pulsa los
   botones y observa el resultado. Probad a codificar y luego decodificar para ver el
   viaje de ida y vuelta.

## 🙌 Créditos

Este ejemplo está basado en el estupendo vídeo de **Dora Sistemas** en su canal de YouTube,
que explica muy bien estos objetos de PowerBuilder:
<https://youtu.be/MbuxTZYqmvM>

## 🔗 Repo PowerBuilder

Tenéis el ejemplo publicado **en modo solución** aquí:
<https://github.com/rasanfe/app_secdata>

---

> ¡Nos vemos en el próximo artículo! Y recuerda: en PowerBuilder, los límites solo están en nuestra imaginación. 🚀

📨 **Blog:** <https://rsrsystem.blogspot.com/>
