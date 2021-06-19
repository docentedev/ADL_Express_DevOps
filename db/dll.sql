CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE item 
(
  id UUID NOT NULL DEFAULT uuid_generate_v1() , 
  name VARCHAR (255),
  description text,
  CONSTRAINT id_item_constraint PRIMARY KEY ( id )
)

INSERT INTO public.item (id, "name", description) VALUES('1b2ba306-d142-11eb-8bfd-12bd3d256659'::uuid, 'HERVIDOR THOMAS TH-5525C TICK OFFICE', 'Características destacadas
• Potencia 1700 Watt
• Capacidad 1,0 litro
• Base interior de acero inoxidable
• Base desmontable con giro de 360º
• Cuerpo de cerámica
• Luz indicadora de funcionamiento
• Indicador de llenado interior
• Sistema de seguridad apagado en seco');

INSERT INTO public.item (id, "name", description) VALUES('43ee6c42-d142-11eb-8bfd-12bd3d256659'::uuid, 'Parlante Portátil ONYX STUDIO 4 B', 'Duración aproximada de la batería: hasta 10 Horas
Conexión Bluetooth: Sí
Profundidad: 159,5mm
Temporada: Toda temporada
Peso: 2.061 g
Potencia: 60W
Alarma: No
Conexión NFC: No
Control remoto incluido: No
Entradas para micrófono: No
Entradas RCA: Sin entradas
Incluye micrófono: Sí
Lector SD/Micro SD: No
Conexión WiFi: No
Sintonizador AM/FM: No
Incluye accesorios: No
Hecho en: China
Garantía del proveedor: 90 días
Información adicional: Harman Connect+, conecta hasta 100 parlantes en simultáneo.
WiFi direct: No
Entradas USB: 1
Entradas auxiliares de 3.5 mm: 1
Fuente de energía: Corriente/Baterías
Modelo: ONYX STUDIO 4 B
Tipo: Parlantes portátiles
Alto: 260mm
Ancho: 278mm');

INSERT INTO public.item (id, "name", description) VALUES('5ee9148e-d142-11eb-8bfd-12bd3d256659'::uuid, 'Smartwatch Impermeable Xiaomi kumi GW16T IP67 xiaomi Reloj', '6 razones para comprar
1.Fuerte duración de la batería, la batería de gran capacidad y el algoritmo inteligente de ahorro de energía brindan 7 días de duración de la batería.
2.Monitoreo de oxígeno en sangre, monitoreo cercano del nivel de oxígeno en sangre.
3.Control de música, conéctese al teléfono móvil Bluetooth, controle fácilmente su lista de canciones favoritas en su teléfono, acompañada de música
4.Monitoreo de la frecuencia cardíaca, algoritmo inteligente de frecuencia cardíaca, recordatorio de aumento y disminución de la frecuencia cardíaca, protege la salud durante todo el día.
5.7 días de espera, arquitectura de doble chip + algoritmo inteligente de ahorro de energía para lograr 7 días de duración de la batería.
6.Múltiples modos deportivos, 6 modos deportivos incorporados, carrera, ciclismo, baloncesto, etc., registra varios datos deportivos para ti');
