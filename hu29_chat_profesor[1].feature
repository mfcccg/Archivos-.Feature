Feature: Responder dudas del estudiante por parte del profesor
  Como profesor, quiero responder las dudas de mis estudiantes a través de un chat integrado para ofrecer soporte oportuno.

  Scenario: Enviar respuesta del profesor
    Given que el profesor escribe una respuesta en el chat
    When hace clic en “Enviar”
    Then el mensaje aparece inmediatamente en el chat del estudiante
    Examples:
      | Input                               | Output                                 |
      | Claro, revisa el material de apoyo. | Visualización instantánea del mensaje  |

  Scenario: Mensaje automático por falta de respuesta
    Given que un mensaje del estudiante ha sido enviado
    When no hay respuesta del profesor en 10 minutos
    Then el sistema muestra un mensaje automático de espera
    Examples:
      | Input                      | Output                                     |
      | ¿Habrá clase el viernes?   | Mensaje: “El docente responderá en breve.” |

  Scenario: Intercambio inmediato entre usuarios conectados
    Given que ambos usuarios están conectados
    When intercambian mensajes
    Then el tiempo de entrega debe ser inferior a 1 segundo
    Examples:
      | Input Emisor | Input Mensaje                  | Output                                  |
      | estudiante   | ¿Cuál es el examen parcial?    | Mensaje entregado en menos de 1 segundo |
      | profesor     | Es el martes a las 10 a.m.     | Mensaje entregado en menos de 1 segundo |