using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using UnityEngine.InputSystem;

public class Player : MonoBehaviour
{
    // private PlayerAnimations playerAnimations;

    private PlayerMover playerMover;

    private Vector2 pointerInput, movementInput;

    public Vector2 PointerInput => pointerInput;

    private WeaponParent weaponParent;

    [SerializeField]
    private InputActionReference movement, fire, pointerPosition;

    private void OnEnable()
    {
        fire.action.performed += PerformFire;
    }

    private void OnDisable()
    {
        fire.action.performed -= PerformFire;
    }

    private void PerformFire(InputAction.CallbackContext obj)
    {
        weaponParent.Fire();
    }

    private void Awake()
    {
        // agentAnimations = GetComponentInChildren<AgentAnimations>();
        weaponParent = GetComponentInChildren<WeaponParent>();
        playerMover = GetComponent<PlayerMover>();
    }

    private void AnimateCharacter()
    {
        Vector2 lookDirection = pointerInput - (Vector2)transform.position;
        // agentAnimations.RotateToPointer(lookDirection);
        // agentAnimations.PlayAnimation(movementInput);
    }

    private void Update()
    {
        pointerInput = GetPointerInput();
        weaponParent.PointerPosition = pointerInput;
        movementInput = movement.action.ReadValue<Vector2>().normalized;

        playerMover.MovementInput = movementInput;

        // AnimateCharacter();
    }

    private Vector2 GetPointerInput()
    {
        Vector3 mousePos = pointerPosition.action.ReadValue<Vector2>();
        mousePos.z = Camera.main.nearClipPlane;
        return Camera.main.ScreenToWorldPoint(mousePos);
    }

}
