Feature: Cambiar idioma de la interfaz
  Como usuario, quiero seleccionar el idioma de la interfaz para usar la plataforma con mayor comodidad.

  Scenario: Cambiar a un idioma disponible
    Given que el usuario entra a configuración de idioma
    When selecciona un idioma diferente
    Then la plataforma actualiza todos los textos al nuevo idioma
    Examples:
      | Input Idioma | Output                                   |
      | francés      | Interfaz actualizada en francés          |

  Scenario: Selección de idioma no disponible
    Given que el usuario busca un idioma no disponible
    When lo selecciona en el menú
    Then el sistema informa que no se encuentra disponible
    Examples:
      | Input Idioma | Output                                   |
      | sueco        | Mensaje: “Idioma no disponible actualmente.” |

  Scenario: Restaurar idioma por defecto
    Given que el usuario desea regresar al idioma original
    When presiona 'Restaurar idioma predeterminado'
    Then la plataforma vuelve al idioma por defecto
    Examples:
      | Input Acción | Output                                  |
      | restaurar    | Interfaz actualizada en idioma predeterminado |