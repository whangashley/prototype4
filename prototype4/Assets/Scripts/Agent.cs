using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using UnityEngine.InputSystem;

public class Agent : MonoBehaviour
{
    // private PlayerAnimations playerAnimations;

    private PlayerMover playerMover;

    private Vector2 pointerInput, movementInput;

    public Vector2 PointerInput { get => pointerInput; set => pointerInput = value; }
    public Vector2 MovementInput { get => movementInput; set => movementInput = value; }
    // public Vector2 PointerInput => pointerInput;

    private WeaponParent weaponParent;

    public void PerformFire()
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

    public void Update()
    {
        // pointerInput = GetPointerInput();
        // movementInput = movement.action.ReadValue<Vector2>().normalized;

        playerMover.MovementInput = movementInput;
        weaponParent.PointerPosition = pointerInput;

        // AnimateCharacter();
    }

}
