using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class Health : MonoBehaviour
{
    public UnityEvent<GameObject> OnHitWithReference;

    public void GetHit(int amount, GameObject sender)
    {
        if (sender.layer == gameObject.layer)
            return;
        OnHitWithReference?.Invoke(sender);
    }
}
