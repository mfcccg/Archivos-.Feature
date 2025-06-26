Feature: Test de estilo de aprendizaje

  Scenario Outline: Iniciar el test de estilo de aprendizaje
    Given el estudiante ha iniciado sesión correctamente
    When hace clic en la opción "<accion>"
    Then se muestra la primera pregunta del test según el modelo seleccionado

    Examples:
      | input               | accion                                | output                                      |
      | Usuario autenticado| Iniciar test de estilo de aprendizaje | Vista inicial del test con instrucciones y primera pregunta |

  Scenario Outline: Finalizar el test de estilo de aprendizaje
    Given el estudiante ha empezado el test
    When responde todas las preguntas disponibles y hace clic en "<accion>"
    Then se genera automáticamente un resultado con su estilo de aprendizaje predominante

    Examples:
      | input                        | accion        | output                                               |
      | Respuestas del usuario al test | Finalizar test | Reporte personalizado con estilo de aprendizaje detectado |

  Scenario Outline: Salir antes de completar el test
    Given el estudiante ha iniciado el test
    When decide salir antes de completarlo
    Then el sistema guarda el progreso y permite reanudar el test posteriormente

    Examples:
      | input                               | output                                                         |
      | Interrupción del test antes del final | Mensaje de reanudación disponible y almacenamiento temporal de progreso |