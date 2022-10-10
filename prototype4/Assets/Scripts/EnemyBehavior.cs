using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class EnemyBehavior : MonoBehaviour
{
    public UnityEvent<Vector2> OnMovementInput, OnPointerInput;
    public UnityEvent OnFire;

    [SerializeField]
    private Transform player;

    [SerializeField]
    private float chaseDistanceThreshold = 3;

    private void Update()
    {
        if(player == null)
            return;

        //distance between player pos and enemy pos
        float distance = Vector2.Distance(player.position, transform.position);
        //if that distance is smaller than 3, the detection area/radius
        if(distance < chaseDistanceThreshold) {
            //face the player
            OnPointerInput?.Invoke(player.position);
            //chase the player
            Vector2 direction = player.position - transform.position;
            OnMovementInput?.Invoke(direction.normalized);
        }
        //if the distance is greater than detection area/radius
        if(distance > chaseDistanceThreshold) {
            //don't chase the player...stay where you are
            OnMovementInput?.Invoke(Vector2.zero);
        }
    }
}
