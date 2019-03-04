# Notes

## Formas normales

```sql --

-- 1FN
-- Una tabla está en primera forma normal si:
-- Sus atributos contienen valores atómicos (esto quiere decir que tienen que ser indivisibles)
--

--
-- 2FN
-- Una tabla está en 2FN si:
-- Está en 1FN
-- Todos los atributos que no son clave primaria tienen dependencia funcional completa con respecto a todas las claves existentes en el esquema. Para recuperar un atributo no clave, se necesita acceder por la clave completa, no por una subclave
-- Las 2FN aplican a las relaciones con claves primarias compuestas por dos o más atributos
--

--
-- 3FN
-- Una tabla está en 3FN si:
-- Está en 2FN
-- Todos los atributos que no son clave primaria no dependen transitivamente de ésta
--


--
-- Notas:
--
-- Mas tablas, menos columnas
-- Mas registros, menos columnas
-- Siempre usar valores por defecto
-- Usar campos de estado siempre que sea necesario
-- Usar indices cada que sea posible
--
```


