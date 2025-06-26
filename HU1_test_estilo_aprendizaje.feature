Feature: Test de estilo de aprendizaje

  Scenario: Iniciar el test de estilo de aprendizaje
    Given el estudiante ha iniciado sesión correctamente
    When hace clic en la opción “Iniciar test de estilo de aprendizaje”
    Then se muestra la primera pregunta del test según el modelo seleccionado

    Ejemplo:
      | usuario       | acción                                     | resultado                                 |
      | autenticado  | clic en “Iniciar test de estilo de aprendizaje” | se muestra primera pregunta del test     |

  Scenario: Finalizar el test de estilo de aprendizaje
    Given el estudiante ha empezado el test
    When responde todas las preguntas disponibles y hace clic en “Finalizar test”
    Then se genera automáticamente un resultado con su estilo de aprendizaje predominante

    Ejemplo:
      | respuestas completadas | acción final       | resultado                     |
      | sí                     | clic en finalizar  | estilo aprendizaje generado   |

  Scenario: Salir antes de completar el test
    Given el estudiante ha iniciado el test
    When decide salir antes de completarlo
    Then el sistema guarda el progreso y permite reanudar el test posteriormente

    Ejemplo:
      | interrupción | resultado esperado                      |
      | sí           | progreso guardado y mensaje de reanudación |