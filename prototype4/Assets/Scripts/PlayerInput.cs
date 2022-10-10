using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.InputSystem;

public class PlayerInput : MonoBehaviour
{
    public UnityEvent<Vector2> OnMovementInput, OnPointerInput;
    public UnityEvent OnFire;

    [SerializeField]
    private InputActionReference movement, fire, pointerPosition;

    private void Update() 
    {
        OnMovementInput?.Invoke(movement.action.ReadValue<Vector2>().normalized);
        OnPointerInput?.Invoke(GetPointerInput());
    }

    private Vector2 GetPointerInput()
    {
        Vector3 mousePos = pointerPosition.action.ReadValue<Vector2>();
        mousePos.z = Camera.main.nearClipPlane;
        return Camera.main.ScreenToWorldPoint(mousePos);
    }

    private void OnEnable()
    {
        fire.action.performed += PerformFire;
    }

    private void PerformFire(InputAction.CallbackContext obj)
    {
        OnFire?.Invoke();
    }

    private void OnDisable()
    {
        fire.action.performed -= PerformFire;
    }
}
