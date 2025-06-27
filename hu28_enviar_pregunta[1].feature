Feature: Envío de preguntas por parte del estudiante
  Como estudiante, quiero enviar preguntas a mi profesor directamente desde la plataforma para resolver mis dudas.

  Scenario: Enviar una pregunta correctamente
    Given que el estudiante ha escrito una pregunta en el campo correspondiente
    When hace clic en el botón “Enviar”
    Then el sistema confirma que el mensaje fue enviado correctamente
    Examples:
      | Input                              | Output                                  |
      | ¿Cuál es la fecha de entrega?      | Confirmación visual de envío exitoso    |

  Scenario: Enviar una pregunta sin texto
    Given que el estudiante intenta enviar una pregunta sin escribir nada
    When hace clic en el botón “Enviar”
    Then el sistema muestra un mensaje de error solicitando completar el campo
    Examples:
      | Input | Output                                           |
      |       | Mensaje: “Por favor, escribe tu pregunta antes de enviarla.” |

  Scenario: Confirmación rápida de envío
    Given que el estudiante ha enviado su pregunta
    When el sistema la procesa
    Then la confirmación de envío debe mostrarse en menos de 3 segundos
    Examples:
      | Input                         | Output                                           |
      | ¿Podría explicar el tema 3?  | Confirmación mostrada en menos de 3 segundos    |