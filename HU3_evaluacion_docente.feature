Feature: Evaluación del docente

  Scenario: Evaluar al docente después de clase
    Given el estudiante ha finalizado una clase
    When aparece el formulario de evaluación
    Then el estudiante puede calificar al docente y enviar su opinión

    Ejemplo:
      | clase finalizada | calificación y comentario enviados | resultado |
      | sí               | sí                                 | éxito     |

  Scenario: Intentar evaluar sin asistencia
    Given el estudiante no ha asistido a la clase
    When intenta acceder a la evaluación del docente
    Then el sistema le impide acceder al formulario de evaluación

    Ejemplo:
      | asistencia registrada | acceso permitido | mensaje mostrado                              |
      | no                   | no               | “Debes asistir a la sesión para poder evaluarla.” |

  Scenario: Formulario incompleto
    Given el estudiante accede al formulario de evaluación
    When intenta enviarlo sin completar todos los campos obligatorios
    Then el sistema muestra un mensaje solicitando completar todos los datos requeridos

    Ejemplo:
      | formulario completo | mensaje mostrado                              |
      | no                  | “Por favor, complete todos los campos antes de enviar.” |