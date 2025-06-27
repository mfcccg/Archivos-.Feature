Feature: Ajustes de fuente y contraste por el estudiante
  Como estudiante, quiero ajustar el tamaño de la fuente y el contraste de colores para mejorar la legibilidad de la plataforma.

  Scenario: Aplicar configuración de accesibilidad
    Given que el estudiante accede a la configuración de accesibilidad
    When modifica el tamaño de la fuente y el contraste
    Then el sistema aplica los cambios en toda la interfaz
    Examples:
      | Input Tamaño Fuente | Input Contraste | Output                            |
      | grande              | alto            | Interfaz actualizada con ajustes  |

  Scenario: Restaurar configuración por defecto
    Given que el estudiante no está conforme con los cambios
    When selecciona la opción de restaurar valores por defecto
    Then la interfaz regresa al diseño original
    Examples:
      | Input Acción | Output                                    |
      | restaurar    | Interfaz con configuración predeterminada |

  Scenario: Error por fuente incompatible
    Given que el estudiante selecciona un tamaño de fuente incompatible
    When intenta aplicarlo
    Then el sistema muestra un mensaje de error
    Examples:
      | Input Tamaño Fuente | Output                                               |
      | extra-huge          | Mensaje: “El tamaño seleccionado no es compatible con la vista actual.” |