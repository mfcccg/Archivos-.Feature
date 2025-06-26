Feature: Evaluación del docente

  Scenario Outline: Evaluar al docente después de clase
    Given el estudiante ha finalizado una clase
    When aparece el formulario de evaluación
    Then el estudiante puede calificar al docente y enviar su opinión

    Examples:
      | input                                 | output                                         |
      | Clase finalizada, selección de puntuación y comentario | Evaluación registrada con mensaje de confirmación |

  Scenario Outline: Intentar evaluar sin asistencia
    Given el estudiante no ha asistido a la clase
    When intenta acceder a la evaluación del docente
    Then el sistema le impide acceder al formulario de evaluación

    Examples:
      | input                         | output                                                        |
      | Usuario sin asistencia registrada | Mensaje de error: “Debes asistir a la sesión para poder evaluarla.” |

  Scenario Outline: Enviar formulario incompleto
    Given el estudiante accede al formulario de evaluación
    When intenta enviarlo sin completar todos los campos obligatorios
    Then el sistema muestra un mensaje solicitando completar todos los datos requeridos

    Examples:
      | input               | output                                                  |
      | Formulario incompleto | Mensaje: “Por favor, complete todos los campos antes de enviar.” |